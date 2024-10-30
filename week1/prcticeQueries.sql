--CREATE TABLE Department (
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    DEPTNO INT UNIQUE NOT NULL,
--    DNAME VARCHAR(50),
--    LOC VARCHAR(50)
--);

--INSERT INTO Department (DEPTNO, DNAME, LOC) VALUES
--(10, 'ACCOUNTING', 'NEW YORK'),
--(20, 'RESEARCH', 'DALLAS'),
--(30, 'SALES', 'CHICAGO'),
--(40, 'OPERATIONS', 'BOSTON');

----SELECT * FROM Department;

--CREATE TABLE Employee (
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    EMPNO INT UNIQUE NOT NULL,
--    ENAME VARCHAR(50),
--    JOB VARCHAR(50),
--    MGR INT,
--    HIREDATE DATE,
--    SAL INT,
--    DEPTNO INT,
--    constraint FK_Employee_Department FOREIGN KEY (DEPTNO) REFERENCES Department(DEPTNO)
--);

--INSERT INTO Employee (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) VALUES
--(7369, 'SMITH', 'CLERK', 7698, '2016-12-16', 100, 10),
--(7499, 'ALLEN', 'SALESMAN', 7698, '2023-02-20', 200, 30),
--(7521, 'WARD', 'SALESMAN', 7782, '2023-03-21', 300, 30),
--(7566, 'JONES', 'MANAGER', NULL, '2023-06-30', 500, 40),
--(7654, 'MARTIN', 'SALESMAN', 7782, '2023-08-31', 300, 30),
--(7698, 'BLAKE', 'MANAGER', NULL, '2023-09-20', 700, 40),
--(7782, 'CLARK', 'MANAGER', NULL, '2023-10-21', 700, 40),
--(7788, 'SCOTT', 'ANALYST', 7839, '2023-06-03', 900, 20),
--(7839, 'KING', 'PRESIDENT', NULL, '2023-03-04', 1000, 10),
--(7844, 'TURNER', 'SALESMAN', 7698, '2023-07-06', 300, 30),
--(7876, 'ADAMS', 'CLERK', 7782, '2023-04-01', 100, 10),
--(7900, 'JAMES', 'CLERK', 7698, '2023-11-04', 200, 10),
--(7902, 'FORD', 'ANALYST', 7839, '2023-12-31', 800, 20),
--(7934, 'MILLER', 'CLERK', 7782, '2023-05-05', 400, 10);

--SELECT * FROM Employee;

--select * from employee;

--select distinct Job from Employee;

--select * from employee order by sal asc

--select * from employee order by deptno asc, job desc;

--select * from Employee where Job = 'MANAGER';

--SELECT EMPNO, ENAME, JOB, HIREDATE, DATEDIFF(YEAR, HIREDATE, GETDATE()) AS Exp
--FROM Employee
--WHERE JOB = 'MANAGER';

--SELECT EMPNO, ENAME, JOB, HIREDATE
--FROM Employee
--WHERE HIREDATE > '1981-06-30'
--ORDER BY JOB ASC;

--SELECT EMPNO, ENAME, JOB, HIREDATE
--FROM Employee
--WHERE JOB IN ('CLERK', 'ANALYST')
--ORDER BY JOB DESC;

--SELECT EMPNO, ENAME, JOB, DEPTNO FROM Employee WHERE DEPTNO = 10 OR DEPTNO = 20;

--SELECT EMPNO, ENAME, JOB, DEPTNO, SAL * 12 AS Annual_Salary 
--FROM Employee 
--WHERE SAL * 12 BETWEEN 5000 AND 14000;

--SELECT ENAME 
--FROM Employee 
--WHERE ENAME LIKE 'S%' AND LEN(ENAME) = 5;

--SELECT e.*, d.DNAME, d.LOC 
--FROM Employee e 
--JOIN Department d ON e.DEPTNO = d.DEPTNO 
--WHERE d.DNAME IN ('ACCOUNTING', 'RESEARCH') 
--ORDER BY e.DEPTNO ASC;

--DROP DATABASE IF EXISTS org;
--CREATE DATABASE org;
--USE org;

--CREATE TABLE employees (
--    id INT NOT NULL IDENTITY(1,1),
--    first_name VARCHAR(255) NOT NULL,
--    last_name VARCHAR(255),
--    dept VARCHAR(255),
--    email VARCHAR(255) NOT NULL,
--    phone VARCHAR(50),
--    hire_date DATE,
--    salary DECIMAL(10, 2),
--    PRIMARY KEY (id)
--);

--INSERT INTO employees (first_name, last_name, dept, email, phone, hire_date, salary) VALUES
--('Nancy', 'Davolio', 'Sales Representative', 'nancy.davolio@example.com', '555-0123', '2023-01-15', 5000.00),
--('Andrew', 'Fuller', 'Vice President, Sales', 'andrew.fuller@example.com', '555-0456', '2022-03-10', 8000.00),
--('Janet', 'Leverling', 'Sales Representative', 'janet.leverling@example.com', '555-0789', '2023-05-20', 5000.00);

