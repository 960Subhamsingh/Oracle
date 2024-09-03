declare
x int:=10;
y int:=2;
z int;
begin
z:= x;
while(x>0) loop
y:= y*x;
x:=x-1;
end loop;
dbms_output.put_line('Factorial of ' || z  || ' is ' || y);
end;



