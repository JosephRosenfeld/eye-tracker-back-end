import pg from "pg";
import dotenv from "dotenv";

dotenv.config();

const pool = new pg.Pool({
  user: "postgres",
  password: process.env.PG_PWD,
  database: "eye_tracker_db",
  host: process.env.DB_HOST,
  port: 5432,
});

export default pool;
