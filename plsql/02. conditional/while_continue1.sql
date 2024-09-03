declare
i number(2):= 1;
begin
while(i<=10) loop
dbms_output.put_line('Number is : ' || i);
i:=i+1;
if(i>5) then
exit;
end if;
end loop;
end;
