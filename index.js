import dotenv from "dotenv";
import express from "express";
import cors from "cors";
import compression from "compression";
import session from "express-session";
import pool from "./config/db.js";
import connectPgSimple from "connect-pg-simple";
import bcrypt from "bcrypt";

//import logRoutes from "./routes/logRoutes";
//import settingsRoutes from "./routes/settingsRoutes";

//initialization and initial configs
const pgSession = connectPgSimple(session);
dotenv.config();
const app = express();
app.set("trust proxy", 1); // trust first proxy

/*--- Middlewares ---*/
//Need cors options since we're dealing with cookies
//Need to add process.env
var whitelist = [process.env.API_URI];
var corsOptions = {
  credentials: true,
  origin: function (origin, callback) {
    var originIsWhitelisted = whitelist.indexOf(origin) !== -1;
    callback(null, originIsWhitelisted);
  },
};
app.use(cors(corsOptions));
app.use(express.json());
app.use(compression());
app.use((req, res, next) => {
  res.set("Cache-Control", "no-store");
  next();
});
app.use(
  session({
    store: new pgSession({
      pool: pool,
      createTableIfMissing: true,
    }),
    secret: "key that will sign the cookie, could be any random  string",
    resave: false /*stops the session from being saved back to the store when no changes were made during the request*/,
    saveUninitialized: false /*doesn't save a cookie if we don't set anything on session*/,
    cookie: {
      maxAge: 1000 * 60 * 60 * 24,
      httpOnly: false /*allows js to access cookie*/,
      /*sameSite and secure need to be enabled for production since the cookie and the 
      client are different sites*/
      sameSite: process.env.NODE_ENV == "production" ? "none" : "lax",
      secure: process.env.NODE_ENV == "production" ? true : false,
    } /*1000 miliseconds = second; 60 secs = 1min; 60 mins = 1hr; 24 hrs = 1d;*/,
  })
);

app.get("/", (req, res) => {
  console.log("we got hit at root");
  req.session.storage = {
    test: "test",
  };
  res.status(200).json({ message: "at root" });
  console.log(req.session);
});

/*--- API Auth Section ---*/
app.post("/api/auth/loginadmin", async (req, res) => {
  try {
    //get admin pwd from db
    const pwdQueryRes = await pool.query(
      `SELECT pwd_encrypted FROM person WHERE email=$1`,
      [process.env.ADMIN_EMAIL || "josephgrosenfeld@gmail.com"]
    );
    const adminPwdHash = pwdQueryRes.rows[0].pwd_encrypted;
    //check hashed pwd for admin against sent pwd
    const match = await bcrypt.compare(req.body.pwd, adminPwdHash);
    if (match) {
      /*We write to the session because this is what triggers the express-session
      lib to store a cookie on the user. If the user already had a cookie from being
      logged in as a guest, then no worries and it should just overwrite the server 
      side specific session variable we're setting (in this case 'isAdmin and isGuest') 
      and not change the actual client side cookie*/
      req.session.role = {
        isAdmin: true,
        isGuest: false,
      };
      res.status(200).json({ expires: req.session.cookie.expires });
    } else {
      //If pwd is invalid
      res.status(401).json({ errorTxt: "Password is invalid" });
    }
  } catch (err) {
    console.log(err);
    res.status(503).json({ errorTxt: "Error accessing database" });
  }
});

app.get("/api/auth/loginguest", (req, res) => {
  req.session.role = {
    isAdmin: false,
    isGuest: true,
  };
  res.status(200).json({ expires: req.session.cookie.expires });

  /*Some logic to copy all data from db on the only row item and then put it all
  in the session storage*/
});

app.get("/api/auth/logincheck", (req, res) => {
  if (req.session.role) {
    res.status(200).json({ isAdmin: req.session.role.isAdmin });
  } else {
    res.status(401).json({ errorTxt: "Unauthorized" });
  }
});

/*--- Log Routes ---*/
//Get all logs
app.get("/api/data/logs", async (req, res) => {
  if (req.session.role) {
    console.log("in api/data/logs get (with session)");
    try {
      if (req.session.role.isGuest) {
        if (req.session.storage && req.session.storage.logs) {
          res.status(200).json(req.session.storage.logs);
        } else {
          //No log stored in session so we return db settings
          const logsQueryRes = await pool.query(
            `SELECT log.log_id, log_type.log_type_name, log.log_datetime, log.rating, log.log_description
              FROM log 
              JOIN log_type 
                ON log_type.log_type_id = log.log_type_id;`
          );
          res.status(200).json(logsQueryRes.rows);
          //And then set settings on storage
          req.session.storage = {
            ...req.session.storage,
            logs: logsQueryRes.rows,
          };
          req.session.save();
        }
      } else if (req.session.role.isAdmin) {
        //Admin send settings in the db
        const logsQueryRes = await pool.query(
          `SELECT log.log_id, log_type.log_type_name, log.log_datetime, log.rating, log.log_description
            FROM log 
            JOIN log_type 
              ON log_type.log_type_id = log.log_type_id;`
        );
        res.status(200).json(logsQueryRes.rows);
      }
    } catch (err) {
      console.log(err);
      res.status(503).json({ errorTxt: "Error accessing database" });
    }
  } else {
    res.status(401).json({ errorTxt: "Unauthorized" });
  }
});

