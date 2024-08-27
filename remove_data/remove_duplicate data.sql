-- Requirement: Delete duplicate data from cars table. Duplicate record is identified based on the model and brand name.

--drop table if exists cars;
drop table cars;

--create table of cars
create table cars
(
    id      int,
    model   varchar(50),
    brand   varchar(40),
    color   varchar(30),
    make    int
);

-- insert data of the car table 

insert into cars values (0, 'Aura','Hyundai','Red','2018');
insert into cars values (1, 'Model S', 'Tesla', 'Blue', 2018);
insert into cars values (2, 'EQS', 'Mercedes-Benz', 'Black', 2022);
insert into cars values (3, 'iX', 'BMW', 'Red', 2022);
insert into cars values (4, 'Ioniq 5', 'Hyundai', 'White', 2021);
insert into cars values (5, 'Model S', 'Tesla', 'Silver', 2018);
insert into cars values (6, 'Model 1', 'Tesla', 'Silver', 2018);
insert into cars values (7, 'Creta', 'Hyundai', 'Green', 2021);
insert into cars values (8, 'Ioniq 5', 'Hyundai', 'Green', 2021);

--commit the data for saving

commit;
 

--Display the data ordet by of model and brand

select * from cars  order by model, brand;

--1: Delete data larger than 1

delete from cars where id in (select max(id) from cars having count(1)>1);

--2: Using SELF join

delete from cars
where id in (
select c.id from cars c  join cars c1 on 
c.model= c1.model and c.brand = c1.brand  where c.id<c1.id 
);

--3: Using MIN function.  delete even multiple duplicate records.

delete from cars where id not in (select min(id) from cars group by model , brand);

--4: Using Window function

delete from cars  where id in (
select  row_number() over(partition by model, brand order by id) as rn
                   from cars);
        
        
--5: Using backup table.
--create duplicate table of cars without  data only  for table structure


create table cars_bkp
as
select * from cars where 1=0;

-- check them if any data has beeen inserted 
select * from cars_bkp;

-- insert the cars data in cars_bkp table with use  of select  statement .

insert into cars_bkp
select * from cars
where id in ( select min(id)
              from cars
              group by model, brand);
              
-- delete all row and rocord of the cars table 

truncate table cars;

--insert the row and record with use cars_bkp table

insert into cars ( select * from cars_bkp);

drop table cars_bkp;




