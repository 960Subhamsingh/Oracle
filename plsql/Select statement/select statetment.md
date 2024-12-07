Select statements in PLSQL block

SELECT statements are used to retrieve data from a database. You can use them within PL/SQL blocks to fetch data into variables or cursors. Here are the common ways to use SELECT statements in PL/SQL: 

1. Single Row SELECT INTO
You can use a SELECT ... INTO statement to fetch a single row of data into PL/SQL variables.

Example:

DECLARE
    v_employee_name VARCHAR2(100);
    v_employee_salary NUMBER;
BEGIN
    SELECT first_name || ' ' || last_name, salary
    INTO v_employee_name, v_employee_salary
    FROM employees
    WHERE employee_id = 101;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_employee_salary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with that ID.');
END;
/


2. Multiple Rows with Cursors
When you expect multiple rows, you can use explicit or implicit cursors.

Using a Cursor:



DECLARE
    CURSOR emp_cursor IS
        SELECT first_name, last_name
        FROM employees;

    v_employee_name VARCHAR2(100);
BEGIN
    FOR emp_record IN emp_cursor LOOP
        v_employee_name := emp_record.first_name || ' ' || emp_record.last_name;
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);
    END LOOP;
END;
/
3. Using a FOR Loop with a Cursor
You can also simplify the cursor usage by using a FOR loop, which implicitly handles opening and closing the cursor.

Example:


BEGIN
    FOR emp_record IN (SELECT first_name, last_name FROM employees) LOOP
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_record.first_name || ' ' || emp_record.last_name);
    END LOOP;
END;
/


4. **Using SELECT for Aggregation**

You can also use SELECT statements to perform aggregate calculations.

**Example:**

DECLARE
    v_average_salary NUMBER;
BEGIN
    SELECT AVG(salary)
    INTO v_average_salary
    FROM employees;

    DBMS_OUTPUT.PUT_LINE('Average Salary: ' || v_average_salary);
END;
/

5. **Using SELECT with CASE Statement**

You can use a CASE statement within your SELECT query to perform conditional logic.

**Example:**

DECLARE
    v_salary_category VARCHAR2(20);
BEGIN
    SELECT CASE
               WHEN salary < 3000 THEN 'Low'
               WHEN salary BETWEEN 3000 AND 7000 THEN 'Medium'
               ELSE 'High'
           END
    INTO v_salary_category
    FROM employees
    WHERE employee_id = 101;

    DBMS_OUTPUT.PUT_LINE('Salary Category: ' || v_salary_category);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with that ID.');
END;
/

**Summary**

**Single Row:**  Use SELECT INTO to fetch a single row. 

**Multiple Rows:** Use explicit or implicit cursors.

**Aggregation:**  Use SELECT statements for calculations.

**Conditional Logic:**  Utilize CASE in your queries for dynamic results.

These examples demonstrate how versatile SELECT statements can be within PL/SQL blocks for retrieving and manipulating data. If you have any specific scenarios or need further explanations, feel free to ask!