//Create a log
app.post("/api/data/logs", async (req, res) => {
  if (req.session.role) {
    console.log("in api/data/logs post (with session)");
    try {
      /*Create correctly formatted 'db' log object for both admin and guest routes
      based on the request log which is formatted differently*/
      const requestLog = req.body;
      let dt = requestLog.dt.substring(0, requestLog.dt.indexOf("T"));
      let time = requestLog.time.substring(requestLog.time.indexOf("T"));
      const log = {
        log_id: null,
        log_type_name: requestLog.type,
        log_datetime: new Date(`${dt}${time}`).toISOString(),
        rating: requestLog.rating,
        log_description: requestLog.desc,
      };
      if (req.session.role.isGuest) {
        //Create log Id because no db to automatically do it
        log.log_id =
          Math.max(...req.session.storage.logs.map((log) => log.log_id)) + 1;
        //Store to session
        req.session.storage = {
          ...req.session.storage,
          logs: [...req.session.storage.logs, log],
        };
        res.status(201).json(log);
      } else if (req.session.role.isAdmin) {
        const logIdQueryRes = await pool.query(
          `INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
            VALUES (
              (SELECT log_type_id FROM log_type WHERE log_type_name=$1),
              $2, $3, $4,
              (SELECT person_id FROM person))
            RETURNING log_id;`,
          [log.log_type_name, log.log_datetime, log.rating, log.log_description]
        );
        log.log_id = logIdQueryRes.rows[0].log_id;
        res.status(201).json(log);
      }
    } catch (err) {
      console.log(err);
      res.status(503).json({ errorTxt: "Error accessing database" });
    }
  } else {
    res.status(401).json({ errorTxt: "Unauthorized" });
  }
});

//Update a log
app.patch("/api/data/logs/:id", async (req, res) => {
  if (req.session.role) {
    console.log("in api/data/logs/:id patch (with session)");
    try {
      /*Create correctly formatted 'db' log object for both admin and guest routes
      based on the request log*/
      const requestLog = req.body;
      let dt = requestLog.dt.substring(0, requestLog.dt.indexOf("T"));
      let time = requestLog.time.substring(requestLog.time.indexOf("T"));
      const log = {
        log_id: req.params.id,
        log_type_name: requestLog.type,
        log_datetime: new Date(`${dt}${time}`).toISOString(),
        rating: requestLog.rating,
        log_description: requestLog.desc,
      };
      if (req.session.role.isGuest) {
        //Check if Id is valid
        if (
          !req.session.storage.logs.find(
            (oldLog) => oldLog.log_id == log.log_id
          )
        ) {
          throw new Error("Invalid Id");
        }

        //Store to session
        req.session.storage = {
          ...req.session.storage,
          logs: req.session.storage.logs.map((oldLog) =>
            oldLog.log_id == log.log_id ? log : oldLog
          ),
        };
        res.status(200).json(log);
      } else if (req.session.role.isAdmin) {
        const updateLogQueryRes = await pool.query(
          `UPDATE log 
            SET
              log_type_id = (SELECT log_type_id FROM log_type WHERE log_type_name=$2),
              log_datetime = $3,
              rating = $4,
              log_description = $5
            WHERE log_id = $1
            RETURNING log_id;`,
          [
            log.log_id,
            log.log_type_name,
            log.log_datetime,
            log.rating,
            log.log_description,
          ]
        );

        console.log(updateLogQueryRes);
        //Check if valid Id
        if (updateLogQueryRes.rowCount == 0) {
          throw new Error("Invalid Id");
        }

        res.status(200).json(log);
      }
    } catch (err) {
      console.log(err);
      res.status(503).json({
        errorTxt:
          err.message == "Invalid Id"
            ? err.message
            : "Error accessing database",
      });
    }
  } else {
    res.status(401).json({ errorTxt: "Unauthorized" });
  }
});

