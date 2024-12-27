/*
Error reporting generally refers to the process of capturing, handling, and 
reporting errors that occur during the execution of SQL statements, 
PL/SQL blocks, or applications. Oracle provides several ways to handle errors
and exceptions, both in SQL and PL/SQL. Below are key components related
to error reporting in Oracle:
*/

-- 1. SQLERRM
/*
SQLERRM is a built-in function in Oracle that returns the error message
associated with the most recent exception.

It can be used to capture and report error messages when an
exception is raised in PL/SQL.
*/


BEGIN
   -- some erroneous SQL operation
   SELECT * FROM non_existing_table;
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

-- 2. PRAGMA EXCEPTION_INIT
/*
PRAGMA EXCEPTION_INIT is used to associate an exception with an Oracle error code.
It allows you to define specific exceptions for certain Oracle error numbers.
This can be useful for creating custom exception handlers for specific errors.
*/  

DECLARE
   e_duplicate_key EXCEPTION;
   PRAGMA EXCEPTION_INIT(e_duplicate_key, -1);  -- Error code for "duplicate value"
BEGIN
   -- some SQL that could raise an error
EXCEPTION
   WHEN e_duplicate_key THEN
      DBMS_OUTPUT.PUT_LINE('Duplicate key error occurred!');
END;

-- 3. Exception Handling in PL/SQL
/*
Oracle provides structured exception handling in PL/SQL using the EXCEPTION 
block, where you can catch specific exceptions (like NO_DATA_FOUND, 
TOO_MANY_ROWS, ZERO_DIVIDE) or use the generic OTHERS exception.
*/
 
BEGIN
   -- some SQL operation
   SELECT * INTO v_value FROM my_table WHERE id = 10;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('No data found for the specified ID.');
   WHEN TOO_MANY_ROWS THEN
      DBMS_OUTPUT.PUT_LINE('Query returned too many rows.');
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;

-- 4. DBMS_OUTPUT

/*
DBMS_OUTPUT is a package used in PL/SQL for displaying output messages. 
It is often used for debugging or error reporting during development.
To use DBMS_OUTPUT, you need to enable it first in tools like SQL*Plus or 
Oracle SQL Developer using the SET SERVEROUTPUT ON command.
*/ 

BEGIN
   -- simulate some SQL operation
   SELECT * FROM non_existing_table;
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

-- 5. DBMS_UTILITY.FORMAT_ERROR_STACK
/*
Oracle also provides DBMS_UTILITY.FORMAT_ERROR_STACK to retrieve the full error
stack for deeper error analysis. This can be helpful in tracing the sequence of
errors that led to a failure.
*/
 
BEGIN
   -- some operation that raises an exception
   SELECT * FROM non_existing_table;
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error Stack: ' || DBMS_UTILITY.FORMAT_ERROR_STACK);
END;

-- 6. Logging Errors with DBMS_LOG
/*
Oracle provides a utility package called DBMS_LOG to log errors and messages.
This package can be used to log errors and other events in your applications.
*/
-- 7. Raising Custom Exceptions
/*
You can create and raise your own exceptions in PL/SQL using the
RAISE statement, which can be useful for reporting custom errors.
*/
 
DECLARE
   e_invalid_operation EXCEPTION;
BEGIN
   RAISE e_invalid_operation;
EXCEPTION
   WHEN e_invalid_operation THEN
      DBMS_OUTPUT.PUT_LINE('Custom exception raised!');
END;

-- 8. Error Reporting in SQL Queries
/*
While SQL itself doesn’t have a built-in error reporting mechanism like PL/SQL,
you can still capture errors in SQL*Plus or Oracle SQL Developer using the 
SQLCODE and SQLERRM functions to capture the error code and message after e
xecuting a statement.
*/
 
SELECT * FROM non_existing_table;

WHENEVER SQLERROR EXIT SQL.SQLCODE;

/*
In conclusion, error reporting in Oracle can be handled using various techniques
depending on your needs, from simple exception handling with EXCEPTION blocks
in PL/SQL to advanced features like DBMS_UTILITY.FORMAT_ERROR_STACK for tracing errors.
*/