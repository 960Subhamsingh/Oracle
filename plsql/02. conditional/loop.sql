declare
a number(10):=120;
begin
if(a=20) then
dbms_output.put_line('value of a is 20');
elsif(a=40) then
dbms_output.put_line('Value of a is 40');
elsif(a=60) then
dbms_output.put_line('Value of a is 60');
elsif(a=60) then 
dbms_output.put_line('Values od a is 80');
end if;
dbms_output.put_line('Exact value of a is ' || a);
end;

-- grade in marks with if condition

declare
grade char(1):='A';
begin
if(grade='A') then
dbms_output.put_line('Excellent');
elsif(grade='B') then
dbms_output.put_line('Very Good');
elsif(grade='c') then
dbms_output.put_line('good');
elsif(grade='D') then
dbms_output.put_line('Fair');
elsif grade='E' then
dbms_output.put_line('poor');
else
dbms_output.put_line('No Match Grade');
end if;
end;



