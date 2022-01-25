import express from "express";
import dotenv from "dotenv";
import session from "express-session";
import connectPgSimple from "connect-pg-simple";
import cors from "cors";
import bcrypt from "bcrypt";
import pool from "./config/db.js";
//import logRoutes from "./routes/logRoutes";
//import settingsRoutes from "./routes/settingsRoutes";

//initialization and initial configs
const pgSession = connectPgSimple(session);
dotenv.config();
const app = express();

/*--- Middlewares ---*/
//Need cors options since we're dealing with cookies
app.use(cors({ credentials: true, origin: "http://localhost:3000" }));
app.use(express.json());
app.use(
  session({
    store: new pgSession({
      pool: pool,
      createTableIfMissing: true,
    }),
    secret: "key that will sign the cookie, could be any random string",
    resave: false /*stops the session from being saved back to the store when no changes were made during the request*/,
    saveUninitialized: false /*doesn't save a cookie if we don't set anything on session*/,
    cookie: {
      maxAge: 1000 * 60 * 60 * 24,
      httpOnly: false,
    } /*1000 miliseconds = second; 60 secs = 1min; 60 mins = 1hr; 24 hrs = 1d;*/,
  })
);

/*--- API Auth Section ---*/
app.post("/api/auth/loginadmin", async (req, res) => {
  try {
    //get admin pwd from db
    const data = await pool.query(
      `SELECT pwd_encrypted FROM person WHERE email=$1`,
      [process.env.ADMIN_EMAIL]
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
      req.session.user = {
        isAdmin: true,
        isGuest: false,
      };
      console.log(req.session);
      res.sendStatus(200);
    } else {
      //If pwd is invalid
      res
        .status(401)
        .send(JSON.stringify({ errorTxt: "This password is invalid" }));
    }
  } catch (err) {
    console.log(err);
    res
      .status(500)
      .send(JSON.stringify({ errorTxt: "Error accessing database" }));
  }
});

app.get("/api/auth/loginguest", (req, res) => {
  req.session.user = {
    isAdmin: false,
    isGuest: true,
  };
  res.sendStatus(200);

  /*Some logic to copy all data from db on the only row item and then put it all
  in the session storage*/
});

app.get("/api/auth/logincheck", (req, res) => {
  if (req.session.user) {
    console.log("in req");
    console.log(req.session.user);
    res.send(JSON.stringify({ isAdmin: req.session.user.isAdmin }));
  } else {
    res.status(401).send(JSON.stringify({ errorTxt: "Unauthorized" }));
  }
});

app.get("/protected", (req, res) => {
  if (req.session.user) {
    res.send("you're good");
  } else {
    res.send("I'd redirect you");
  }
});

/*--- Routes ---*/
/*
app.use("/api/logs", logRoutes);
app.use("/api/settings", settingsRoutes);
*/

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
