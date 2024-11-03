## What is an anonymous block in PLSQL


An anonymous block in PL/SQL is a block of code that does not have a name and is not stored in the database. It is used to perform a sequence of operations, such as executing SQL statements or performing procedural tasks, without the need to create a stored procedure or function.

**Structure of an Anonymous Block**

An anonymous block typically consists of three main sections:

1. Declaration Section (optional):  

This section is where you declare variables, cursors, and other PL/SQL constructs. It starts with the keyword DECLARE. 

2. Execution Section:  

This is the main part of the block where you write the   procedural code to be executed. It starts with the keyword BEGIN and contains the executable statements.

3. Exception Handling Section (optional):

This section is used to handle exceptions or errors that occur during execution. It starts with the keyword EXCEPTION.

## Example of an Anonymous Block
Here’s a simple example of an anonymous PL/SQL block:


DECLARE  
    v_employee_name VARCHAR2(100);  
BEGIN  
    SELECT first_name || ' ' || last_name INTO v_employee_name   
    FROM employees  
    WHERE employee_id = 101;  

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);  

EXCEPTION  
    WHEN NO_DATA_FOUND THEN   
        DBMS_OUTPUT.PUT_LINE('No  employee found   with that  ID.');    
END;  
 
**Key Points**
 
**No Name:**  Unlike stored procedures or functions, anonymous blocks do not have a name and are executed immediately.

**Temporary:** They exist only during the execution and are not stored in the database.

**Useful for Testing:** Anonymous blocks are often used for quick tests, scripts, or one-time operations.