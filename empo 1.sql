CREATE TABLE empo(
emp_id INT PRIMARY KEY,
fname VARCHAR(100) NOT NULL,
lname VARCHAR(100) NOT NULL,
emial VARCHAR(100) NOT NULL UNIQUE,
dept VARCHAR(100),
salary DECIMAL(10,2) DEFAULT 30000.00,
hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);
INSERT INTO empo (emp_id, fname, lname, emial, dept, salary, hire_date)
VALUES
(1, 'Raj', 'Sharma', 'raj.sharma@example.com', 'IT', 50000.00, '2020-01-15'),
(2, 'Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00, '2019-03-22'),
(3, 'Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000.00, '2021-06-01'),
(4, 'Suman', 'Patel', 'suman.patel@example.com', 'Finance', 60000.00, '2018-07-30'),
(5, 'Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00, '2020-11-10'),
(6, 'Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00, '2020-09-25'),
(7, 'Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000.00, '2019-05-18'),
(8, 'Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000.00, '2021-02-14'),
(9, 'Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00, '2018-12-03'),
(10, 'Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000.00, '2020-04-19');

SELECT * FROM EMPO

-- RELATIONAL AND LOGICAL  0R / AND
SELECT * FROM EMPO
WHERE DEPT = 'HR' OR DEPT = 'IT'

-- DEPT IT AND SALARY MORE THAN 50K 
SELECT * FROM EMPO
WHERE DEPT = 'IT' AND SALARY >= 50000.00

-- DEPT IT AND SALARY MORE LESS 50K 
SELECT * FROM EMPO
WHERE DEPT = 'IT' AND SALARY < 50000.00

-- FIND EMP WHOSE SALARY IS MORE THAN 65000
SELECT * FROM EMPO 
WHERE SALARY > 55000;

-- Retrieve employees hired after January 1, 2020
SELECT * FROM EMPO
WHERE HIRE_DATE > '2020-01-01';

-- List employees from the Marketing department with salary between 50,000 and 60,000:
SELECT * FROM EMPO 
WHERE DEPT = 'Marketing' AND SALARY BETWEEN 50000 AND 60000;

-- Count the number of employees in each department:
SELECT DEPT, COUNT(*)
FROM EMPO 
GROUP BY DEPT;

-- Find the employee with the highest salary
SELECT * FROM EMPO 
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPO );

SELECT MAX(SALARY) FROM EMPO

-- Find employees whose last name starts with 'S':
SELECT * FROM EMPO 
WHERE LNAME LIKE '%a'

-- Calculate the average salary in the IT department:
SELECT AVG(SALARY) FROM EMPO 
WHERE dept = 'IT'

-- Show employees ordered by hire_date descending (most recent first):
SELECT * FROM EMPO 
ORDER BY hire_date DESC;

-- Select employees who have salary NOT between 45000 and 55000
SELECT * FROM EMPO 
WHERE SALARY NOT BETWEEN  45000 AND 55000

-- Find employees with name containing 'a' (case insensitive):
SELECT * FROM EMPO 
WHERE FNAME LIKE '%a' 

-- Retrieve employees with salary greater than the average salary of the company:
SELECT * FROM EMPO 
WHERE SALARY > (SELECT AVG(SALARY)FROM EMPO )