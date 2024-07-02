create table test(count int , str varchar(20));

insert into test values(4,'R');
insert into test values(3,'S');
insert into test values(5,'G');
insert into test values(6,'O');
insert into test values(8,'K');

--repeat the string column with the given count column
 select rpad(str, count, str) from test
 

 select rpad('+',10, '+') from dual;

 select replace( rpad('+',10,'+'), '+', 'abc') from dual;
 
 