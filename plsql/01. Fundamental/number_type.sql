set serveroutput on

declare 

x number(12);
begin
x:= 123.65;  -- round work 
dbms_output.put_line('The value of x is ' || to_char(x));

end;
