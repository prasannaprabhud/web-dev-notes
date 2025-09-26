-- Perfect ✅ Here’s a set of **complicated SQL questions** (no answers, only questions for practice):

-- ---

/* 

**example table structures (without records)** that you can use to practice the complicated SQL questions I gave earlier.

---

### **EMPLOYEES Table**

```sql
CREATE TABLE EMPLOYEES (
    EMP_ID        INT PRIMARY KEY,
    EMP_NAME      VARCHAR(50),
    DEPT_ID       INT,
    MANAGER_ID    INT,
    SALARY        DECIMAL(10,2),
    HIRE_DATE     DATE
);
```

---

### **DEPARTMENTS Table**

```sql
CREATE TABLE DEPARTMENTS (
    DEPT_ID     INT PRIMARY KEY,
    DEPT_NAME   VARCHAR(50),
    LOCATION    VARCHAR(50)
);
```

---

### **CUSTOMERS Table**

```sql
CREATE TABLE CUSTOMERS (
    CUST_ID      INT PRIMARY KEY,
    CUST_NAME    VARCHAR(50),
    CITY         VARCHAR(50)
);
```

---

### **ORDERS Table**

```sql
CREATE TABLE ORDERS (
    ORDER_ID     INT PRIMARY KEY,
    CUST_ID      INT,
    ORDER_DATE   DATE,
    TOTAL_AMOUNT DECIMAL(10,2),
    FOREIGN KEY (CUST_ID) REFERENCES CUSTOMERS(CUST_ID)
);
```
*/


-- ### **Joins & Subqueries**

-- 1. Write a query to find the names of employees who earn more than the **average salary** of all employees in their department.
SELECT * FROM EMP WHERE SAL > ANY ( SELECT AVG(SAL) FROM EMP GROUP BY DEPTNO ) ORDER BY DEPTNO;
-- 2. Retrieve the list of customers who have placed **orders in every month** of the current year.
SELECT CUST_NAME FROM CUSTOMERS WHERE EXISTS (SELECT )
-- 3. Find the employees who **do not have any subordinates** (no one reports to them).


/*

---

### **PRODUCTS Table**

```sql
CREATE TABLE PRODUCTS (
    PROD_ID      INT PRIMARY KEY,
    PROD_NAME    VARCHAR(50),
    SUPPLIER_ID  INT,
    PRICE        DECIMAL(10,2)
);
```

---

### **SUPPLIERS Table**

```sql
CREATE TABLE SUPPLIERS (
    SUPPLIER_ID   INT PRIMARY KEY,
    SUPPLIER_NAME VARCHAR(50),
    CITY          VARCHAR(50)
);
```

---

### **ENROLLMENTS Table**

```sql
CREATE TABLE ENROLLMENTS (
    STUDENT_ID  INT,
    COURSE_ID   INT,
    ENROLL_DATE DATE,
    PRIMARY KEY (STUDENT_ID, COURSE_ID)
);
```

---

### **COURSES Table**

```sql
CREATE TABLE COURSES (
    COURSE_ID    INT PRIMARY KEY,
    COURSE_NAME  VARCHAR(50),
    DEPT_ID      INT
);
```

---

⚡ With these tables, you can test queries about:

* Employees & Managers
* Departments & Salaries
* Customers & Orders
* Products & Suppliers
* Students & Courses

Do you want me to **map each question to the correct table(s)** so you know which tables to use for practice?



*/


-- ---

-- ### **Aggregations & Grouping**

-- 4. Write a query to display departments where the **second highest salary** is greater than **10,000**.

-- 5. Find the product that has the **maximum total sales amount** in each region.

-- 6. Retrieve the list of suppliers who supply **more than 3 different products**.

-- ---

-- ### **Window Functions**

-- 7. For each employee, display their salary and their **rank within their department** based on salary.

-- 8. Find the **top 3 earning employees** in each department.

-- 9. Write a query to calculate the **running total of sales** for each customer, ordered by order date.

-- ---

-- ### **Existence & Nested Queries**

-- 10. Write a query to find students who have enrolled in **all the courses** offered by the department.

-- 11. Retrieve the list of employees who earn **more than their manager**.

-- 12. Find customers who placed an order **only once** in the entire database.

-- ---

-- Do you want me to prepare these in **SQL*Plus (Oracle style)** or in **MySQL table format** so you can directly run and test them?

