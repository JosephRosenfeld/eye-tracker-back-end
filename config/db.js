import pg from "pg";
import dotenv from "dotenv";

dotenv.config();

const pool = new pg.Pool({
  user: "postgres",
  password: process.env.PG_PWD,
  database: "eye_tracker_db",
  host: "mydatabase-instance.c3w4ub6w5czt.us-east-1.rds.amazonaws.com",
  port: 5432,
});

export default pool;
