-- table name customer
-- columns
-- customerid - customer id number
-- customername - customer name 
-- contactnuber - customer contact number
-- pincode - customer location id pin
create table customers(customerid number, customername varchar2(15), contact number, city varchar(12), pincode varchar(12));

-- modify customer id column of customers 

alter table customers modify customerid number primary key;

desc customers