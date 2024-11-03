

create table brands (category varchar(50), brand_name varchar(50));


insert  all
into brands values ('chocolates', '5-star')
into brands values(NULL, 'dairy milk')
into brands values(NULL, 'perk')
into brands values(NULL, 'eclair')
into brands values('Biscuits', 'Britania')
into brands values(NULL, 'good day')
into brands values(NULL, 'boost')
select * from dual;

select * from brands;

with cte as(
select category, row_number() over(order by  null) as rnum from brands)
select count(category)  over(order by rnum) as count from cte;


-----------------------------------

we need to Find Total Weekend working hours for each employee.

In order to solve this question, we used functions like DATEPART(), DATEDIFF(). You will understand how all these functions works in this video.

Let us first create table
CREATE TABLE emp_tbl (id datetime, empid int)

Insert the records
INSERT INTO emp_tbl VALUES ('2024-01-13 09:25:00', 10),('2024-01-13 19:35:00', 10),('2024-01-16 09:10:00', 10),
('2024-01-16 18:10:00', 10),('2024-02-11 09:07:00', 10),('2024-02-11 19:20:00', 10),('2024-02-17 08:40:00', 17),
('2024-02-17 18:04:00', 17),('2024-03-23 09:20:00', 10),('2024-03-23 18:30:00', 10)


with cte as(
select empid, day(id) as day, datediff(minute,min(id), max(id) /60.0 as working_hours from emp_tb1 where datepart(DW,id) in (1,7) group by empid, day(id))
select empid, round(sum(working_hours),2) as Total_weekendworking_hours from cte 
group by empid

======================================
we need to find the largest value among all the columns.

In order to solve this questions, we used GREATEST() Function. You will understand how GREATEST() function works in this video.

Let us first create input table
create table tbl_maxval (col1 varchar(50), col2 int, col3 int)

Insert the records
insert into tbl_maxval values ('a',10,20),('b',50,30)

select *, greatest(col2, col3) as max from tb1_maxval
select *, case when col2>= col3 then col2 else col3 end as maxval from tb1_maxval

========================================================

We need to Find the percentage variance of sales from previous day.

In order to solve this questions, we used LAG() Function and percentage formula. You will understand how lag function works and how to write percentage variance formula in this video.

Let us first create sales table
create table salesvar_tbl (dt date, sales int)

Insert the records
insert into salesvar_tbl values ('2023-10-03', 10),('2023-10-04', 20),
('2023-10-05', 60),('2023-10-06', 50),('2023-10-07', 10)


with cte as (
select *, lag(sales) over (order by dt) as prevsales from salesvar_tb1),
cte2 as(
select *, coalesce((sales-prevsales)*100/prevesales,0) as percntvar from cte)
select dt, sales, percntvar from cte2 where percntvar >=0

===================================================
we need to find the length of each record in the table.

In order to solve this questions, we used REPLACE() and LEN() Functions. You will understand how all these functions works in this video.

Let us first create input table
create table tbl_cnt (col1 int, col2 varchar(50))

Insert the records
insert into tbl_cnt values (1, 'a,b,c'),(2, 'a,b')

select *, len(replace(col2,',','')) as cnt from tbl_cnt;

=================================================================

we need to find the Department wise highest salary emp name.

In order to solve this questions, we used SQL JOINS, GROUP BY and STRING_AGG() Function. 

Let us create Emp table and insert records
create table emp(empid int, empname varchar(50), salary int, deptid int)
insert into emp values (1,'Nikitha',45000,206),(2,'Ashish',42000,207),(3,'David',40000,206),(4,'Ram',50000,207),(5,'John',35000,208),(6,'Mark',50000,207),(7,'Aravind',39000,208)

Let us create Dept table and insert records
create table dept (deptid int, deptname varchar(50))
insert into dept values (206,'HR'),(207,'IT'),(208,'Finance')

with cte as(
select emp, *, dept.deptname, rank() over(partition by deptname order by salary desc) as rnk 
from emp inner join dept on emp.deptid = dept.deptid) 
select deptname, string_agg(empname,',') as empname from cte where rank = 1
group by deptname





