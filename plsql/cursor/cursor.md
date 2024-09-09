### A cursor contains information on a a select statement
and the rows of data accessed by it.

### Used to fetch and process the rows returned by the SQL statement, one at a time

- cursor Type
 - Implicit Cursors
 - Explicit cursors

```  cursor Attribute

Attribute   Description

 %Found      Its return is True if DML statements like Insert, Delete and update affect at least
            one row or a select into statement returned one or more rows. Otherwiase
            it return FALSE.

 %NOTFound    Its return value is TRUE if DML statements like insert , delete and update
             affect no row, or a select into statement return no rows. Otherwise it returns FALSE. It is a just opposite of %Found.
             
 %isopen      It always returns false for implicit cursors. because the sql cursors is automatically closed  after executing its associated SQL statements.

 %Rowcount      It returns the number of rows affect by DML statement delete  and update or returned
               by a select into statement.

```

```
SQL> declare
  2  RowCount int;
  3  begin
  4  update customer set salary = salary+1000;
  5  if sql%found then
  6  rowcount:= sql%rowcount;
  7  dbms_output.put_line(rowcount);
  8  end if;
  9  end;
 10  /
4

PL/SQL procedure successfully completed.

```


```
declare
c_name customer.CUSTNAME %type;
c_salary customer.salary%type;
cursor c_customer is select  custname,salary from customer;
begin
open c_customer;
loop
fetch c_customer into c_name, c_salary;
exit when c_customer%notfound;
dbms_output.put_line(c_name || ' ' || c_salary);
end loop;
close c_customer;
end;
/

SQL> /
Sam 10000
subham 12000
Pam 7000
Jam 11000

PL/SQL procedure successfully completed.

```