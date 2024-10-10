 declare
    type namelist is table of varchar(12);
    ename namelist;
    bonus_amt number:= 50;
    sql_stmt varchar(123);
    begin
    sql_stmt:= 'update employees set emp_no= emp_no+:1
 returning last_name into:2';
 EXECUTE IMMEDIATE sql_stmt
 USING bonus_amt
 RETURNING BULK COLLECT INTO ename;
 END;
