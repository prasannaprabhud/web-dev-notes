/*

**sample tables** and then the **SQL code** (both **MySQL** and **SQL\*Plus** style) so you can practice `GROUP BY` and `HAVING`.

---

## 📌 Example Table Structures

### 1. `employees`

| emp\_id | emp\_name | dept\_id | job\_role | salary | hire\_date |
| ------- | --------- | -------- | --------- | ------ | ---------- |
| 1       | Arjun     | 10       | Manager   | 80000  | 2020-01-10 |
| 2       | Priya     | 20       | Developer | 60000  | 2021-03-15 |
| 3       | Ravi      | 10       | Developer | 55000  | 2019-06-20 |
| 4       | Meena     | 30       | HR        | 45000  | 2022-02-01 |
| 5       | Karthik   | 20       | Developer | 62000  | 2020-09-12 |
| 6       | Divya     | 10       | Tester    | 40000  | 2021-11-05 |
| 7       | Suresh    | 20       | Manager   | 75000  | 2018-05-18 |

---

### 2. `sales`

| sale\_id | product\_id | customer\_id | amount | sale\_date |
| -------- | ----------- | ------------ | ------ | ---------- |
| 1        | 101         | C001         | 500    | 2023-01-05 |
| 2        | 102         | C002         | 300    | 2023-01-10 |
| 3        | 101         | C003         | 700    | 2023-02-15 |
| 4        | 103         | C001         | 200    | 2023-03-20 |
| 5        | 101         | C002         | 800    | 2023-03-25 |
| 6        | 102         | C003         | 400    | 2023-04-05 |
| 7        | 104         | C004         | 1000   | 2023-04-18 |


*/

-- ------------------------------------

-- ## 📌 Table Creation Code

-- ### MySQL

-- ```sql
-- -- Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES
(1, 'Arjun', 10, 'Manager', 80000, '2020-01-10'),
(2, 'Priya', 20, 'Developer', 60000, '2021-03-15'),
(3, 'Ravi', 10, 'Developer', 55000, '2019-06-20'),
(4, 'Meena', 30, 'HR', 45000, '2022-02-01'),
(5, 'Karthik', 20, 'Developer', 62000, '2020-09-12'),
(6, 'Divya', 10, 'Tester', 40000, '2021-11-05'),
(7, 'Suresh', 20, 'Manager', 75000, '2018-05-18');

-- Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_id VARCHAR(10),
    amount DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO sales VALUES
(1, 101, 'C001', 500, '2023-01-05'),
(2, 102, 'C002', 300, '2023-01-10'),
(3, 101, 'C003', 700, '2023-02-15'),
(4, 103, 'C001', 200, '2023-03-20'),
(5, 101, 'C002', 800, '2023-03-25'),
(6, 102, 'C003', 400, '2023-04-05'),
(7, 104, 'C004', 1000, '2023-04-18');


-- ------------------------------------


-- ### SQL\*Plus (Oracle style)

-- ```sql
-- Employees Table
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    dept_id NUMBER,
    job_role VARCHAR2(50),
    salary NUMBER(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES (1, 'Arjun', 10, 'Manager', 80000, TO_DATE('2020-01-10','YYYY-MM-DD'));
INSERT INTO employees VALUES (2, 'Priya', 20, 'Developer', 60000, TO_DATE('2021-03-15','YYYY-MM-DD'));
INSERT INTO employees VALUES (3, 'Ravi', 10, 'Developer', 55000, TO_DATE('2019-06-20','YYYY-MM-DD'));
INSERT INTO employees VALUES (4, 'Meena', 30, 'HR', 45000, TO_DATE('2022-02-01','YYYY-MM-DD'));
INSERT INTO employees VALUES (5, 'Karthik', 20, 'Developer', 62000, TO_DATE('2020-09-12','YYYY-MM-DD'));
INSERT INTO employees VALUES (6, 'Divya', 10, 'Tester', 40000, TO_DATE('2021-11-05','YYYY-MM-DD'));
INSERT INTO employees VALUES (7, 'Suresh', 20, 'Manager', 75000, TO_DATE('2018-05-18','YYYY-MM-DD'));

-- Sales Table
CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    product_id NUMBER,
    customer_id VARCHAR2(10),
    amount NUMBER(10,2),
    sale_date DATE
);

INSERT INTO sales VALUES (1, 101, 'C001', 500, TO_DATE('2023-01-05','YYYY-MM-DD'));
INSERT INTO sales VALUES (2, 102, 'C002', 300, TO_DATE('2023-01-10','YYYY-MM-DD'));
INSERT INTO sales VALUES (3, 101, 'C003', 700, TO_DATE('2023-02-15','YYYY-MM-DD'));
INSERT INTO sales VALUES (4, 103, 'C001', 200, TO_DATE('2023-03-20','YYYY-MM-DD'));
INSERT INTO sales VALUES (5, 101, 'C002', 800, TO_DATE('2023-03-25','YYYY-MM-DD'));
INSERT INTO sales VALUES (6, 102, 'C003', 400, TO_DATE('2023-04-05','YYYY-MM-DD'));
INSERT INTO sales VALUES (7, 104, 'C004', 1000, TO_DATE('2023-04-18','YYYY-MM-DD'));
