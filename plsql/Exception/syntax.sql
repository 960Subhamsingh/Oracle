/* A syntax error in PL/SQL (Procedural Language/Structured Query Language) typically occurs when there is an issue with 
the structure or formatting of your PL/SQL code. Here are some common causes and how to resolve them: 

1. Missing or Extra Semicolon (;)
Each PL/SQL statement must end with a semicolon. If you forget to put a semicolon or 
if you put one in the wrong place,
you'll encounter a syntax error.

*/

BEGIN
   DBMS_OUTPUT.PUT_LINE('Hello');
   -- missing semicolon below
   DBMS_OUTPUT.PUT_LINE('World') 
END;

 -- Fix: Add the semicolon after each statement:
 
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hello');
   DBMS_OUTPUT.PUT_LINE('World');
END;

-- 2. Incorrect Declaration of Variables
-- Variables in PL/SQL must be declared before they are used. Make sure you declare variables in the DECLARE section before using them.

BEGIN
   v_name VARCHAR2(50); -- declaration missing
   v_name := 'John';
   DBMS_OUTPUT.PUT_LINE(v_name);
END;

-- Fix: Declare the variable in the DECLARE section.

DECLARE
   v_name VARCHAR2(50);
BEGIN
   v_name := 'John';
   DBMS_OUTPUT.PUT_LINE(v_name);
END;

-- 3. Incorrect Use of SQL Keywords
-- Ensure that SQL keywords like SELECT, INSERT, UPDATE, etc., are properly used in PL/SQL blocks.

BEGIN
   SELECT * FROM employees INTO v_name;
END;

-- Fix: Make sure you handle the SELECT properly, especially when selecting multiple values or into a cursor.

DECLARE
   v_name VARCHAR2(50);
BEGIN
   SELECT employee_name INTO v_name FROM employees WHERE employee_id = 1;
   DBMS_OUTPUT.PUT_LINE(v_name);
END;

-- 4. Incorrect Cursor or Loop Syntax
-- If you're using cursors or loops, ensure that the syntax is correct.


DECLARE
   CURSOR c_emp IS SELECT employee_name FROM employees;
BEGIN
   FOR emp IN c_emp LOOP
       DBMS_OUTPUT.PUT_LINE(emp.employee_name);
   END LOOP
END;

-- Fix: Add a semicolon at the end of the END LOOP or END statement:
 
DECLARE
   CURSOR c_emp IS SELECT employee_name FROM employees;
BEGIN
   FOR emp IN c_emp LOOP
       DBMS_OUTPUT.PUT_LINE(emp.employee_name);
   END LOOP;
END;

-- 5. Incorrect Data Types or Mismatched Parentheses
/*
Make sure that you are using the correct data types, especially when passing 
values or comparing them. Ensure parentheses are matched and used correctly. 
*/

BEGIN
   IF (v_age > 18 THEN -- Missing closing parenthesis
       DBMS_OUTPUT.PUT_LINE('Adult');
   END IF;
END;

-- Fix: Add the closing parenthesis.

BEGIN
   IF (v_age > 18) THEN
       DBMS_OUTPUT.PUT_LINE('Adult');
   END IF;
END;

-- 6. Improper Table Structure or Column Names
--- If the error pertains to a table, column, or field, make sure that:
/*
The table exists in the database.
The column names are correctly spelled and used.
Data types match the table definitions.
*/

BEGIN
   UPDATE employees SET salary = 5000 WHERE emp_id = 100;
END;

-- If emp_id is not the correct column name, you may get a syntax error. Check the column names in your table.

-- 7. Incorrect PL/SQL Block Structure
-- A PL/SQL block typically consists of the following structure:


DECLARE
   -- Declarations (optional)
BEGIN
   -- Executable statements
EXCEPTION
   -- Exception handling (optional)
END;

-- Ensure that your PL/SQL block includes the DECLARE, BEGIN, EXCEPTION, and END; keywords in the correct order, where needed.

-- 8. Error with Reserved Words
-- Ensure you are not using Oracle reserved keywords as identifiers (e.g., TABLE, SELECT, etc.) in your variable or table names.

 
CREATE TABLE my_table (
   id INT,
   name VARCHAR(100),
); -- trailing comma error

-- Fix: Remove the trailing comma.
  
CREATE TABLE my_table (
   id INT,
   name VARCHAR(100)
);
Inserting into a table:

 
INSERT INTO my_table (id, name) VALUES (1, 'Alice', 'ExtraValue'); -- Too many values

-- Fix: Match the number of values with the number of columns.

INSERT INTO my_table (id, name) VALUES (1, 'Alice');

Debugging a Syntax Error
Step 1: Look at the error message carefully; it often indicates where the error is located.
Step 2: Check each PL/SQL statement individually and ensure the syntax matches Oracle's rules.
Let me know if you need more specific help with a PL/SQL block or error message!