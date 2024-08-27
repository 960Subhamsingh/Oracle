SQL questions recently asked in Motocorp interview.
1. We need to mask first 12 digits of card number.
2. Need to select employee names with same salary.

SQL> create table cards(card_number int);
SQL> insert into cards values(1234567812345678);
SQL> insert into cards values(2345678923456789);
SQL> insert into cards values(3456789034567890);

SQL> CREATE TABLE Employee (employee_id INT,ename VARCHAR(50),salary INT);

SQL> insert into employee values(4, 'Diana', 70000);
SQL> insert into employee values(6, 'Frank', 80000);
SQL> insert into employee values (8, 'Henry', 90000);


----------
--I am going to show you how you can join on Null values in SQL.

 CREATE TABLE product_price (
  pid INT NULL,
  p_price INT NULL);
  
  CREATE TABLE product_name (
  pid INT NULL,
  p_name VARCHAR(30)  NULL);



INSERT INTO product_name VALUES (1,'Apple');
INSERT INTO product_name VALUES (2,'Banana');
INSERT INTO product_name VALUES (3,'Mangoes');
INSERT INTO product_name VALUES (4,'Orange');
INSERT INTO product_name VALUES (NULL,'Kiwi');

INSERT INTO product_price VALUES (1,100);
INSERT INTO product_price VALUES (2,50);
INSERT INTO product_price VALUES (3,70);
INSERT INTO product_price  VALUES (4,60);
INSERT INTO product_price VALUES (NULL,140);
INSERT INTO product_price  VALUES (NULL,160);

select  pn.pid, pn.p_name, pp.p_price from product_name pn inner join product_price pp on pn.pid = pp.pid or coalesce(pn.pid, 100)=coalesce(pp.pid,100);

select * from product_name inner join product_price on product_name.pid = product_price.pid;

-- count how many duplicate id in the table 

select  count(employee_id) as maxid from employees where employee_id in(
select employee_id from  employees group by employee_id  having count(*)>1);

-- count many time re-rigister in employee 
select employee_name, count(employee_id) as maxid from employees where employee_id in(
select employee_id from  employees group by employee_id  having count(*)>1)group by employee_name;

select * from employees;

-- count witch is the highest marks in each student
select sname, row_number() over(partition by sname order by marks) rnum from student;



create table tablea (empid int, empname varchar(50), salary int)
create table tableb (empid int, empname varchar(50), salary int)

insert into tablea values(1,'AA',1000);
insert into tablea values(2,'BB',300);
insert into tableb values(2,'BB',400);
insert into tableb values(3,'CC',100);

with cte as (
select * from tablea 
union 
select * from tableb)
select empid, empname, min(salary) from cte group by empid, empname;

desc  detail
select order_id,CATEGORY,SUB_CATEGORY,  lag(profit,1,0) over(order by order_id)
as lagsales from detail ;


select order_id, Amount,Category, case when category = 'Clothing' then 1
when category='Electronics' then 2
else 3 end as derivedrank
from detail order by derivedrank, order_id