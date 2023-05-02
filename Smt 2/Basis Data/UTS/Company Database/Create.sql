CREATE DATABASE company_database;
USE company_database;

CREATE TABLE EMPLOYEE
    (
    Id      INT             NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Fname   VARCHAR(255)    NOT NULL,
    Lname   VARCHAR(255)    NOT NULL,
    Ssn     CHAR(9)         NOT NULL,
    BDate   DATETIME        NOT NULL,
    Address VARCHAR(255)    NOT NULL,
    Salary  INT             NOT NULL,
    Dno     INT             NOT NULL
    );

    CREATE TABLE PROJECT
    (
    Id          INT             NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Pname       VARCHAR(255)    NOT NULL,
    Plocation   VARCHAR(255)    NOT NULL,
    Pnumber     INT             NOT NULL,
    Dnum        INT             NOT NULL
    );

    CREATE TABLE DEPENDENT
    (
    Id              INT             NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Essn            CHAR(9)         NOT NULL,
    Dependent_name  VARCHAR(255)    NOT NULL,
    Relationship    ENUM ('Daughter', 'Spouse', 'Son')
    );

    CREATE TABLE DEPARTMENT
    (
    Id              INT             NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Dname           VARCHAR(255)    NOT NULL,
    Dnumber         INT             NOT NULL,
    Mgr_ssn         CHAR(9)         NOT NULL,
    Mgr_start_date  DATETIME        NOT NULL
    );