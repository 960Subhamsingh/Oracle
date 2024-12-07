
## Types of data


there are several types of data that you can work with. These can be broadly categorized into scalar types, composite types, reference types, and LOB (Large Object) types. Here’s a breakdown of these categories:

1. Scalar Types
Scalar types represent single values. The main scalar types include:

NUMBER: For numeric values (integers, decimals).
VARCHAR2: For variable-length character strings (up to 32,767 bytes).
CHAR: For fixed-length character strings.
DATE: For date and time values.
TIMESTAMP: For date and time with fractional seconds.
BOOLEAN: For true/false values (available in PL/SQL).
BINARY_FLOAT and BINARY_DOUBLE: For floating-point numbers.

2. Composite Types
Composite types can hold multiple values and are further divided into:

Records: A collection of related fields, which can have different data types.

plsql
Copy code
TYPE employee_record IS RECORD (
    employee_id NUMBER,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50)
);
Tables (Nested Tables): A collection of elements of the same data type. You can create a nested table type.

plsql
Copy code
TYPE number_table IS TABLE OF NUMBER;
Varrays: A variable-sized array that holds a fixed number of elements of the same data type.

plsql
Copy code
TYPE string_array IS VARRAY(10) OF VARCHAR2(100);
3. Reference Types
Reference types point to a location in memory and can be used to reference other types:

REF: Used to reference objects defined by user-defined types.
Object Types: Custom data types that encapsulate data and methods.
4. LOB Types (Large Objects)
LOB types are designed for storing large amounts of data:

BLOB: Binary Large Object for storing binary data (e.g., images, multimedia).
CLOB: Character Large Object for storing large text data.
NCLOB: National Character Large Object for large text data in national character sets.
BFILE: A locator for external binary files stored outside the database.
Example of Using Different Data Types
Here’s a simple PL/SQL block that demonstrates the use of various data types:

plsql
Copy code
DECLARE
    v_employee_id NUMBER := 101;
    v_employee_name VARCHAR2(100) := 'John Doe';
    v_hire_date DATE := SYSDATE;
    v_salary NUMBER := 60000;
    
    TYPE employee_record IS RECORD (
        employee_id NUMBER,
        employee_name VARCHAR2(100),
        hire_date DATE
    );

    v_employee_info employee_record;
BEGIN
    v_employee_info.employee_id := v_employee_id;
    v_employee_info.employee_name := v_employee_name;
    v_employee_info.hire_date := v_hire_date;

    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_info.employee_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_info.employee_name);
    DBMS_OUTPUT.PUT_LINE('Hire Date: ' || v_employee_info.hire_date);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/
Summary
Scalar Types: Represent single values (e.g., NUMBER, VARCHAR2).
Composite Types: Collections of related values (e.g., records, tables).
Reference Types: Point to other types (e.g., REF).
LOB Types: For storing large data objects (e.g., BLOB, CLOB).
If you have further questions or need more examples, feel free to ask!



