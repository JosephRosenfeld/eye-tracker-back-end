CREATE DATABASE eye_tracker_db;


/*--- Points to Remember ---*/
  --\l show all databases
  --\c into todo_database
  --\dt show all tables
  --All quotes should be single quotes for actual values
  /*By using the full Olsen style time-zone name 'America/New_York' you not only specify
  the time zone, but also that it should adhere to daylight savings time*/
    --Ex:
    --varDtTime TIMESTAMPTZ := '2020-10-23 07:30 America/New_York';
  --Source: https://stackoverflow.com/questions/10383108/time-zone-with-daylight-savings-times-in-postgresql



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
INSERT INTO log_type (log_type_name) VALUES ('Systane Eye Drop');
INSERT INTO log_type (log_type_name) VALUES ('Muro Eye Drop');
INSERT INTO log_type (log_type_name) VALUES ('Muro Ointment');
INSERT INTO log_type (log_type_name) VALUES ('Erosion');
INSERT INTO log_type (log_type_name) VALUES ('Note');
INSERT INTO log_type (log_type_name) VALUES ('Daily Review');

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
    (SELECT log_type_id FROM log_type WHERE log_type_name='Muro Eye Drop'),
    '2016-06-22 19:10:25-07', NULL, NULL,
    (SELECT person_id FROM person));

--Create a years worth of dummy log data
  /*Data has 30 muro drops and 1 daily review always at the same time, 
  repeated 365 times*/
DO $$
BEGIN
FOR j IN 1..365 LOOP
  FOR i IN 1..30 LOOP
    INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
    VALUES (
      (SELECT log_type_id FROM log_type WHERE log_type_name='Muro Eye Drop'),
      '2016-06-22 19:10:25-07', NULL, NULL,
      (SELECT person_id FROM person));
    END LOOP;
  INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
    VALUES (
      (SELECT log_type_id FROM log_type WHERE log_type_name='Daily Review'),
      '2016-06-22 19:10:25-07',
      '5',
      'Was super windy but thats about it. This morning my eyes did feel kinda funky though, and its like both eyes too, even though the erosion only occurs in my left eye, my right eye still gets super dry. Besides that I took the omega 3s and that was good. Ummm cant think of much anything else',
      (SELECT person_id FROM person));
  END LOOP;
END; 
$$; 

--Create all dummy log data
  /*Data has:
  - 1 am note
  - 16 systane eye drops each hour
  - 3 muro eye drops every four hours
  - 1 muro ointement at 10:30pm
  - 1 daily review at 10:30pm
  Additionally, all logs are inserted in a window format with the actual time being
  a random selection within this 'window'*/

DO $$
DECLARE 
  varDtTime TIMESTAMPTZ := '2020-10-23 07:30 America/New_York';
  seconds_variance INT := 3600;

