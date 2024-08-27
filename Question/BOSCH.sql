

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