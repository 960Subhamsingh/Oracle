
-- it is a employee table 

create table employee (
Emp_No int , 
Ename varchar(20) , 
job varchar(12) ,
Dept_No int, 
Salary number(7)
);

--describe function are  show the employee table structure

SQL> desc employee;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMP_NO                                             NUMBER(38)
 ENAME                                              VARCHAR2(20)
 JOB                                                VARCHAR2(12)
 DEPT_NO                                            NUMBER(38)
 SALARY                                             NUMBER(7)

-- Add a column experience to the employee table . Experience number null allowed
SQL> alter table employee add experience number;

Table altered.

--- drop a column experience to the employee table.

SQL> alter table employee drop column experience;

Table altered.

--insert atleast five values for each coulmn of employee table.

SQL> insert into employee values(1,'Shushrut', 'Student', 001, 100000);

1 row created.

SQL> insert into employee values(2,'Viren', 'Engineer', 010, 7000);

1 row created.

SQL> insert into employee values (3, 'Sachin', 'Economist', 100, 60000);

1 row created.

SQL> insert into employee values (4, 'Vidhi', 'Journalist', 101, 90000);

1 row created.

SQL> insert into employee values (5,'kumar','CSE','120',45455);

1 row created.

---insert multiple values  with row and column   in one times 

insert all
into employee values (6,'subham','CSE','12',343434)
into employee values (7,'ram','cse','14',2343)
into employee values (8,'sita','Journalist','12',23445)
into employee values (9,'Gita','Journalist','12',34354)
select * from dual;

4 rows created.

--update the dept no to 1 whose salary are greater than 50000

SQL> update employee set dept_no = 1 where salary >50000;

4 rows updated.

--Select the ename from emp table where the empno =1.

SQL> select ename from employee where emp_no = 1;

ENAME
--------------------
Shushrut

-- it is a dept table 

SQL> create table dept (deptno number(3,0) not null , dname varchar(14), LOC varchar(13));

---add emp_no with a alter  function

SQL> alter table dept add emp_no number(6,0);

Table altered.

--this command will modify the values of existing datatype of table  

SQL> alter table dept modify deptno number(3,0);

Table altered.

--- insert atleast five values for each coulmn of dept table.

INSERT INTO Dept VALUES (101, 'CSE', 'Delhi', 222220);
INSERT INTO Dept VALUES (102,'Mech','Noida',23234);
INSERT INTO Dept VALUES (103,'Civil','Delhi',34434);
INSERT INTO Dept VALUES  (104,'Bio Tech','Gujarat',2);
INSERT INTO Dept VALUES (105,'Mechanical','Indore',5);

--show all  row and column of the dept table 

select * from dept;

    DEPTNO DNAME          LOC               EMP_NO
---------- -------------- ------------- ----------
       101 CSE            Delhi             222220
       102 Mech           Noida              23234
       103 Civil          Delhi              34434
       104 Bio Tech       Gujarat                2
       105 Mechanical     Indore                 5

--select all the records have deptno = 101.

SQL> select * from dept where deptno =101;

    DEPTNO DNAME          LOC               EMP_NO
---------- -------------- ------------- ----------
       101 CSE            Delhi             222220

--update the deptno=1 whose dept is CSE

SQL> update dept set deptno =1 where dname = 'CSE';

1 row updated.

-- Truncate the emp table and drop the dept table
SQL> truncate table dept;
SQL> drop table dept;