-- print 1 to 15 number with basic loop 

declare
i number(2):= 1;
begin
loop
dbms_output.put_line('Number is : ' || i);
i:=i+1;
exit when i=10;
end loop;
end;

-- Print odd number with basic loop

declare
i INTEGER:= 1;
begin
loop
i:=i+2;
dbms_output.put_line('Number is : ' || i);
exit when i>10;
end loop;
end;

-- print even number with  basic loop

 declare
i INTEGER:= 0;
begin
loop
i:=i+2;
dbms_output.put_line('Number is : ' || i);
exit when i=10;
end loop;
end;
