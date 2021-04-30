
-- Date : 26 - 03 - 21
-- Day : 1

-- CREATE TABLE in Database

SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index










CREATE TABLE flights (

	id SERIAL PRIMARY KEY,
	origin VARCHAR NOT NULL,
	destination VARCHAR NOT NULL,
	duration INTEGER NOT NULL ,
  create_at DATETIME current_time

);



CREATE TABLE product(

  id SERIAL PRIMARY KEY,
  text VARCHAR NOT NULL,
  complete boolean

);



-- INSERT in Database TABLE

INSERT INTO flights(origin , destination , duration) VALUES ('New York','London',415);
INSERT INTO flights(origin , destination , duration) VALUES ('Istanbul','Ohaio',155);
INSERT INTO flights(origin , destination , duration) VALUES ('Dhaka','Singapur',456);
INSERT INTO flights(origin , destination , duration) VALUES ('Dubai','Beijig',815);
INSERT INTO flights(origin , destination , duration) VALUES ('Manama','Berlin',150);
INSERT INTO flights(origin , destination , duration) VALUES ('Paris','Sidney',150);

INSERT INTO flights(origin , destination , duration) VALUES ('Manama','Dubai',150);
INSERT INTO flights(origin , destination , duration) VALUES ('Paris','Tokeyo',150);


>> To see Database Data => use SELECT > * (for see all data) > TABLE Name.

SELECT * FROM flights;
 id |  origin  | destination | duration
----+----------+-------------+----------
  1 | New York | London      |      415
  2 | Istanbul | Ohaio       |      155
  3 | Dhaka    | Singapur    |      456
  4 | Dubai    | Beijig      |      815
  5 | Manama   | Berlin      |      150
(5 rows)



SELECT origin , destination FROM flights; 

  origin  | destination
----------+-------------
 New York | London
 Istanbul | Ohaio
 Dhaka    | Singapur
 Dubai    | Beijig
 Manama   | Berlin
 Paris    | Sidney
(6 rows)

[This time we have only origin and destination Data.. Not have id and duration]



						>> SELECT <<



>> If i need only specefique item data in the TABLE;

SELECT * FROM flights WHERE id = 3 >>> In this time i have only TABLE 3 id..

SELECT * FROM flights WHERE origin = 'New York' > this time i have new York data

SELECT * FROM flights WHERE duration > 500 > this time i have duration less 500 data


>> Use Boolen

SELECT * FROM flights WHERE origin = 'New York' AND duration > 500

 id | origin | destination | duration
----+--------+-------------+----------
  3 | Dhaka  | Singapur    |      456
(1 row)


>> Use OR

SELECT * FROM flights WHERE origin = 'New York' OR duration > 500



>> If i want Average duration in the my flights TABLE:

SELECT AVG(duration) FROM flights;

         avg
----------------------
 356.8333333333333333
(1 row)


>> To count the row in the table 

 count
-------
     6
(1 row)

SELECT COUNT(*) FROM flights;

 count
-------
     1
(1 row)

>> To see specefique location how many flights count

SELECT COUNT(*) FROM flights WHERE origin = 'Manama';

>> To see minimum ammount location

SELECT MIN(duration) FROM flights WHERE origin = 'Dhaka';


>> To see specefique duration in flights

SELECT * FROM flights WHERE duration = '150';

 id | origin | destination | duration
----+--------+-------------+----------
  5 | Manama | Berlin      |      150
  6 | Paris  | Sidney      |      150
(2 rows)



						>>UPDATE<<



UPDATE flights (

	SET duration = 430
	WHERE origin = 'New Youk'
	AND destination = 'Moscow'



);


						>> DELETE <<

DELETE FROM flights(

	WHERE destination = 'Paris'


);


>>If you need To DELETE Full TABLE..

DROP TABLE passengers



>> Sort the VALUES in table

SELECT * FROM flights ORDER BY duration ASC; [ASC = small TO Big VALUES Like (1 to 10)]

 id |  origin  | destination | duration
----+----------+-------------+----------
  5 | Manama   | Berlin      |      150
  6 | Paris    | Sidney      |      150
  2 | Istanbul | Ohaio       |      155
  1 | New York | London      |      415
  3 | Dhaka    | Singapur    |      456
  4 | Dubai    | Beijig      |      815



>> To see First 3 shortest duration flights in the table

SELECT * FROM flights ORDER BY duration ASC LIMIT 3;


 id |  origin  | destination | duration
----+----------+-------------+----------
  5 | Manama   | Berlin      |      150
  6 | Paris    | Sidney      |      150
  2 | Istanbul | Ohaio       |      155
(3 rows)


>> DESC the VALUES

SELECT * FROM flights ORDER BY duration DESC; [DESC = Big to small [10-1]]

 id |  origin  | destination | duration
----+----------+-------------+----------
  4 | Dubai    | Beijig      |      815
  3 | Dhaka    | Singapur    |      456
  1 | New York | London      |      415
  2 | Istanbul | Ohaio       |      155
  5 | Manama   | Berlin      |      150
  6 | Paris    | Sidney      |      150
(6 rows)


