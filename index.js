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
    const data = await pool.query(
      `SELECT pwd_encrypted FROM person WHERE email=$1`,
      [process.env.ADMIN_EMAIL || "josephgrosenfeld@gmail.com"]
    );
    console.log(data);
    const adminPwdHash = data.rows[0].pwd_encrypted;
    console.log(adminPwdHash);
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
      console.log(req.sessionID);
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
  console.log(req.sessionID);
  res.status(200).json({ expires: req.session.cookie.expires });

  /*Some logic to copy all data from db on the only row item and then put it all
  in the session storage*/
});

app.get("/api/auth/logincheck", (req, res) => {
  if (req.session.role) {
    console.log("in req");
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
          console.log("existing session logs");
          res.status(200).json(req.session.storage.logs);
        } else {
          console.log("creating new session logs");
          //No log stored in session so we return db settings
          const logs = await pool.query(
            "SELECT log.log_id, log_type.log_type_name, log.log_datetime, log.rating, log.log_description FROM log JOIN log_type ON log_type.log_type_id = log.log_type_id;"
          );
          res.status(200).json(logs.rows);
          //And then set settings on storage
          req.session.storage = {
            ...req.session.storage,
            logs: logs.rows,
          };
          req.session.save();
        }
      } else if (req.session.role.isAdmin) {
        //Admin send settings in the db
        console.log("admin logs");
        const logs = await pool.query(
          `SELECT log.log_id, log_type.log_type_name, log.log_datetime, log.rating, log.log_description
            FROM log 
            JOIN log_type 
              ON log_type.log_type_id = log.log_type_id;`
        );
        res.status(200).json(logs.rows);
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
      //extract vars and format datetime
      let { type, dt, time, rating = null, desc = null } = req.body;
      dt = dt.substring(0, dt.indexOf("T"));
      time = time.substring(time.indexOf("T"));

      console.log(type, time, dt, rating, desc);
      const dateTime = new Date(`${dt}${time}`).toISOString();
      console.log(dateTime);
      if (req.session.role.isGuest) {
        console.log("guest");

        //create log Id because no db to automatically do it
        const logId =
          1 + Math.max(...req.session.storage.logs.map((log) => log.log_id));
        console.log(logId);

        const log = {
          log_id: logId,
          log_type_name: type,
          log_datetime: dateTime,
          rating: rating,
          log_description: desc,
        };
        req.session.storage = {
          ...req.session.storage,
          logs: [...req.session.storage.logs, log],
        };
        res.status(201).json(log);
      } else if (req.session.role.isAdmin) {
        console.log("admin logs");
        console.log(type);
        const log_id = await pool.query(
          `INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
            VALUES (
              (SELECT log_type_id FROM log_type WHERE log_type_name=$1),
              $2, $3, $4,
              (SELECT person_id FROM person))
            RETURNING log_id;`,
          [type, dateTime, rating, desc]
        );
        res.status(201).json({
          log_id: log_id.rows[0].log_id,
          log_type_name: type,
          log_datetime: dateTime,
          rating: rating,
          log_description: desc,
        });
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
app.patch("/api/data/logs", async (req, res) => {
  if (req.session.role) {
    console.log("in api/data/logs patch (with session)");
    try {
      //extract vars and format datetime
      let { logId, type, dt, time, rating = null, desc = null } = req.body;
      dt = dt.substring(0, dt.indexOf("T"));
      time = time.substring(time.indexOf("T"));
      const dateTime = new Date(`${dt}${time}`).toISOString();
      console.log(logId, type, dateTime, rating, desc);
      if (req.session.role.isGuest) {
        console.log("guest");
        const updatedLog = {
          log_id: logId,
          log_type_name: type,
          log_datetime: dateTime,
          rating: rating,
          log_description: desc,
        };
        req.session.storage = {
          ...req.session.storage,
          logs: req.session.storage.logs.map((log) =>
            log.log_id == logId ? updatedLog : log
          ),
        };
        res.status(201).json(updatedLog);
      } else if (req.session.role.isAdmin) {
        console.log("admin logs");
        console.log(type);
        const log_id = await pool.query(
          `INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
            VALUES (
              (SELECT log_type_id FROM log_type WHERE log_type_name=$1),
              $2, $3, $4,
              (SELECT person_id FROM person))
            RETURNING log_id;`,
          [type, dateTime, rating, desc]
        );
        res.status(201).json({
          log_id: log_id.rows[0].log_id,
          log_type_name: type,
          log_datetime: dateTime,
          rating: rating,
          log_description: desc,
        });
      }
    } catch (err) {
      console.log(err);
      res.status(503).json({ errorTxt: "Error accessing database" });
    }
  } else {
    res.status(401).json({ errorTxt: "Unauthorized" });
  }
});

/*--- Settings Routes ---*/
app.get("/api/data/settings", async (req, res) => {
  if (req.session.role) {
    console.log("in api/data/settings get (with session)");
    try {
      if (req.session.role.isGuest) {
        if (req.session.storage && req.session.storage.settings) {
          console.log("existing session settings");
          res.status(200).json(req.session.storage.settings);
        } else {
          console.log("creating new session settings");
          //No settings obj stored in session so we return db settings
          const settings_obj = await pool.query("SELECT * FROM settings_obj");
          res.status(200).json(settings_obj.rows[0]);
          //And then set settings on storage
          req.session.storage = {
            ...req.session.storage,
            settings: settings_obj.rows[0],
          };
          req.session.save();
        }
      } else if (req.session.role.isAdmin) {
        //Admin send settings in the db
        console.log("admin settings");
        const settings_obj = await pool.query("SELECT * FROM settings_obj");
        res.status(200).json(settings_obj.rows[0]);
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
