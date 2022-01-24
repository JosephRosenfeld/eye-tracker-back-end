CREATE DATABASE eye_tracker_db;

--\c into todo_database

CREATE TABLE log(
  log_id SERIAL PRIMARY KEY,
  description VARCHAR(255)
);

--Create the admin item with an encrypted PIN