>> To group origin

SELECT origin , COUNT(*) FROM flights GROUP BY origin;

  origin  | count
----------+-------
 Dhaka    |     1
 Istanbul |     1
 Paris    |     1
 New York |     1
 Manama   |     1
 Dubai    |     1
(6 rows)


>> In this time i added two more row for see what happen in my TABLE there...


  origin  | count
----------+-------
 Dhaka    |     1
 Istanbul |     1
 Paris    |     2
 New York |     1
 Manama   |     2
 Dubai    |     1
(6 rows)


>> if I Need to grouping count greater then 1.. I need to put this command.

 SELECT origin , COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*) > 1;


 origin | count
--------+-------
 Paris  |     2
 Manama |     2
(2 rows)




						>> Foregin Keys <<


A Foregin Keys is Methods to connect multiple TABLE together ..

This use in Relationla Data...

CREATE TABLE passengers (

	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL ,
	flight_id INTEGER REFERENCES flights


);



>> INSERT THE VALUES


INSERT INTO passengers (name , flight_id) VALUES ('Alice','1');
INSERT INTO passengers (name , flight_id) VALUES ('Bob','1');
INSERT INTO passengers (name , flight_id) VALUES ('Charlie','2');
INSERT INTO passengers (name , flight_id) VALUES ('Dave','3');
INSERT INTO passengers (name , flight_id) VALUES ('Erin','4');
INSERT INTO passengers (name , flight_id) VALUES ('Frank','5');
INSERT INTO passengers (name , flight_id) VALUES ('Grace','6');


> To see this table

SELECT * FROM passengers;

 id |  name   | flight_id
----+---------+-----------
  1 | Alice   |         1
  2 | Bob     |         1
  3 | Charlie |         2
  4 | Dave    |         3
  5 | Erin    |         4
  6 | Frank   |         5
  7 | Grace   |         6
(7 rows)



>> If i want to know WHERE Alice

SELECT * FROM passengers WHERE name = 'Alice';


 id | name  | flight_id
----+-------+-----------
  1 | Alice |         1
(1 row)


>> Now if i want to know what is the id number 1.

SELECT * FROM flights WHERE id = 1;

 id |  origin  | destination | duration
----+----------+-------------+----------
  1 | New York | London      |      415
(1 row)







				>> JOIN <<


It allow to two different table grouping them together in One..


SELECT origin, destination, name FROM flights JOIN passengers ON passengers.flight_id = flights.id;



  origin  | destination |  name
----------+-------------+---------
 New York | London      | Alice
 New York | London      | Bob
 Istanbul | Ohaio       | Charlie
 Dhaka    | Singapur    | Dave
 Dubai    | Beijig      | Erin
 Manama   | Berlin      | Frank
 Paris    | Sidney      | Grace
(7 rows)



-- Date : 27 - 03 - 21
-- Day : 2



>> To see specefique name location

SELECT origin , destination , name FROM flights JOIN passengers ON passengers.flight_id = flights.id WHERE name = 'Alice'



  origin  | destination | name
----------+-------------+-------
 New York | London      | Alice
(1 row)



>> if we need to know one more flights in a passengers

SELECT flight_id FROM passengers GROUP BY flight_id HAVING COUNT(*) > 1;

 flight_id
-----------
         1
(1 row)




					>>NESTING<<


>> IF we NESTING each other...



SELECT * FROM flights WHERE id IN (SELECT flights_id FROM passengers GROUP BY flight_id HAVING COUNT(*) > 1);


 id |  origin  | destination | duration
----+----------+-------------+----------
  1 | New York | London      |      415
(1 row)




-- Date : 28 - 03 - 21
-- Day : 3



>> User FROM for Database

SELECT * 




-- Date : 29 - 03 - 21
-- Day : 4


>> User FROM

SELECT * FROM user
	WHERE (username = 'test')
	AND (password = 'password');




>> Race Codition

>> IF you running Database and if a person want to widraw 100 doller ,
what QUERY need to run..

SELECT blance FROM bank
WHERE user_id = 1;

>> Then UPDATE the bank blance

UPDATE bank
SET blance = blance - 100
WHERE user_id = 1;




				>>SQL Transction


BEGIN => BEGIN the Transction.

COMMIT => END the Transction set COMMIT;


					>>SQLAlchemy


Populer PYTHON Libray SQLAlchemy allow the connect PYTHON to SQL;



-- Date : 29 - 03 - 21
-- Day : 4


# Just try from W3SCHOOL

CREATE TABLE customers(

	CustomerID SERIAL PRIMARY KEY,
	CustomerName VARCHAR NOT NULL,
	ContactName VARCHAR NOT NULL,
	Address VARCHAR NOT NULL,
	City VARCHAR NOT NULL,
	PostalCode VARCHAR NOT NULL,
	Country VARCHAR NOT NULL


);

INSERT INTO customers (CustomerName , ContactName , Address , City , PostalCode, Country)
 VALUES ('Alfreds Futterkiste','	Maria Anders' ,'Obere Str. 57' ,'Berlin' , '12209' , 'Germany');

