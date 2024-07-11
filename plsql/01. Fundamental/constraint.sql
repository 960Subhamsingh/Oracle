set serveroutput on
declare

-- declare constraint

credit constant number := 500.00;

max_day constant int:= 3445;

begin

dbms_output.put_line('credit =  ' || To_char(credit));
dbms_output.put_line('max_day = ' || to_char(max_day));

end;
