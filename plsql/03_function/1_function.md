### sum to number with plsql function

```
SQL> create or replace function ssum(num1 int , num2 int ) return number
   is
    begin
    return num1+num2;
    end;
```

```
SQL> select ssum(12,45) from dual;

SSUM(12,45)
-----------
         57
```

### sum of two nuber with calling function 

```
SQL> begin
    dbms_output.put_line('sum of two number : ' || ssum(12,56));
    end;
  
sum of two number : 68

PL/SQL procedure successfully completed.

```