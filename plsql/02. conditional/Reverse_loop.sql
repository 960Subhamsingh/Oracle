set serveroutput on

begin

dbms_output.put_line('This is demo on reverse for loop');

-- iterate 1 to 15  number 
for i in reverse 1..15 loop

dbms_output.put_line('Number is :' || i);

-- close of the loop 
end loop;

end;
