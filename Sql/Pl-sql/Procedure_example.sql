
CREATE TABLE employees (
  emp_id NUMBER PRIMARY KEY,
  emp_name VARCHAR2(50),
  salary NUMBER
);

INSERT INTO employees VALUES (1, 'Ravi', 30000);
INSERT INTO employees VALUES (2, 'Kumar', 40000);
COMMIT;


CREATE OR REPLACE PROCEDURE increase_salary (
  p_emp_id IN NUMBER,
  p_percent IN NUMBER
)
IS
BEGIN
  UPDATE employees
  SET salary = salary + (salary * p_percent / 100)
  WHERE emp_id = p_emp_id;

  DBMS_OUTPUT.PUT_LINE('Salary increased successfully.');
END;
/

SET SERVEROUTPUT ON;
EXEC increase_salary(1, 10);

SELECT * FROM employees;

