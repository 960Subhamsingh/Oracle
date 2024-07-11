-- 0. Drop table INSTRUCTOR in case it already exists  

--1. Create table INSTRUCTOR

CREATE TABLE INSTRUCTOR
  (ins_id INTEGER PRIMARY KEY NOT NULL, 
   lastname VARCHAR(15) NOT NULL, 
   firstname VARCHAR(15) NOT NULL, 
   city VARCHAR(15), 
   country CHAR(2)
  );

--2. Insert single row for 

--3. Insert the two rows for Raul and Hima

  insert all
 into instructor values (1,'subham','kumar','Toronto','CA')
 into instructor values (2,'kumar','singh','Toronto','CA')
 select * from dual;
 Select all rows in the table

--4. Select firstname, lastname and country where city is Toronto

FIRST_NAME      LAST_NAME       CO
--------------- --------------- --
subham          kumar           CA
kumar           singh           CA

--5. Change the city for  Toronto  to  Bhopal.

update instructor set city = 'Bhopal' where city = 'Toronto';

2 rows updated.

--6. Delete the row for  subham

 delete from instructor where first_name = 'subham';

1 row deleted.

--7. Retrieve all rows from the table

 select * from instructor;

        ID FIRST_NAME      LAST_NAME       CITY            CO
---------- --------------- --------------- --------------- --
         2 kumar           singh           Bhopal          CA


--8. Retrieve all employees whose address is in Patna.

select * from employees where address = 'PATNA'

    EMP_ID    F_NAME          L_NAME          SSN       B_DATE    S ADDRESS                        JOB_ID        SALARY MANAGER_I DEP_ID
--------- --------------- --------------- --------- --------- - ------------------------------ --------- ---------- --------- ---------
E1008     Bharath         Gupta           123413    01-DEC-19 M PATNA                          660            65000 30003     7


--9. Retrieve all employees whose  born during the 1996.

SQL> select * from employees where to_char(B_date,'yyyy') = '1996'  ;

EMP_ID    F_NAME          L_NAME          SSN       B_DATE    S ADDRESS                        JOB_ID        SALARY MANAGER_I DEP_ID
--------- --------------- --------------- --------- --------- - ------------------------------ --------- ---------- --------- ---------
E101      Subham          Kumar           123456    21-SEP-96 M bangalore                      100           100000 30001     2


--10. Retrieve all employees  whose salary is between 60000 and 70000.

SQL> select * from employees where salary between 60000 and 70000;

EMP_ID    F_NAME          L_NAME          SSN       B_DATE    S ADDRESS                        JOB_ID        SALARY MANAGER_I DEP_ID
--------- --------------- --------------- --------- --------- - ------------------------------ --------- ---------- --------- ---------
E1004     Santosh         Kumar           123459    12-AUG-16 M Chennai                        400            60000 30002     5
E1005     Aman            kumar           123410    21-JUN-18 M Chennai                        500            70000 30001     2
E1007     Moni            kumar           123412    16-JUN-19 F DELHI                          650            65000 30003     7
E1008     Bharath         Gupta           123413    01-DEC-19 M PATNA                          660            65000 30003     7
E1009     Sita            Kumari          123414    09-DEC-21 F BHOPAL                         234            70000 30003     7
E1010     Soni            kumar           123415    12-NOV-22 F Mumbai                         220            70000 30002     5

6 rows selected.

 --------String Pattern 

 --11. Retrieve all employees whose address is in Chennai.

SQL> select  EMP_ID  ,F_NAME ,L_NAME  from employees where address like '%Chennai%';

EMP_ID    F_NAME          L_NAME
--------- --------------- ---------------
E1002     suman           kumar
E102      suman           kumar
E1004     Santosh         Kumar
E1005     Aman            kumar

--12. Retrieve all employees whose  born during the  2012

 select * from employees where to_char(B_date,'yyyy') = '2012'  ;

EMP_ID    F_NAME          L_NAME          SSN       B_DATE    S ADDRESS                        JOB_ID        SALARY MANAGER_I DEP_ID
--------- --------------- --------------- --------- --------- - ------------------------------ --------- ---------- --------- ---------
E1003     Raj             Kumar           123458    12-SEP-12 M tamil nadu                     300            50000 3002      5

--13. Retrieve all employees  in department 5 whose salary is between 60000 and 70000.

