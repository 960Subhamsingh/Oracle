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