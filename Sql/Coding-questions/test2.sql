-- **coding questions with `GROUP BY` and `HAVING` clauses**. **beginner → intermediate → advanced** SQL practice problems.

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


-- ### 📌 Beginner Level

-- 1. Write a query to count the number of employees in each department.
SELECT dept_id, count(*) from employees group by dept_id;
-- 2. Find the total salary paid to employees in each department.
SELECT dept_id, SUM(SALARY) FROM EMPLOYEES GROUP BY DEPT_ID;
-- 3. Show the number of students in each class.
SELECT CLASS, COUNT(*) FROM students GROUP BY CLASS;
-- 4. Get the average marks of students grouped by subject.
SELECT subject, AVG(MARK) FROM students GROUP BY subject;
-- 5. List departments where the number of employees is more than 5. (Use `HAVING`)
SELECT DEPT_ID, COUNT(*) FROM EMPLOYEES GROUP BY DEPT_ID HAVING COUNT(*) > 5;

-- ---

-- ### 📌 Intermediate Level

-- 6. Show the total sales per product.
SELECT product_id, SUM(amount) FROM SALES GROUP BY product_id;
-- 7. Find the maximum salary in each department.
SELECT DEPT_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY DEPT_ID;
-- 8. List customers who placed more than 3 orders.
SELECT customer_id, COUNT(*) FROM SALES GROUP BY customer_id HAVING COUNT(*) > 3;
-- 9. Get the average salary of employees for each job role, but only include roles with an average salary greater than 50,000.
SELECT job_role, AVG(SALARY) FROM EMPLOYEES GROUP BY job_role HAVING AVG(SALARY) > 50000; 
-- 10. Show the number of employees hired each year.
SELECT hire_date, COUNT(*) FROM EMPLOYEES GROUP BY hire_date;

-- ---

-- ### 📌 Advanced Level

-- 11. Find departments where the **sum of salaries is greater than 100,000**.
SELECT DEPT_ID, SUM(SALARY) FROM EMPLOYEES GROUP BY DEPT_ID HAVING SUM(SALARY) > 100000;
-- 12. List products where the **average sales amount is less than 500**.
SELECT product_id, AVG(amount) FROM SALES GROUP BY product_id HAVING AVG(amount) < 500;
-- 13. Show each branch’s total revenue and filter branches with **at least 2 different products sold**.

-- 14. Find customers who have spent **more than the average total spending of all customers**.
SELECT customer_id, SUM(amount) FROM SALES GROUP BY customer_id HAVING SUM(amount) > AVG(amount);
-- 15. Get the **top 3 departments** with the highest total salary expense (use `GROUP BY` + `ORDER BY` + `LIMIT`).
SELECT DEPT_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY DEPT_ID ORDER BY MAX(SALARY) DESC LIMIT 3;