--select * from employees;

--ALTER TABLE employees ADD CONSTRAINT chk_salary CHECK (salary >= 3000);

--ALTER TABLE employees ADD CONSTRAINT uq_email UNIQUE (email);

--SELECT LOWER(first_name), LOWER(last_name) AS full_name FROM employees;
--SELECT UPPER(first_name), UPPER(last_name) AS full_name FROM employees;

--SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;

--SELECT first_name, last_name, email, SUBSTRING(email, CHARINDEX('@', email) + 1, LEN(email)) AS domain  
--FROM employees;

--SELECT first_name, last_name, hire_date, 
--       YEAR(hire_date) AS hire_year, 
--       MONTH(hire_date) AS hire_month, 
--       DAY(hire_date) AS hire_day 
--FROM employees;

--SELECT first_name, last_name, DATEDIFF(DAY, hire_date, GETDATE()) AS tenure_days FROM employees;

--SELECT dept, COUNT(*) AS employee_count FROM employees GROUP BY dept;

--SELECT COUNT(*) AS employee_count, AVG(salary) AS average_salary, SUM(salary) AS total_salary 
--FROM employees;

--CREATE TABLE customers (
--    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--    employee_id INT,
--    company_name VARCHAR(255) NOT NULL,
--    address VARCHAR(255),
--    city VARCHAR(255),
--    region VARCHAR(255),
--    country VARCHAR(255),
--    phone VARCHAR(255),
--    FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE SET NULL
--);

--INSERT INTO customers (employee_id, company_name, address, city, region, country, phone) VALUES
--(1, 'Rancho Grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, 'Argentina', '(1) 123-5555'),
--(2, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', NULL, 'Germany', '030-0074321'),
--(3, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'Canada', '(604) 555-4729'),
--(1, 'Familia Arquibaldo', 'Rua Orós, 92', 'São Paulo', 'SP', 'Brazil', '(11) 555-9857'),
--(2, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'São Paulo', 'SP', 'Brazil', '(11) 555-1189'),
--(3, 'Laughing Bacchus Wine Cellars', '1900 Oak St.', 'Vancouver', 'BC', 'Canada', '(604) 555-3392'),
--(1, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', 'USA', '(509) 555-7969'),
--(2, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, 'Germany', '0241-039123'),
--(3, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, 'Germany', '089-0877310'),
--(1, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, 'France', '40.67.88.88');

--select * from customers;

--SELECT e.first_name, e.last_name, c.company_name
--FROM employees e
--JOIN customers c ON e.id = c.employee_id;

--SELECT e.id, e.first_name, e.last_name, c.company_name
--FROM employees e
--LEFT JOIN customers c ON e.id = c.employee_id;

--SELECT e.id, e.first_name, e.last_name, COUNT(c.id) AS customer_count
--FROM employees e
--LEFT JOIN customers c ON e.id = c.employee_id
--GROUP BY e.id, e.first_name, e.last_name;


--IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Library')
--BEGIN
--    DROP DATABASE Library;
--END;
--CREATE DATABASE Library;
--USE Library;

--CREATE TABLE books (
--    book_id INT IDENTITY(1,1) PRIMARY KEY,
--    title VARCHAR(255) NOT NULL,
--    author VARCHAR(255),
--    genre VARCHAR(100),
--    published_year INT,
--    isbn VARCHAR(20) NOT NULL UNIQUE,
--    price DECIMAL(10, 2)
--);

--INSERT INTO books (title, author, genre, published_year, isbn, price) VALUES
--('Pride and Prejudice', 'Jane Austen', 'Fiction', 1813, '1112223334445', 12.99),
--('1984', 'George Orwell', 'Dystopian', 1949, '2223334445556', 15.99),
--('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, '3334445556667', 10.99);

--select * from books;

--ALTER TABLE books ADD CONSTRAINT chk_price CHECK (price >= 5.00);

--ALTER TABLE books ADD CONSTRAINT uq_isbn UNIQUE (isbn);

--SELECT UPPER(title) AS title_upper FROM books;
--SELECT CONCAT(title, ' by ', author) AS full_details FROM books;
--SELECT title, SUBSTRING(genre, 1, 3) AS genre_prefix FROM books;

--SELECT title, published_year, YEAR(GETDATE()) - published_year AS book_age 
--FROM books;
--SELECT title, DATEDIFF(YEAR, DATEFROMPARTS(published_year, 1, 1), GETDATE()) AS age_in_years 
--FROM books;

--SELECT genre, COUNT(*) AS book_count FROM books 
--GROUP BY genre;
--SELECT COUNT(*) AS book_count, AVG(price) AS average_price, SUM(price) AS total_price 
--FROM books;

