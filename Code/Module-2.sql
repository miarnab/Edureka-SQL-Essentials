CREATE TABLE employee(
	emp_id numeric(4) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	mgr_id numeric(4) NOT NULL,
	deptno numeric(2) NOT NULL,
	salary numeric(10,2) NOT NULL,
	PRIMARY KEY(emp_id)
);

INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1001,'Sayan','Chowdhury',1001,40,60000);
INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1002,'Kinjal','Mitra',1002,41,45000);
INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1003,'Agniva','Saha',1003,42,30000);
INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1004,'Sutapa','Mitra',1004,40,32000);
INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1005,'Tamal','Mitra',1005,43,31000);
INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1006,'Sucharita','Mitra',1006,44,35000);
INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1007,'Satyajit','Biswas',1007,45,25000);
INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1008,'Shruti','Halder',1008,42,44000);
INSERT INTO employee(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1009,'Riccky','Lawrence',1009,40,28000);

DELETE FROM employee WHERE salary>=40000;

UPDATE employee SET first_name='Rajat',last_name='Mukherjee' WHERE emp_id=1005;
UPDATE employee SET first_name='Kakali',last_name='Mukherjee' WHERE mgr_id=1004;
SELECT * FROM employee WHERE last_name LIKE 'B%' OR last_name LIKE 'F%';
