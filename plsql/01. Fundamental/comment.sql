
declare 
country varchar(12);
begin
--assign value 
country:='INDIA';
-- Display the country name
/*
Display the country name 

country name is India
*/

dbms_output.put_line(' country = ' || country);
end;