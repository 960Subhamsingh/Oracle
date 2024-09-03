set serveroutput on

begin
dbms_output.put_line('This is demo on for loop');
for i in 1..10 loop
dbms_output.put_line('Number is :' || i);
end loop;
end;

-- print odd number with for loop

begin
for i in 1..100 loop 
if mod(i,2)=0 then
dbms_output.put_line('number : ' || i);
end if; 
end loop; 
end;


--nested loop 

declare

begin
for i in 1..10 loop
for j in 1..10 loop
dbms_output.put_line('Value of i is ' || i);
dbms_output.put_line('Value os j is ' || j);
end loop;
end loop;
end;

-- print 1 to 10 in single line

begin 
for i in 1..100 loop
dbms_output.put(i || ' ' );
end loop;
dbms_output.new_line;
end;

-- create table with for loop

declare
num number(2):=2;
begin
for i in 1..10 loop
dbms_output.put_line(num*i);
end loop;
end;

-- create table with for loop
declare
num number(2):=2;
begin
for i in 1..10 loop
dbms_output.put_line(num ||'*' || i || '=' || num*i);
end loop;
end;

-- create table with for loop reverse form

declare
num number(2):=2;
begin
for i in reverse 1..10 loop
dbms_output.put_line(num*i);
end loop;
end;

-- create table with for loop reverse form
declare
num number(2):=2;
begin
for i in reverse 1..10 loop
dbms_output.put_line(num ||'*' || i || '=' || num*i);
end loop;
end;

-- create multiple  table 
-- create table  1 to 10 
begin
for x in 1..10 loop
for y in 1..10 loop
dbms_output.put_line(x || '*' || y || '=' || x*y);
end loop; 
dbms_output.new_line;
end loop; 
end;

