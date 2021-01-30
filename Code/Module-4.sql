CREATE TABLE Person(
	voter_id numeric(4) NOT NULL,
	first_name varchar(20) NOT NULL,
	last_name varchar(20) NOT NULL,
	age numeric(3) NOT NULL,
);

INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1000,'Sayan','Chowdhury',40);
INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1001,'Kinjal','Mitra',30);
INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1002,'Agniva','Saha',32);
INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1003,'Sutapa','Mitra',47);
INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1004,'Tamal','Mitra',65);
INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1005,'Sucharita','Mitra',45);
INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1006,'Satyajit','Biswas',45);
INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1007,'Shruti','Halder',32);
INSERT INTO Person(voter_id,first_name,last_name,age) VALUES (1008,'Riccky','Lawrence',50);

SELECT voter_id, COUNT(*) FROM Person WHERE age>50
GROUP BY voter_id

SELECT AVG(age) AS AVGAGE FROM Person

SELECT SUM(age) AS SUMSAL FROM Person
