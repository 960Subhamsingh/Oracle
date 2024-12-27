create table emp_sal_log(empno number, update_log varchar2(1000));



select to_char(hiredate,'dd/mm/yyyy') as hiredate from emp where emp.hiredate>date'1987-02-01' ;

drop trigger trig_upd_sal;


create or replace trigger trig_upd_sal
before update of sal on emp
for each row
declare

max_sal number:=10000;
begin

if :new.sal<max_sal then
insert into emp_sal_log values(:new.empno,'Salary Updates Successfully:' || '
old sal = ' || :old.sal||', new sal=" ||:new.sal);
else
:new.sal:= :old.sal, 
insert into emp_sal_log values(:new.empno, 'Salary cannot be more than' || max_sal);
end if;
end;
/
