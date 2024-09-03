declare
name varchar(20);
begin
select ename into name from emp where empno= 7369;
dbms_output.put_line('The first name of the customer  is '  || name);

end;
