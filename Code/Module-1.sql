USE master;
GO
CREATE DATABASE Employees ON PRIMARY(
NAME=Employees_dat,
FILENAME='D:\Employeesdat.mdf',
SIZE=10,
MAXSIZE=50,
FILEGROWTH=5)

LOG ON(
NAME=Employees_log,
FILENAME='D:\Employeeslog.ldf',
SIZE=5MB,
MAXSIZE=25MB,
FILEGROWTH=5MB);
GO

CREATE TABLE emp(
	emp_id numeric(4) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	mgr_id numeric(4) NOT NULL,
	phone_numeric VARCHAR(20) NOT NULL UNIQUE,
	job_id numeric(2),
	deptno numeric(2),
	PRIMARY KEY(emp_id)
);

ALTER TABLE emp ADD salary numeric(10,2);

ALTER TABLE emp ADD CONSTRAINT CHK_emp CHECK(job_id!=0 AND deptno!=0);

CREATE TABLE emoluments(
	basic_pay numeric(4) NOT NULL,
	salary numeric(10,2) NOT NULL,
	phone_numeric VARCHAR(20) NOT NULL,
	job_type varchar(20) NOT NULL UNIQUE,
	PRIMARY KEY(basic_pay),
	FOREIGN KEY(phone_numeric) REFERENCES emp(phone_numeric)
);

ALTER TABLE emoluments DROP CONSTRAINT UQ__emolumen__85D2665B54C87DD7;