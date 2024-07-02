SQL> declare
  2  emp_first_name employees.first_name%type;
  3  emp_last_name employees.last_name%type;
  4  cursor e_employee is
  5  select first_name, last_name from employees where emp_no >10050;
  6  begin
  7  open e_employee;
  8  loop
  9  fetch e_employee into emp_first_name, emp_last_name;
 10  exit when e_employee%notfound;
 11  dbms_output.put_line(emp_first_name || ' '|| emp_last_name);
 12  end loop;
 13  close e_employee;
 14  end;
 15  /
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
