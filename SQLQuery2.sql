CREATE DATABASE UNIVERSITY_DP
USE UNIVERSITY_DP;
CREATE TABLE STUDENTS(
student_id  INT IDENTITY (1,1) PRIMARY KEY, 
first_name VARCHAR (30) not null, 
last_name VARCHAR (50), 
 email VARCHAR (100) UNIQUE,
 birth_date DATE DEFAULT '2025-05-15',
 enrollment_year INT NOT NULL CHECK (enrollment_year >= 2000)
 );
 CREATE TABLE Courses(
 course_id  INT IDENTITY (1,1) PRIMARY KEY,
 course_code VARCHAR (30) UNIQUE,
 title VARCHAR (50),
 credits INT NOT NULL CHECK ( credits BETWEEN 1 AND 6)
 );
 CREATE TABLE  Instructors(
 instructor_id INT IDENTITY (1,1) PRIMARY KEY,
 first_name VARCHAR (30) not null,
 last_name VARCHAR (50) NOT NULL,
 email VARCHAR (100) UNIQUE,
 hire_date INT CHECK (hire_date >= 2000)
 );
CREATE TABLE Enrollments(
enrollment_id INT IDENTITY (1,1) PRIMARY KEY,
student_id INT NOT NULL,
course_id INT NOT NULL,
term VARCHAR (20),
grade CHAR (5),
CONSTRAINT fk_enrollment_student
FOREIGN KEY (student_id) REFERENCES STUDENTS(student_id),
CONSTRAINT fk_enrollment_course
FOREIGN KEY (course_id) REFERENCES Courses(course_id),
CONSTRAINT uq_STUDENTS_course_term
UNIQUE (student_id , course_id , term)
);

