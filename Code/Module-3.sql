CREATE TABLE Teacher(
	emp_id numeric(4) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	deptno numeric(2) NOT NULL,
	salary numeric(10,2) NOT NULL,
);

INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1001,'Sayan','Chowdhury',40,60000);
INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1002,'Kinjal','Mitra',41,45000);
INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1003,'Agniva','Saha',42,30000);
INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1004,'Sutapa','Mitra',40,32000);
INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1005,'Tamal','Mitra',43,31000);
INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1006,'Sucharita','Mitra',44,35000);
INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1007,'Satyajit','Biswas',45,25000);
INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1008,'Shruti','Halder',42,44000);
INSERT INTO Teacher(emp_id,first_name,last_name,deptno,salary) VALUES (1009,'Riccky','Lawrence',40,28000);

CREATE TABLE HOD(
	emp_id numeric(4) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	hod_id numeric(4) NOT NULL,
	deptno numeric(2) NOT NULL,
	salary numeric(10,2) NOT NULL,
);

INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1010,'Sutapa','Mitra',1001,40,60000);
INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1011,'Saona','Sengupta',1002,41,45000);
INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1012,'Jyotsna','Podder',1003,42,30000);
INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1013,'Sutapa','Mitra',1004,40,32000);
INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1014,'Anupama','Sarkar',1005,43,31000);
INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1015,'Gitasree','Datta',1006,44,35000);
INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1016,'Reba','Roy',1007,45,25000);
INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1017,'Jyotsna','Podder',1008,42,44000);
INSERT INTO HOD(emp_id,first_name,last_name,hod_id,deptno,salary) VALUES (1018,'Sutapa','Mitra',1009,40,28000);

SELECT t1.first_name as Teacher,t2.first_name as HOD
FROM Teacher t1 JOIN HOD t2
ON t1.emp_id=t2.hod_id;


CREATE TABLE Employees(
	emp_id numeric(4) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	deptno numeric(2) NOT NULL,
	salary numeric(10,2) NOT NULL,
);

INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1001,'Sayan','Chowdhury',40,60000);
INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1002,'Kinjal','Mitra',41,45000);
INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1003,'Agniva','Saha',42,30000);
INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1004,'Sutapa','Mitra',43,32000);
INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1005,'Tamal','Mitra',44,31000);
INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1006,'Sucharita','Mitra',45,35000);
INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1007,'Satyajit','Biswas',46,25000);
INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1008,'Shruti','Halder',47,44000);
INSERT INTO Employees(emp_id,first_name,last_name,deptno,salary) VALUES (1009,'Riccky','Lawrence',48,28000);

CREATE TABLE Department(
	deptno numeric(2) NOT NULL,
	deptname varchar(20) NOT NULL,
);

INSERT INTO Department(deptno,deptname) VALUES (40,'Accounts');
INSERT INTO Department(deptno,deptname) VALUES (41,'IT');
INSERT INTO Department(deptno,deptname) VALUES (42,'Support');
INSERT INTO Department(deptno,deptname) VALUES (43,'Accounts');
INSERT INTO Department(deptno,deptname) VALUES (44,'HR');
INSERT INTO Department(deptno,deptname) VALUES (45,'Research');
INSERT INTO Department(deptno,deptname) VALUES (46,'Design');
INSERT INTO Department(deptno,deptname) VALUES (47,'Support');
INSERT INTO Department(deptno,deptname) VALUES (48,'Accounts');

SELECT t1.first_name as Employees,t2.deptname as Department
FROM Employees t1 INNER JOIN Department t2
ON t1.deptno=t2.deptno;

SELECT t1.first_name as Employees,t2.deptname as Department
FROM Employees t1 LEFT OUTER JOIN Department t2
ON t1.deptno=t2.deptno;

SELECT t1.first_name as Employees,t2.deptname as Department
FROM Employees t1 RIGHT OUTER JOIN Department t2
ON t1.deptno=t2.deptno;

SELECT t1.deptname as Department,t2.first_name as Employees
FROM Employees t2 CROSS JOIN Department t1;


