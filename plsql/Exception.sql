SQL> begin
    dbms_output.put_line(12/0);
    exception
    when zero_divide then
    dbms_output.put_line('Division by zero');
    end;
    /
Division by zero

PL/SQL procedure successfully completed.