//Delete a log
app.delete("/api/data/logs/:id", async (req, res) => {
  if (req.session.role) {
    console.log("in api/data/logs/:id delete (with session)");
    try {
      const { id } = req.params;
      if (req.session.role.isGuest) {
        //Check if id is valid
        if (!req.session.storage.logs.find((oldLog) => oldLog.log_id == id)) {
          throw new Error("Invalid Id");
        }

        //Delete from session
        req.session.storage = {
          ...req.session.storage,
          logs: req.session.storage.logs.filter(
            (oldLog) => oldLog.log_id != id
          ),
        };
        res.status(200).json({ message: "deleted successfully" });
      } else if (req.session.role.isAdmin) {
        const deleteLogQueryRes = await pool.query(
          `DELETE FROM log 
            WHERE log_id = $1;`,
          [id]
        );

        //Check if valid Id
        if (deleteLogQueryRes.rowCount == 0) {
          throw new Error("Invalid Id");
        }
        res.status(200).json({ message: "deleted successfully" });
      }
    } catch (err) {
      console.log(err);
      res.status(503).json({
        errorTxt:
          err.message == "Invalid Id"
            ? err.message
            : "Error accessing database",
      });
    }
  } else {
    res.status(401).json({ errorTxt: "Unauthorized" });
  }
});

/*--- Settings Routes ---*/
//Get settings
app.get("/api/data/settings", async (req, res) => {
  if (req.session.role) {
    console.log("in api/data/settings get (with session)");
    try {
      if (req.session.role.isGuest) {
        if (req.session.storage && req.session.storage.settings) {
          res.status(200).json(req.session.storage.settings);
        } else {
          //No settings obj stored in session so we return db settings
          const settingsQueryRes = await pool.query(
            "SELECT * FROM settings_obj"
          );
          //remove the settings_obj_i
          delete settingsQueryRes.rows[0].settings_obj_id;

          res.status(200).json(settingsQueryRes.rows[0]);
          //And then set settings on storage
          req.session.storage = {
            ...req.session.storage,
            settings: settingsQueryRes.rows[0],
          };
          //Have to save to storage manually because logic takes place after res is sent
          req.session.save();
        }
      } else if (req.session.role.isAdmin) {
        //Admin send settings in the db
        const settingsQueryRes = await pool.query("SELECT * FROM settings_obj");
        res.status(200).json(settingsQueryRes.rows[0]);
      }
    } catch (err) {
      console.log(err);
      res.status(503).json({ errorTxt: "Error accessing database" });
    }
  } else {
    res.status(401).json({ errorTxt: "Unauthorized" });
  }
});

//Update settings
app.patch("/api/data/settings", async (req, res) => {
  if (req.session.role) {
    console.log("in api/data/settings patch (with session)");
    try {
      //Logic applicable to both guest and admin route
      const settingsObj = req.body;
      if (req.session.role.isGuest) {
        /*We don't perform any validation on if settings even exists on the session or if
        the updated session storage is valid*/

        //Set new settings on storage
        req.session.storage = {
          ...req.session.storage,
          settings: settingsObj,
        };

        /*We still send back recieved settings obj just to make it standardized. 
        Whatever the server responds with is what our action will send to the reducer*/
        res.status(200).json(settingsObj);
      } else if (req.session.role.isAdmin) {
        //Admin send settings in the db
        const settingsQueryRes = await pool.query(
          `UPDATE settings_obj 
            SET
              systane_abbreviation = $1,
              muro_abbreviation = $2,
              muro_ointment_abbreviation = $3,
              erosion_abbreviation = $4,
              note_abbreviation = $5,
              daily_review_abbreviation = $6,
              systane_color = $7,
              muro_color = $8,
              muro_ointment_color = $9,
              erosion_color = $10,
              note_color = $11,
              daily_review1_color = $12,
              daily_review2_color = $13,
              daily_review3_color = $14,
              daily_review4_color = $15,
              daily_review5_color = $16
            WHERE
              settings_obj_id = (SELECT settings_obj_id FROM settings_obj);`,
          [
            settingsObj.systane_abbreviation,
            settingsObj.muro_abbreviation,
            settingsObj.muro_ointment_abbreviation,
            settingsObj.erosion_abbreviation,
            settingsObj.note_abbreviation,
            settingsObj.daily_review_abbreviation,
            settingsObj.systane_color,
            settingsObj.muro_color,
            settingsObj.muro_ointment_color,
            settingsObj.erosion_color,
            settingsObj.note_color,
            settingsObj.daily_review1_color,
            settingsObj.daily_review2_color,
            settingsObj.daily_review3_color,
            settingsObj.daily_review4_color,
            settingsObj.daily_review5_color,
          ]
        );
        console.log(settingsQueryRes);
        res.status(200).json(settingsObj);
      }
    } catch (err) {
      console.log(err);
      res.status(503).json({ errorTxt: "Error accessing database" });
    }
  } else {
    res.status(401).json({ errorTxt: "Unauthorized" });
  }
});

/*--- Testing ---*/
//View session
app.get("/api/data/session", async (req, res) => {
  res.status(200).json(req.session);
});

/*--- Routes ---*/
/*
app.use("/api/logs", logRoutes);
app.use("/api/settings", settingsRoutes);
*/

const PORT = process.env.PORT || 5000;
app.listen(PORT, () =>
  console.log(`Server running on port ${PORT} at time ${new Date()}`)
);
