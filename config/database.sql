CREATE DATABASE eye_tracker_db;


/*--- Points to Remember ---*/
--\l show all databases
--\c into todo_database
--\dt show all tables
--All quotes should be single quotes for actual values


/*Tables are listed in the order in which they should be created to avoid
referencing yet to be created tables*/

-- Create settings_obj table
CREATE TABLE settings_obj
(
    settings_obj_id BIGSERIAL NOT NULL PRIMARY KEY,
    systane_color VARCHAR(7) NOT NULL,
    muro_color VARCHAR(7) NOT NULL,
    muro_ointment_color VARCHAR(7) NOT NULL,
    erosion_color VARCHAR(7) NOT NULL,
    note_color VARCHAR(7) NOT NULL,
    daily_review1_color VARCHAR(7) NOT NULL,
    daily_review2_color VARCHAR(7) NOT NULL,
    daily_review3_color VARCHAR(7) NOT NULL,
    daily_review4_color VARCHAR(7) NOT NULL,
    daily_review5_color VARCHAR(7) NOT NULL,
    systane_abbreviation CHAR(1) NOT NULL,
    muro_abbreviation CHAR(1) NOT NULL,
    muro_ointment_abbreviation CHAR(1) NOT NULL,
    erosion_abbreviation CHAR(1) NOT NULL,
    note_abbreviation CHAR(1) NOT NULL,
    daily_review_abbreviation CHAR(1) NOT NULL
);

/*Table is named 'person' because its bad practice to use sql keywords like 'user'*/
-- Create person table
CREATE TABLE person
(
    person_id BIGSERIAL NOT NULL PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(320) NOT NULL,
    pwd_encrypted VARCHAR(255) NOT NULL,
    phone VARCHAR(10),
    settings_obj_id BIGINT NOT NULL REFERENCES settings_obj (settings_obj_id),
    UNIQUE(settings_obj_id)
);

-- Create log_type table
CREATE TABLE log_type
(
    log_type_id BIGSERIAL NOT NULL PRIMARY KEY,
    log_type_name VARCHAR(20) NOT NULL,
    UNIQUE(log_type_name)
);

/*Rating may change in the future, so for now we leave it as a CHAR(1) even though
on the front end its a drop down of select options, so technically back end could
have a seperate table for those*/ 
-- Create log table
CREATE TABLE log
(
    log_id BIGSERIAL NOT NULL PRIMARY KEY,
    log_type_id BIGINT REFERENCES log_type (log_type_id) NOT NULL,
    log_datetime TIMESTAMPTZ NOT NULL,
    rating CHAR(1),
    log_description VARCHAR(1000),
    person_id BIGINT NOT NULL REFERENCES person (person_id)
);

-- Insert log types into log_type table
INSERT INTO log_type (log_type_name) VALUES ('systane');
INSERT INTO log_type (log_type_name) VALUES ('muro');
INSERT INTO log_type (log_type_name) VALUES ('muro ointment');
INSERT INTO log_type (log_type_name) VALUES ('erosion');
INSERT INTO log_type (log_type_name) VALUES ('note');
INSERT INTO log_type (log_type_name) VALUES ('daily review');

-- Create the settings_obj for the admin person
INSERT INTO settings_obj ( 
    systane_color, 
    muro_color, 
    muro_ointment_color,
    erosion_color, 
    note_color, 
    daily_review1_color,
    daily_review2_color,
    daily_review3_color,
    daily_review4_color,
    daily_review5_color,
    systane_abbreviation,
    muro_abbreviation,
    muro_ointment_abbreviation,
    erosion_abbreviation, 
    note_abbreviation, 
    daily_review_abbreviation) VALUES (
    '#48ea69', '#fda744', '#6991ec', '#ffec1f', '#a14545',
    '#ff0f0f', '#ea6cdf', '#9146dd', '#5045e8', '#42b7ff',
    'S','M','O','E','N','D'
    );

--Create the admin item with an encrypted password
--Assumes a single settings obj item
INSERT INTO person (full_name, email, pwd_encrypted, phone, settings_obj_id ) VALUES (
  'Joseph Rosenfeld', 'josephgrosenfeld@gmail.com', 
  'some encrypted pwd (wont be showing this in the source code)', '5406865236',
  (SELECT settings_obj_id FROM settings_obj ));


/*Testing Commands*/

--Create a dummy log
INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
  VALUES (
    (SELECT log_type_id FROM log_type WHERE log_type_name='muro'),
    '2016-06-22 19:10:25-07', NULL, NULL,
    (SELECT person_id FROM person));

--Create a years worth of dummy log data
DO $$
BEGIN
FOR j IN 1..365 LOOP
  FOR i IN 1..30 LOOP
    INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
    VALUES (
      (SELECT log_type_id FROM log_type WHERE log_type_name='muro'),
      '2016-06-22 19:10:25-07', NULL, NULL,
      (SELECT person_id FROM person));
    END LOOP;
  INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
    VALUES (
      (SELECT log_type_id FROM log_type WHERE log_type_name='daily review'),
      '2016-06-22 19:10:25-07',
      '5',
      'Was super windy but thats about it. This morning my eyes did feel kinda funky though, and its like both eyes too, even though the erosion only occurs in my left eye, my right eye still gets super dry. Besides that I took the omega 3s and that was good. Ummm cant think of much anything else',
      (SELECT person_id FROM person));
  END LOOP;
END; $$; 

--Delete all logs from log table (for deleting the dummy data)
DELETE FROM log;