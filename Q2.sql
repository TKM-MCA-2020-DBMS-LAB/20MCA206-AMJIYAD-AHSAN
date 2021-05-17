USE db;
desc department;
-- (i)	Add 5 rows in the employee and dept tables

alter table department add location varchar(20);
INSERT INTO department VALUES (100,"ABC","DELHI");
INSERT INTO department VALUES (101,"DEF","CHENNNAI");
INSERT INTO department VALUES (102,"GHI","KOCHI");
INSERT INTO department VALUES (103,"JKL","BANGLORE");
INSERT INTO department VALUES (104,"MNO","MUMBAI");


INSERT INTO employee VALUES (1,"Amjiyad","1999-12-31","lkj","2021-2-18",987658987,101,2500,"clerk");
INSERT INTO employee VALUES (2,"Ashis","1999-10-30","fgh","2021-5-29",978646570,103,3500,"manager");
INSERT INTO employee VALUES (3,"Nijil","1997-2-7","lkj","2022-7-8",789654378,102,1500,"data entry");
INSERT INTO employee VALUES (4,"Asif","2003-4-10","kjg","2023-3-3",678954678,104,3500,"accountant");
INSERT INTO employee VALUES (5,"Ramees","1998-9-9","mkl","2015-11-18",8987646,105,4000,"CEO");

-- (ii)	Display all the records from the above tables

SELECT * FROM department;
SELECT * FROM employee;

-- (iii)	Display the empno and name of all the employees from department no2

SELECT emp_no,emp_name
FROM employee
WHERE dept_no=102;

-- (iv)	Display empno,name,designation,dept no and salary in the descending order of salary

SELECT emp_no,emp_name,designation,dept_no,salary
FROM employee
ORDER BY salary DESC;

-- (v)	Display the empno and name of all employees whose salary is between 2000 and 5000

SELECT emp_no,emp_name
FROM employee
WHERE salary BETWEEN 2000 AND 5000;

-- (vi)	Display all designations without duplicate values.

SELECT DISTINCT designation
FROM employee;

-- (vii)	Display the dept no and total salary of employees of each department.

SELECT dept_no,SUM(salary)
FROM employee
GROUP BY dept_no;

-- (viii)	Change the salary of employees to 25000 whose designation is ‘data entry’

UPDATE employee
SET salary = 25000
WHERE designation = "data entry";

-- (ix)	Change the mobile no of employee named ‘Amjiyad’

UPDATE employee
SET mobile_no=888999
WHERE emp_name="Amjiyad";

-- (x)	Delete all employees whose salaries are equal to Rs.7000

DELETE FROM employee
WHERE salary =7000;

-- (xi)	Select the department that has total salary paid for its employees more than 25000

SELECT dept_no
FROM employee
GROUP BY dept_no
HAVING SUM(salary)>25000;


