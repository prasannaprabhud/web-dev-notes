
CREATE TABLE employees (
  emp_id NUMBER PRIMARY KEY,
  emp_name VARCHAR2(50),
  salary NUMBER
);

INSERT INTO employees VALUES (1, 'Ravi', 30000);
COMMIT;


CREATE OR REPLACE FUNCTION increase_salary_fn (
  p_emp_id IN NUMBER,
  p_percent IN NUMBER
)
RETURN NUMBER
IS
  v_new_salary NUMBER;
BEGIN
  UPDATE employees
  SET salary = salary + (salary * p_percent / 100)
  WHERE emp_id = p_emp_id
  RETURNING salary INTO v_new_salary;

  DBMS_OUTPUT.PUT_LINE('Salary updated successfully.');

  RETURN v_new_salary;  -- <== Function returns this value
END;
/

SET SERVEROUTPUT ON;
DECLARE
  v_result NUMBER;
BEGIN
  v_result := increase_salary_fn(1, 10);
  DBMS_OUTPUT.PUT_LINE('New salary is: ' || v_result);
END;
/

