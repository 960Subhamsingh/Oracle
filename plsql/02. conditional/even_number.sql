set serveroutput on 
-- print the even number of 1 to 100
begin

for i in 1..100 loop

if mod(i,2)=0 then

dbms_output.put_line('Even number' || i);

end if;
end loop;
end;


set serveroutput on 
-- print the even number of 1 to 100 on reverse form
begin

for i in reverse 1..100 loop

if mod(i,2)=0 then

dbms_output.put_line('Even number' || i);

end if;
end loop;
end;



-- print the odd number of 1 to 100

begin

for i in 1..100 loop

if mod(i,2)=1 then

dbms_output.put_line('Even number' || i);

end if;
end loop;
end;


