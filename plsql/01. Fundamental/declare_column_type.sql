-- Declaring variables according to the columns of the database tables.


set serveroutput on

 declare
    emp_email employees.email_id%type;
    emp_id employees.employee_id%type:= 101;
    begin
    select email_id into emp_email  from employees where employee_id = emp_id;
    dbms_output.put_line('email = ' || emp_id);
   end;
SQL> /
email = 101

PL/SQL procedure successfully completed.