INSERT INTO customers (CustomerName , ContactName , Address , City , PostalCode, Country)
 VALUES ('Emparedados y helados','	Ana Trujillo' ,'Obere' ,'Avda. de la Constitución 2222' , '12255409' , 'México');


INSERT INTO customers (CustomerName , ContactName , Address , City , PostalCode, Country)
 VALUES ('Antonio Moreno Taquería','Antonio Moreno' ,'Mataderos 2312' ,'México D.F.' , '4525409' , 'México');


INSERT INTO customers (CustomerName , ContactName , Address , City , PostalCode, Country)
 VALUES ('Around the Horn','Thomas Hardy' ,'120 Hanover Sq.' ,'	London' , '	WA1 1DP' , 'UK');


INSERT INTO customers (CustomerName , ContactName , Address , City , PostalCode, Country)
 VALUES ('Berglunds snabbköp','Christina Berglund' ,'Berguvsvägen 8' ,'	Luleå' , 'S-958 22' , 'Sweden');




 customerid |      customername       |    contactname     |     address     |             city              | postalcode | country
------------+-------------------------+--------------------+-----------------+-------------------------------+------------+---------
          1 | Alfreds Futterkiste     | Maria Anders       | Obere Str. 57   | Berlin                        | 12209      | Germany
          2 | Emparedados y helados   | Ana Trujillo       | Obere           | Avda. de la Constitución 2222 | 12255409   | México
          3 | Antonio Moreno Taquería | Antonio Moreno     | Mataderos 2312  | México D.F.                   | 4525409    | México
          4 | Around the Horn         | Thomas Hardy       | 120 Hanover Sq. | London                        | WA1 1DP    | UK
          5 | Berglunds snabbköp      | Christina Berglund | Berguvsvägen 8  | Luleå                         | S-958 22   | Sweden
(5 rows)



SELECT customername , city FROM customers;

      customername       |             city
-------------------------+-------------------------------
 Alfreds Futterkiste     | Berlin
 Emparedados y helados   | Avda. de la Constitución 2222
 Antonio Moreno Taquería | México D.F.
 Around the Horn         | London
 Berglunds snabbköp      | Luleå




  SELECT DISTINCT City FROM customers;

               city
-------------------------------
 México D.F.
 Avda. de la Constitución 2222
 Berlin
 London
 Luleå
(5 rows)


SELECT * FROM customers WHERE city = 'Berlin';

 customerid |    customername     | contactname  |    address    |  city  | postalcode | country
------------+---------------------+--------------+---------------+--------+------------+---------
          1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209      | Germany
(1 row)


SELECT * FROM customers WHERE customerid = 2;
 customerid |     customername      | contactname  | address |             city              | postalcode | country
------------+-----------------------+--------------+---------+-------------------------------+------------+---------
          2 | Emparedados y helados | Ana Trujillo | Obere   | Avda. de la Constitución 2222 | 12255409   | México
(1 row)


SELECT * FROM customers WHERE customername = 'Maria Anders' AND city = 'Obere';





========================= Flask Projet ================================


CREATE TABLE school (

  id SERIAL PRIMARY KEY,
  Name VARCHAR NOT NULL,
  Location VARCHAR NOT NULL,
  Student INTEGER NOT NULL

);



INSERT INTO school (Name , Location , Student) VALUES ('Dhrmapur Educationl Estate' , 'South Dhrmapur' , 1500);
INSERT INTO school (Name , Location , Student) VALUES ('North Tarakucha','North Tarakucha', 1225);
INSERT INTO school (Name , Location , Student) VALUES ('Boxmahmud High School' , 'Islamia Bazar' , 1130);
INSERT INTO school (Name , Location , Student) VALUES ('Jogotpur Govt High School' , 'Jogotpur', 1050);




UPDATE school (

  SET Name = 'Boxmahmud High School'
  WHERE Location = 'Boxmahmud'
  AND Student = 1130



);


 CREATE TABLE student_data (

   id SERIAL PRIMARY KEY,
   student_name VARCHAR NOT NULL,
   student_id INTEGER REFERENCES school

);



INSERT INTO student_data (student_name , student_id) VALUES ('Mahi' , 1);
INSERT INTO student_data (student_name , student_id) VALUES ('Shihab' ,2);
INSERT INTO student_data (student_name , student_id) VALUES ('Rupos' , 3);
INSERT INTO student_data (student_name , student_id) VALUES ('Suraiya' , 4);







            LOGIN


CREATE TABLE users(

  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  email VARCHAR NOT NULL,
  password INTEGER NOT NULL


);

INSERT INTO users(name , email , password) VALUES ('One'  , 'one@gmail.com' , 12345);
INSERT INTO users(name , email , password) VALUES ('Two' , 'two@gmail.com' , 123456);
INSERT INTO users(name , email , password) VALUES ('Three' , 'three@gmail.com' ,123457);
INSERT INTO users(name , email , password) VALUES ('Four' , 'four@gmail.com' , 1234578);




			

CREATE TABLE tasks (

  id SERIAL PRIMARY KEY ,
  title VARCHAR NOT NULL , 
   created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP


  );



