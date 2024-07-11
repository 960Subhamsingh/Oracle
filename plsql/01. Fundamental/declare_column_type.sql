set serveroutput on
1  declare
  2  emp_email employees.email_id%type;
  3  emp_id employees.employee_id%type:= 101;
  4  begin
  5  select email_id into emp_email  from employees where employee_id = emp_id;
  6  dbms_output.put_line('email = ' || emp_id);
  7* end;
SQL> /
email = 101

PL/SQL procedure successfully completed.
