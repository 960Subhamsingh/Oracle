SQL> declare
    emp_first_name employees.first_name%type;
    emp_last_name employees.last_name%type;
    cursor e_employee is
    select first_name, last_name from employees where emp_no >10050;
    begin
    open e_employee;
    loop
    fetch e_employee into emp_first_name, emp_last_name;
   exit when e_employee%notfound;
   dbms_output.put_line(emp_first_name || ' '|| emp_last_name);
   end loop;
   close e_employee;
   end;
  /
  
Hidefumi Caine
Heping Nitsch
Sanjiv Zschoche
Mayumi Schueller
Georgy Dredge
Brendon Bernini
Ebbe Callaway
Berhard McFarlin
Alejandro McAlpine
Breannda Billingsley
Tse Herber
Anoosh Peyn
Gino Leonhardt
Udi Jansch

PL/SQL procedure successfully completed.
