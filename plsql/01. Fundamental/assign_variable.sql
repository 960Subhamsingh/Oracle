set serveroutput on 

declare 
country varchar(12);
begin
--assign value 
country:='INDIA';
dbms_output.put_line('country = ' || country);
end;
