--This manually creates a new database, then tables for the student, course and teacher details. 
--Then the tables are manually populated.


--------------------------------CREATE DATABASE----------------------------

CREATE DATABASE School_details

--------------------------------CREATE TABLES------------------------------

CREATE TABLE Students
(
courseId INT,
firstName VARCHAR(20),
lastName VARCHAR(20),
dateBirth DATE,
phone INT,
email VARCHAR(40)
)


CREATE TABLE Courses
(
id INT not Null,
title VARCHAR(50),
category VARCHAR(40),
cost INT,
CONSTRAINT IDK PRIMARY KEY (id)
)


CREATE TABLE Teachers
(
courseId1 INT,
courseId2 INT,
courseId3 INT,
firstName VARCHAR(20),
lastName VARCHAR(20),
phone INT
)


---------------------------Populating Tables---------------------------


INSERT INTO Courses VALUES
(1, 'Civil and Environmental Engineering', 'optional', 15000), 
(2, 'Mechanical Engineering', 'required', 20000),
(3, 'Materials Science and Engineering', 'required', 22000),
(4, 'Architecture', 'optional', 24000),
(5, 'Chemistry', 'required', 25000),
(6, 'Electrical Engineering and Computer Science', 'required', 28000),
(7, 'Biology', 'required', 29000),
(8, 'Physics', 'required', 30000),
(9, 'Brain and Cognitive Sciences', 'optional', 31000),
(10, 'Chemical Engineering', 'required', 32000),
(11, 'Urban Studies and Planning', 'required', 33000),
(12, 'Mathematics', 'required', 34000)


INSERT INTO Students VALUES
(1, 'John', 'Doe', '1990-09-11', 0225223631, 'johnmail@email.com'),
(2, 'Nikodem', 'Forrest', '1989-10-12', 0526123634, 'nickmail@email.com'),
(3, 'Jez', 'Strickland', '1988-11-01', 0225128482, 'jezmail@email.com'),
(4, 'Gabrielle', 'obins', '1987-12-02', 0852883631, 'johnmail@email.com'),
(5, 'Kristopher', 'Farrell', '1986-01-03', 0273123685, 'gabmail@email.com'),
(6, 'Alan', 'Clifford', '1992-02-04', 0825523274, 'krismail@email.com'),
(7, 'Della', 'Tyler', '1993-03-05', 0425323061, 'dellmail@email.com'),
(8, 'Simeon', 'Frey', '1991-04-06', 0125123637, 'simeonmail@email.com'),
(9, 'Sohaib', 'Sears', '1994-06-15', 0925175432, 'searsmail@email.com'),
(10, 'Lylah', 'Haines', '1996-05-17', 0678123636, 'lylahmail@email.com'),
(11, 'Dougie', 'Brett', '1995-07-19', 0115123667, 'brettmail@email.com'),
(12, 'Enya', 'Daniels', '1997-08-22', 0206129432, 'enyamail@email.com')


INSERT INTO Teachers VALUES
(1, 5, 9, 'Rikki', 'Laing', 0465128713),
(2, 6, 10, 'Antoine', 'Keller', 0425323541),
(3, 7, 11, 'Xanthe', 'Clemons', 0378126156),
(4, 8, 12, 'Ariana', 'Gilmour', 0878129137)