SQL> declare
    emp employees%rowtype;
    begin
    select  * into emp from employees where emp_no =10001;
    dbms_output.put_line('Employee_No ' || emp.emp_no);
    dbms_output.put_line('Employee_Name ' || emp.first_name || '' || emp.last_name);
    dbms_output.put_line('Employee_Hire_date ' || emp.hire_date);
    end;
    /
Employee_No 10001
Employee_Name GeorgiFacello
Employee_Hire_date 26-JUN-86

PL/SQL procedure successfully completed.
