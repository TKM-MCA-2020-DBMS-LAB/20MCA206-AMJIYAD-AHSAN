CREATE DATABASE db;

USE `db`;

CREATE TABLE employee(emp_no int(20) not null primary key,emp_name varchar(100) not null,DOB date  not null,
address varchar(200) not null ,doj date not null,mobile_no int(20) not null,dept_no int(20) not null,salary int(100) not null);
CREATE TABLE department(dept_no int(10) not null primary key,dept_name varchar(20) not null,location varchar(100) not null);

SHOW databases;

ALTER TABLE employee add designation varchar(100);

DESC employee;

ALTER TABLE department drop column location;

DESC department;

DROP TABLE employee;
DROP TABLE department;

DROP DATABASE db;





