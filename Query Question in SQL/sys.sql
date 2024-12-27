create table dept (
  deptno number(2) constraint pk_dept primary key,
  dname varchar2(14),
  loc varchar2(13)
);

create table emp (
  empno number(4) constraint pk_emp primary key,
  ename varchar2(10),
  job varchar2(9),
  mgr number(4),
  hiredate date,
  sal number(7,2),
  comm number(7,2),
  deptno number(2) constraint fk_deptno references dept
);