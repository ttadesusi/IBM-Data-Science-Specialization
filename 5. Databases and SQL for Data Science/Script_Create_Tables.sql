------------------------------------------
-- DDL statement for table 'HR' database --
--------------------------------------------

CREATE TABLE EMPLOYEES (
                            EMPL_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOBS_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEPT_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMPL_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOBS_ID CHAR(9) NOT NULL, 
                            JOBS_TITLE VARCHAR(25) ,
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOBS_ID));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID CHAR(9) NOT NULL, 
                            DEPT_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOCT_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEPT_ID));
                            