-- print 1 to 15 number with while loop

declare

i number(2):=1;
begin
dbms_output.put_line('This is demo on while loop');
while(i<=10) loop
dbms_output.put_line('Number is '|| i);
i:=i+1;
end loop;
end;


-- print 1 to 15 odd number with while loop 

declare

i number(2):=1;
begin
dbms_output.put_line('This is demo on while loop');
while(i<=15) loop
dbms_output.put_line('Number is '|| i);
i:=i+2;
end loop;
end;

-- print odd number with while loop and mod function 

declare
num number(10,1):=1;
begin
while (num<20) loop
dbms_output.put_line('The number is : ' || num);
num:= num+1;
if mod(num,2)=0 then
num:= num+1;
end if;
end loop;
end;



-- print  4 less then to 0 
declare
num number(10,1):=0;
begin
while num<4 loop
dbms_output.put_line('value of ' || num);
num:=num+1;
end loop;
end;



