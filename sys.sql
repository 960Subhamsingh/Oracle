
--find out the total marks of top 2 subject based on marks 
 
 create table student (sname varchar(50), sid varchar(50), marks int);
 
 insert into student values('A','X',75);
 insert into student values('A','Y',75);
 insert into student values('A','Z',80);
 insert into student values('B','X',90);
 insert into student values('B','Y',91);
 insert into student values('B','Z',75);
 
 select * from student;
 
 select sname , sum(marks) as total_marks from
 
 select row_number() over(partition by sname order by marks desc)as rnum from student where rnum < 2