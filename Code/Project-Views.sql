CREATE TABLE Company(
	emp_id numeric(2),
	emp_name nvarchar(50),
	age numeric(2) NOT NULL,
	emp_address nvarchar(50),
	salary numeric(8,2),
	join_date date
);

INSERT INTO Company(emp_id,emp_name,age,emp_address,salary,join_date) VALUES (1,'PAUL',32,'CALIFORNIA',20000,'2001-07-13');
INSERT INTO Company(emp_id,emp_name,age,emp_address,salary,join_date) VALUES (2,'ALEN',23,'NORWAY',20000,null);
INSERT INTO Company(emp_id,emp_name,age,emp_address,salary,join_date) VALUES (3,'DAVID',25,'RICHMOND',65000,'2010-10-25');
INSERT INTO Company(emp_id,emp_name,age,emp_address,salary,join_date) VALUES (4,'MARK',27,'TEXAS',35000,'2015-11-02');
INSERT INTO Company(emp_id,emp_name,age,emp_address,salary,join_date) VALUES (5,'TEDDY',25,'LAS VEGAS',null,'2013-09-01');

CREATE TABLE Dept(
	dept_id numeric(1),
	dept_name nvarchar(20),
	emp_id numeric(2)
);

INSERT INTO Dept(dept_id,dept_name,emp_id) VALUES (1,'IT BILLING',1);
INSERT INTO Dept(dept_id,dept_name,emp_id) VALUES (2,'ENGINEERING',2);
INSERT INTO Dept(dept_id,dept_name,emp_id) VALUES (3,'FINANCE',41);

SELECT t1.emp_id AS emp_id,t1.emp_name AS emp_name,t2.dept_name AS dept_name,t2.dept_id AS dept_id,t1.age AS age,t1.salary AS salary
FROM Company AS t1 FULL OUTER JOIN Dept AS t2
ON t1.emp_id=t2.emp_id WHERE t1.emp_id=2;

GO

CREATE PROCEDURE sp_GETEMPLOYEEINFO(@empid AS INT)
AS
BEGIN
SELECT t1.emp_id AS emp_id,
		t1.emp_name AS emp_name,
		t2.dept_name AS dept,
		t2.dept_id AS dept_id,
		t1.age AS age,
		t1.salary AS salary
FROM Company AS t1 FULL OUTER JOIN Dept AS t2
ON t1.emp_id=t2.emp_id
END;
GO

USE[master]

GO

DECLARE @return_value INT

EXEC @return_value=[dbo].[sp_GETEMPLOYEEINFO]
@empid=1;

GO

CREATE VIEW emp_dept_view AS
SELECT t1.emp_id AS emp_id,t1.emp_name AS emp_name,t2.dept_name AS dept_name,t2.dept_id AS dept_id,t1.age AS age,t1.salary AS salary
FROM Company AS t1 FULL OUTER JOIN Dept AS t2
ON t1.emp_id=t2.emp_id;

GO

SELECT * FROM emp_dept_view;

