create table team (employee_id int, empname varchar(12) , team_id int);

insert into team values(1,'subham',1);
insert into team values(2,'kumar',1);
insert into team values(3,'singh',2);
insert into team values(4,'Mohan',2);
insert into team values(5,''Sohan',3);


select empno, count(empno) as empcount ,
listagg(ename,',') within group (order by ename) as ename from emp
group by empno order by empcount


SELECT employee_id, 
       employee_name, 
       MOD(employee_id, 3) + 1 AS team_id -- This creates 3 teams
FROM employees;