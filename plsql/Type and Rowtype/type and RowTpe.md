

## Type and RowType in PLSQL Block

In PL/SQL, TYPE and ROWTYPE are constructs used to define data structures that can hold multiple related values. Here’s an overview of both:

1. **TYPE in PL/SQL** 

The TYPE keyword is used to define user-defined data types. These types can be scalar types (like NUMBER, VARCHAR2, etc.) or composite types, such as records and collections.

**Example of User-Defined Type** 

You can create a user-defined object type that encapsulates related attributes.

**Example:** 

CREATE OR REPLACE TYPE employee_type AS OBJECT ( 
    employee_id NUMBER,  
    first_name VARCHAR2(50), 
    last_name VARCHAR2(50),  
    salary NUMBER  
);  
/

2. ROWTYPE in PL/SQL
ROWTYPE is a special type that allows you to define a record that corresponds to a row in a table or the result of a cursor. It is particularly useful for retrieving entire rows of data from tables.

**Using %ROWTYPE**

When declaring a variable with %ROWTYPE, it automatically takes on the structure of the specified table or cursor.

**Example of %ROWTYPE:**

DECLARE
    v_employee employees%ROWTYPE; -- v_employee can hold a complete row from the employees table
BEGIN
    SELECT * INTO v_employee
    FROM employees
    WHERE employee_id = 101;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee.first_name || ' ' || v_employee.last_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_employee.salary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with that ID.');
END;
/
  
**Differences between TYPE and ROWTYPE**

**User-defined TYPE:** 

Created explicitly to define a data structure.
Can be used for more complex data modeling (e.g., encapsulating business logic).
ROWTYPE:

Automatically reflects the structure of a table or cursor.
Typically used for direct row manipulation without needing to define a separate structure.

**Example of Using Both** 

You can combine user-defined types with ROWTYPE for more complex scenarios.

**Example:** 

CREATE OR REPLACE TYPE employee_info AS OBJECT (  
    employee_id NUMBER,  
    full_name VARCHAR2(100),  
    salary NUMBER  
);  
/  
 
DECLARE  
    v_employee employees%ROWTYPE;  
    v_employee_info employee_info;  
BEGIN  
    SELECT * INTO v_employee   
    FROM employees  
    WHERE employee_id = 101;     

    -- Initialize the user-defined type with data from the row  
    v_employee_info := employee_info(v_employee.employee_id, v_employee.first_name || ' ' || v_employee.  last_name, v_employee.salary);  
     
    DBMS_OUTPUT.PUT_LINE('Employee Info: ID=' || v_employee_info.employee_id || ', Name=' || v_employee_info.  full_name || ', Salary=' || v_employee_info.salary);  
EXCEPTION  
    WHEN NO_DATA_FOUND THEN 
        DBMS_OUTPUT.PUT_LINE('No employee found with that ID.');  
END;  
/

**Summary**

**TYPE:** Used to create user-defined types for complex data structures.
**ROWTYPE:** Automatically defines a record structure that corresponds to a database table or cursor.
If you have more questions or need additional examples, feel free to ask!