
the NOT NULL constraint is used to indicate that a variable cannot hold a NULL value. This is particularly useful for ensuring that important variables are always initialized with a valid value before they are used in your code.

**Example**

DECLARE
    v_employee_name VARCHAR2(100) NOT NULL; -- Declare a NOT NULL variable
BEGIN
    v_employee_name := 'John Doe'; -- Initialize the variable

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);

    -- Attempting to set it to NULL will raise an error
    -- v_employee_name := NULL; -- This line would cause a compilation error
END;
/


declare
number1 constant number(12,3):=0;
number2  number(10,2):=0;
result number(10,2);
begin
number2:= null;
result:= number1+number2;

dbma_output.put_line('Add the two no' || number1 ||' and ' ||number2 ||' aare:' || result );

end;
/