BEGIN
FOR i IN 1..474 LOOP

  /*raise notice 'dtTime: %', varDtTime;*/

  --1 Note
  varDtTime = varDtTime - (1 || ' hour')::INTERVAL; --offset half of variance
  INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
    VALUES (
      (SELECT log_type_id FROM log_type WHERE log_type_name='Note'),
      varDtTime + ((SELECT floor(random()*(seconds_variance * 2))) || ' second')::INTERVAL,
      null,
      'Eye''s feel a little dry but nothing too bad. Slept with the humidifier on all night so that helped.',
      (SELECT person_id FROM person));
  varDtTime = varDtTime + (1 || ' hour')::INTERVAL; --remove variance offset

  --16 Systane Drops (1 per hour of 7:30am-10:30pm day (plus .75 hr variance))
  varDtTime = varDtTime - (.375 || ' hour')::INTERVAL; --offset half of variance
  FOR j IN 1..16 LOOP
    INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id)   
      VALUES (
        (SELECT log_type_id FROM log_type WHERE log_type_name='Systane Eye Drop'),
        varDtTime + ((SELECT floor(random()*(seconds_variance * .75))) || ' second')::INTERVAL,
        null,
        null,
        (SELECT person_id FROM person));
    varDtTime = varDtTime + (1 || ' hour')::INTERVAL;
  END LOOP;
  varDtTime = varDtTime + (.375 || ' hour')::INTERVAL; --remove variance offset

  -- raise notice 'dtTime: %', varDtTime;
  varDtTime = varDtTime - (16 || ' hour')::INTERVAL; --Set to 7:30am
  -- raise notice 'dtTime: %', varDtTime;

  --3 Muro Drops (1 every 4 hours starting at 11am (with a 1 hour variance))
  varDtTime = varDtTime + (3.5 || ' hour')::INTERVAL; --Set to 11:00am
  varDtTime = varDtTime - (.5 || ' hour')::INTERVAL; --offset half of variance
  FOR j IN 1..3 LOOP
    INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id)   
      VALUES (
        (SELECT log_type_id FROM log_type WHERE log_type_name='Muro Eye Drop'),
        varDtTime + ((SELECT floor(random()*(seconds_variance * 1))) || ' second')::INTERVAL,
        null,
        null,
        (SELECT person_id FROM person));
    
    varDtTime = varDtTime + (4 || ' hour')::INTERVAL;
  END LOOP;
  varDtTime = varDtTime + (.5 || ' hour')::INTERVAL; --remove variance offset


  -- raise notice 'dtTime: %', varDtTime;
  varDtTime = varDtTime - (15.5 || ' hour')::INTERVAL; --Set to 7:30am
  -- raise notice 'dtTime: %', varDtTime;

  --1 Muro Ointment
  varDtTime = varDtTime + (15 || ' hour')::INTERVAL; --Set to 10:30pm
  varDtTime = varDtTime - (1 || ' hour')::INTERVAL; --offset half of variance
  INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id)   
      VALUES (
        (SELECT log_type_id FROM log_type WHERE log_type_name='Muro Ointment'),
        varDtTime + ((SELECT floor(random()*(seconds_variance * 2))) || ' second')::INTERVAL,
        null,
        null,
        (SELECT person_id FROM person));
  varDtTime = varDtTime + (1 || ' hour')::INTERVAL; --remove variance offset

  --1 daily review
  varDtTime = varDtTime - (.75 || ' hour')::INTERVAL; --offset half of variance
  INSERT INTO log (log_type_id, log_datetime, rating, log_description, person_id) 
    VALUES (
      (SELECT log_type_id FROM log_type WHERE log_type_name='Daily Review'),
      varDtTime + ((SELECT floor(random()*(seconds_variance * 1.5))) || ' second')::INTERVAL,
      (SELECT floor(random()*(5))+1),
      'Was a super windy day today and my eyes definitely felt a little dry at times. I tried to avoid going outside too much though so that helped. Another thing that probably didn''t do any favors was the fact that I was on my laptop most of the day working. Besides that I also hydrated a lot today and took my omega 3''s.',
      (SELECT person_id FROM person));
  varDtTime = varDtTime + (.75 || ' hour')::INTERVAL; --remove variance offset

  --Rewind to 7:30am, then increment by a day, then correct for day light saving issues
  varDtTime = varDtTime - (15 || ' hour')::INTERVAL; --Set to 7:30am
  varDtTime = varDtTime + interval '1 day'; 
  --Deconstruct date and remake it to avoid time zone issues
  -- varDtTime = make_timestamptz(extract(year from varDtTime)::INT, extract(month from varDtTime)::INT, extract(day from varDtTime)::INT, 7, 30, 0.0, 'est');
END LOOP;
END; 
$$; 

--Delete all logs from log table (for deleting the dummy data)
DELETE FROM log;

--Select a log with the proper log type listed
SELECT log.log_id, log_type.log_type_name, log.log_datetime, log.rating, log.log_description 
  FROM log
  JOIN log_type
    ON log_type.log_type_id = log.log_type_id;

--Update a specific log based on id
UPDATE log
SET 
  log_type_id = (SELECT log_type_id FROM log_type WHERE log_type_name=$logType),
  log_datetime = $logDatetime
  rating = $rating
  log_description = $logDesc,
WHERE log_id = $logId;

--Example of updating a specific log with placeholders filled in
UPDATE log
SET 
  log_type_id = (SELECT log_type_id FROM log_type WHERE log_type_name='Muro Eye Drop'),
  log_datetime = '2022-02-02T13:12:49.666Z',
  rating = '5',
  log_description = 'This is a test description'
WHERE log_id = 22655;

--Get number of logs
SELECT COUNT(*) FROM log
