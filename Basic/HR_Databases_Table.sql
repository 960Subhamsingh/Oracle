------------------------------------------
--DDL statement for table 'HR' database--
--------------------------------------------

-- Drop the tables in case they exist

DROP TABLE EMPLOYEES;
DROP TABLE JOBS;

-- Create the tables

CREATE TABLE EMPLOYEES (
                          EMP_ID CHAR(9) NOT NULL,
                          F_NAME VARCHAR(15) NOT NULL,
                          L_NAME VARCHAR(15) NOT NULL,
                          SSN CHAR(9),
                          B_DATE DATE,
                          SEX CHAR,
                          ADDRESS VARCHAR(30),
                          JOB_ID CHAR(9),
                          SALARY DECIMAL(10,2),
                          MANAGER_ID CHAR(9),
                          DEP_ID CHAR(9) NOT NULL,
                          PRIMARY KEY (EMP_ID)
                        );

 

CREATE TABLE JOBS (
JOB_IDENT CHAR(9) NOT NULL,
JOB_TITLE VARCHAR(30) ,
MIN_SALARY DECIMAL(10,2),
MAX_SALARY DECIMAL(10,2),
PRIMARY KEY (JOB_IDENT)
                  );

create table departments (
dept_id  char(9) not null,
Dep_name varchar(15),
Manager_id char(9),
loc_id char(9),
primary key(dept_id));


create table location(
loct_id char(10) not null,
Dep_loc char(10) not null,
primary key(loct_id , Dep_loc));
