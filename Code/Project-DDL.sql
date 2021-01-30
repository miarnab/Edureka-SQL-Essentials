CREATE TABLE DepartmentDB(
	dept_id numeric(4) NOT NULL PRIMARY KEY,
	d_name nvarchar(100) NOT NULL,
	contact_no numeric(10) NOT NULL UNIQUE
);

CREATE TABLE EmployeeDB(
	emp_id numeric(4) NOT NULL PRIMARY KEY,
	dept_id numeric(4) NOT NULL,
	emp_name nvarchar(100) NOT NULL,
	designation nvarchar(100) NOT NULL,
	salary money NOT NULL,
	FOREIGN KEY(dept_id) REFERENCES DepartmentDB(dept_id)
);

ALTER TABLE DepartmentDB ADD city nvarchar(50);

ALTER TABLE EmployeeDB ALTER COLUMN salary char(10);

ALTER TABLE DepartmentDB DROP COLUMN city;

EXEC sp_rename 'DepartmentDB.d_name','dept_name','COLUMN';
