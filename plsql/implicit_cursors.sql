/*
The %TYPE attribute is used to declare variables according to the already declared variable 
or database column. It is used when you are declaring an individual variable, not a record. 
The data type and precision of the variable declared using %TYPE attribute is the same as that
 of the column that is referred from a given table.
This is particularly useful when declaring variables that will hold database values. 
*/

--syntax
--<var_name> <tab_name>.<column_name>%TYPE;  

SQL> declare
--declare a variable e_wemployee that has the same data type as column gender of the  employees table.
    e_employee employees.gender%type;
    begin
    select gender into e_employee from employees where emp_no = 10155;
    dbms_output.put_line('number rows : ' || sql%rowcount);
    end;
    /
number rows : 1

PL/SQL procedure successfully completed.



