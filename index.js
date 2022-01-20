import express from "express";
import dotenv from "dotenv";
import session from "express-session";
import connectPgSimple from "connect-pg-simple";
import cors from "cors";
import pool from "./config/db.js";
//import logRoutes from "./routes/logRoutes";
//import settingsRoutes from "./routes/settingsRoutes";

//initialization and initial configs
const pgSession = connectPgSimple(session);
dotenv.config();
const app = express();

//middlewares
app.use(cors());
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
    } /*1000 miliseconds = second; 60 secs = 1min; 60 mins = 1hr; 24 hrs = 1d;*/,
  })
);

//default get on api root
app.get("/", (req, res) => {
  console.log(req.session);
  req.session.user = "test";
  res.json({ message: "api is working" });
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
