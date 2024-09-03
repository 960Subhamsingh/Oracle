declare
--enter the values by select statement
output number;

begin
-- iterate 1 to 10 number with for loop
for i in 1..10 loop
-- iterate data of i will store in output variable 
select i into output from dual;

-- print the data in selected 

dbms_output.put_line('Result : ' || output);
end loop;
end;
