## Store old data in another table  with  Trigger

## Main table of customers

``
SQL> select * from customers;

CUSTOMERID  CUSTOMERNAME      CONTACT CITY         PINCODE
---------- --------------- ---------- ------------ ------------
         1 Abhimanyu       9123324564 bokaro       827001
         2 Misha            943116864 Delhi        827016
         3 Nisha           9000001243 Dhanbad      82
         4 Aisha           9600212345 Deogarh      860985
         5 Deepak          9934234569 Delhi        422323
         6 Abhimanyu       9845234589 Jamshedpur   549034
         7 Rohan           9709452345 Tata         424523
         8 Ritesh          6256342323 Tilaknager   563432
         9 Ravi            8756452314 Orisa        345678
        10 Suman           9.8766E+11 Gujarat      456734
        11 Anirudh         9203032345 Malad        455612
        ``

### create table oldcustomer as (select * from customers where 1=0);

### create trigger with update main table then store olddata oldcustomers table 

```
create or replace trigger up_customer
-- up_customer is a trigger name 
before update on customers
for each row
begin
insert into oldcustomer values(:old.customerid , :old.customername, :old.contact, :old.city, :old.pincode);
end;
/
``
## change the city of  customer table 

``
SQL> update customers set city = 'Delhi' where customerid =1;

1 row updated.

SQL> select * from customers;

CUSTOMERID CUSTOMERNAME       CONTACT CITY         PINCODE
---------- --------------- ---------- ------------ ------------
         1 Abhimanyu       9123324564 Delhi        827001
         2 Misha            943116864 Delhi        827016
         3 Nisha           9000001243 Dhanbad      82
         4 Aisha           9600212345 Deogarh      860985
         5 Deepak          9934234569 Delhi        422323
         6 Abhimanyu       9845234589 Jamshedpur   549034
         7 Rohan           9709452345 Tata         424523
         8 Ritesh          6256342323 Tilaknager   563432
         9 Ravi            8756452314 Orisa        345678
        10 Suman           9.8766E+11 Gujarat      456734
        11 Anirudh         9203032345 Malad        455612

SQL> select * from oldcustomer;

CUSTOMERID CUSTOMERNAME       CONTACT CITY         PINCODE
---------- --------------- ---------- ------------ ------------
         1 Abhimanyu       9123324564 bokaro       827001
         1 Abhimanyu       9123324564 bokaro       827001
``

