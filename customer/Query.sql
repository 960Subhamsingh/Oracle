
select * from customers where city ='Patna';

select * from customers where customerid=31 or city ='Patna' and customername = 'Aditi';



-- display the name and city of customers table with city is 'Patna'
begin
for i in (select * from customers) loop
if(i.city ='Patna') then
dbms_output.put_line('Name : ' || i.customername || ',city :' || i.city );
end if;
end loop
;
end;
/



create or replace trigger updatecustomers
after insert on customers
for each row
begin
update customers set city='patna' where customername= :new.customername;
end;
/

-- drop trigger name of sql databases
drop trigger updatecustomers;

