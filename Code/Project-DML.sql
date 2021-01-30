CREATE TABLE Employee(
	emp_id char(10) NOT NULL,
	dept_id char(10) NOT NULL,
	emp_name varchar(20) NOT NULL,
	desig varchar(20) NOT NULL,
	salary numeric(10) NOT NULL,
	contact_no varchar(10) NOT NULL,
	city varchar(20) NOT NULL
);

INSERT INTO Employee(emp_id,dept_id,emp_name,desig,salary,contact_no,city) VALUES ('1','1','S Ahmad','Sales Mgr',50000,'0110','New Delhi');
INSERT INTO Employee(emp_id,dept_id,emp_name,desig,salary,contact_no,city) VALUES ('2','2','Anand','Senior Mgr',40000,'0111','New Delhi');
INSERT INTO Employee(emp_id,dept_id,emp_name,desig,salary,contact_no,city) VALUES ('3','3','Aruna','Accounts Mgr',45000,'0112','New Delhi');
INSERT INTO Employee(emp_id,dept_id,emp_name,desig,salary,contact_no,city) VALUES ('4','3','Alpesh','Accountant',35000,'0113','Bangalore');
INSERT INTO Employee(emp_id,dept_id,emp_name,desig,salary,contact_no,city) VALUES ('5','1','Monica','Incharge',25000,'0114','Noida');
INSERT INTO Employee(emp_id,dept_id,emp_name,desig,salary,contact_no,city) VALUES ('6','1','Harish','Sales Man',15000,'0115','Bangalore');

UPDATE Employee SET contact_no='0116' WHERE city='Bangalore' AND emp_id='6';

SELECT emp_id,emp_name,desig FROM Employee;

SELECT * FROM Employee WHERE salary>30000;

SELECT * FROM Employee WHERE salary>15000 AND salary<30000;

SELECT * FROM Employee WHERE city='Bangalore' OR city='New Delhi';

SELECT * FROM Employee WHERE city!='Bangalore' AND city!='New Delhi';

SELECT * FROM Employee WHERE emp_name LIKE 'A%';

SELECT * FROM Employee ORDER BY salary DESC;

SELECT AVG(salary) FROM Employee GROUP BY dept_id;

SELECT dept_id,salary,AVG(salary) AS AVGSAL FROM Employee GROUP BY dept_id,salary HAVING AVG(salary)>30000;