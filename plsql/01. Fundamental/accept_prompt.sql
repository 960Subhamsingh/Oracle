-- display a prompt and accept value into a variable.
-- The value will be stored in ENUMBER

SQL> Accept ENUMBER number prompt 'empno :'
empno :7839
SQL> select * from emp where empno = &ENUMBER;
old   1: select * from employee where empno = &ENUMBER
new   1: select * from emp where empno =       7839

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ----------     ----------
 
      7839 KING       PRESIDENT            17-NOV-81       5000       null         10
   
select * from employees;    
        