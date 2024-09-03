declare

-- i is a variable 
-- i is a decalre one value
i number(2):= 1;
begin
dbms_output.put_line('This is demo on while loop');
-- i is iterate less then 10 to 1
while(i<=10) loop

dbms_output.put_line('Number is:' || i);
--i is initilize 
i:=i+1;
-- i is break then greater then equal to 5 
exit when(i>5);
end loop;
end;
