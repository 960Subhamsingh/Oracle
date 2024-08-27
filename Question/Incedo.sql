
-- rank of each country  with case state

create table happiness_tbl (ranking int, country varchar(50));

insert all
into happiness_tbl values(1,'Finland')
into happiness_tbl values(2,'Denmark')
into happiness_tbl values(3,'Iceland')
into happiness_tbl values(4,'Israel')
into happiness_tbl values(5,'Netherlands')
into happiness_tbl values(6,'Sweden')
into happiness_tbl values(7,'Norway')
into happiness_tbl values(8,'Switzerland')
into happiness_tbl values(9,'Luxembourg')
into happiness_tbl values(128,'Srilanka')
into happiness_tbl values(126,'India')
select * from dual;

select country, case when country='India' then 1
when country ='Srilanka' then 2
else 3 end as drank
from  happiness_tbl
order by drank , ranking;

create table studnts_tbl (sname varchar(50), marks int)

insert  all
into studnts_tbl values('A', 75)
into studnts_tbl values('B', 30)
into studnts_tbl values('C', 55)
into studnts_tbl values('A', 60)
into studnts_tbl values('D', 91)
into studnts_tbl values('B', 19)
into studnts_tbl values('G', 36)
into studnts_tbl values('S', 65)
into studnts_tbl values('K', 49)
select * from dual;

alter table studnts_tb1 add Grade

select  case when marks >= 80 then 'Exccellent'
when marks >=60 and marks  <80 then 'Good'
when marks >=35 and marks <60 then 'Good'
else 'Poor' end as Grade
from studnts_tbl;

select * from student;

select lag(marks) over(order by marks) from student


