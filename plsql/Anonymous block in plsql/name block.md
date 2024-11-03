what is name block in plsql
ChatGPT said:
ChatGPT
In PL/SQL, a named block refers to a stored program unit that has a specific name and can be stored in the database for future execution. Named blocks can be procedures, functions, packages, or triggers. Here’s a brief overview of each:

1. Procedure
A procedure is a named block that performs a specific task. It may take parameters and can be called by other PL/SQL code or SQL statements.

Example:

plsql
Copy code
CREATE OR REPLACE PROCEDURE get_employee_name (p_employee_id IN NUMBER) IS
    v_employee_name VARCHAR2(100);
BEGIN
    SELECT first_name || ' ' || last_name INTO v_employee_name
    FROM employees
    WHERE employee_id = p_employee_id;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with that ID.');
END get_employee_name;
/
2. Function
A function is similar to a procedure but is designed to return a value. It can also take parameters.

Example:

plsql
Copy code
CREATE OR REPLACE FUNCTION get_employee_salary (p_employee_id IN NUMBER) RETURN NUMBER IS
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    RETURN v_salary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END get_employee_salary;
/
3. Package
A package is a collection of related procedures, functions, variables, and other constructs grouped together. It can contain a specification (public interface) and a body (implementation).

Example:

plsql
Copy code
CREATE OR REPLACE PACKAGE employee_pkg IS
    PROCEDURE get_employee_name (p_employee_id IN NUMBER);
    FUNCTION get_employee_salary (p_employee_id IN NUMBER) RETURN NUMBER;
END employee_pkg;
/
4. Trigger
A trigger is a named block that automatically executes in response to specific events on a table, such as INSERT, UPDATE, or DELETE.

Example:

plsql
Copy code
CREATE OR REPLACE TRIGGER employee_salary_check
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
BEGIN
    IF :NEW.salary < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Salary cannot be negative');
    END IF;
END;
/
Key Differences from Anonymous Blocks
Storage: Named blocks are stored in the database and can be reused, while anonymous blocks are transient and exist only during execution.
Accessibility: Named blocks can be called from other programs, while anonymous blocks cannot be called directly.
If you have any specific questions or need further clarification, let me know!