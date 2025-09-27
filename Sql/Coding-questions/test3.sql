
/*
You want **subquery coding questions** for SQL.
### Example Tables

**EMPLOYEE**

| EMP_ID | EMP_NAME | DEPT_ID | SALARY | MANAGER_ID |
| ------ | -------- | ------- | ------ | ---------- |
| 101    | Ram      | 10      | 50000  | 105        |
| 102    | Priya    | 20      | 60000  | 106        |
| 103    | Kiran    | 10      | 45000  | 105        |
| 104    | Meena    | 30      | 70000  | 107        |
| 105    | Arjun    | 10      | 80000  | NULL       |
| 106    | Rani     | 20      | 90000  | NULL       |
| 107    | Ravi     | 30      | 85000  | NULL       |

**DEPARTMENT** 

| DEPT_ID | DEPT_NAME | LOCATION  |
| ------- | --------- | --------- |
| 10      | HR        | Chennai   |
| 20      | IT        | Bangalore |
| 30      | Finance   | Delhi     |


*/

-- ### Subquery Coding Questions

-- 1. **Find the employees who earn more than the average salary of all employees.**
SELECT * FROM EMPLOYEE WHERE SALARY > ( SELECT AVG(SALARY) FROM EMPLOYEE );
-- 2. **Find the employee(s) who have the highest salary in each department.**
SELECT DEPT_ID, MAX(SALARY) FROM EMPLOYEE GROUP BY DEPT_ID;
-- 3. **List the employees who work in the same department as ‘Ram’.**
SELECT * FROM EMPLOYEE WHERE DEPT_ID IN ( SELECT DEPT_ID FROM EMPLOYEE WHERE EMP_NAME = 'Ram' );
-- 4. **Display the department name where the minimum salary is greater than 45000.**
SELECT DEPT_NAME FROM DEPARTMENT WHERE DEPT_ID IN ( SELECT DEPT_ID FROM EMPLOYEE WHERE (SELECT MIN(SALARY) FROM EMPLOYEE ) > 45000) -- DOUBT
-- 5. **Find the employees who report to the same manager as ‘Priya’.**
SELECT * FROM EMPLOYEE WHERE MANAGER_ID IN ( SELECT EMP_ID FROM EMPLOYEE WHERE EMP_NAME IN 'Priya');
-- 6. **Retrieve the employee(s) whose salary is the second highest.**
SELECT DISTINCT E.SALARY FROM (SELECT DENSE_RANK() OVER(ORDER BY SALARY DESC ) AS max, EMPLOYEE.* FROM EMPLOYEE ) AS E WHERE E.max = 2;
-- 7. **List the departments that have more than 2 employees.**
SELECT * FROM EMPLOYEE WHERE DEPT_ID IN ( SELECT DEPT_ID FROM EMPLOYEE GROUP BY DEPT_ID HAVING COUNT(DEPT_ID) > 2);
-- 8. **Find the employee(s) who earn less than the average salary of their own department.**
SELECT * FROM EMPLOYEE WHERE SALARY > ANY (SELECT AVG(SALARY) FROM EMPLOYEE GROUP BY DEPT_ID ) ORDER BY DEPT_ID, SALARY;
-- 9. **Display the employees who do not belong to any department listed in the DEPARTMENT table.**
SELECT * FROM EMPLOYEE WHERE NOT EXISTS (SELECT 1 FROM DEPARTMENT WHERE EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID );
-- 10. **Find the employees who work in a department located in Bangalore.**
SELECT * FROM EMPLOYEE WHERE DEPT_ID IN ( SELECT DEPT_ID FROM DEPARTMENT WHERE LOCATION IN 'Bangalore');
-- ---
