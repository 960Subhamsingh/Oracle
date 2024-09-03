set serveroutput on

declare
a number:= 112;
begin
if(a<50) then
dbms_output.put_line('a is less than 50');
else
dbms_output.put_line(' a is not less then 50');
end if;
dbms_output,put_line('values of a is ' || a);
end;

-- print 1 to 10 with if condititon

declare 
i int:=1;
begin
loop
if(i>10) then 
exit;
end if;
dbms_output.put_line('Number i is ' || i);
i:=i+1; 
end loop;
end;

-- nested if condition 

declare
i number(10):=12;
j number(12):=120;
begin
if(i>50) then
if(j>55) then
dbms_output.put_line('j is greater then 55' );
end if;
end if;
dbms_output.put_line('i is greater then 50');
end;


declare
i number(8):=0;
begin
loop
exit when i>100;
dbms_output.put_line('Number is :' || i);
i:= i+1;
end loop;
end;
