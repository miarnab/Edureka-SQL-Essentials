CREATE TABLE employeeDatabase(
	emp_id numeric(4) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	mgr_id numeric(4) NOT NULL,
	deptno numeric(2) NOT NULL,
	salary numeric(10,2) NOT NULL,
	PRIMARY KEY(emp_id)
);

INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1001,'Sayan','Chowdhury',1001,40,60000);
INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1002,'Kinjal','Mitra',1002,41,45000);
INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1003,'Agniva','Saha',1003,42,30000);
INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1004,'Sutapa','Mitra',1004,40,32000);
INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1005,'Tamal','Mitra',1005,43,31000);
INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1006,'Sucharita','Mitra',1006,44,35000);
INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1007,'Satyajit','Biswas',1007,45,25000);
INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1008,'Shruti','Halder',1008,42,44000);
INSERT INTO employeeDatabase(emp_id,first_name,last_name,mgr_id,deptno,salary) VALUES (1009,'Riccky','Lawrence',1009,40,28000);

GO

CREATE PROCEDURE sp_GETEMPLOYEEINFO(@empid AS INT)
AS
BEGIN
SELECT [emp_id],
	 [first_name],
	 [last_name],
	 [mgr_id],
	 [deptno],
	 [salary]
FROM employeeDatabase WHERE emp_id=@empid
END;

GO

USE[master]

GO

DECLARE @return_value INT

EXEC @return_value=[dbo].[sp_GETEMPLOYEEINFO]
@empid=1001

SELECT 'Return Value'=@return_value


	
