 SET SERVEROUTPUT ON
 
DECLARE
  ename VARCHAR2(14);
  Hiredate DATE;
BEGIN

ename:= ' subham';
Hiredate:= '09-JUN-2012';

dbms_output.put_line('Name = ' || ename);

-- date format is dd-mm-yy

dbms_output.put_line('Hirdate = ' || to_char(Hiredate, ' dd-mm-yy'));

end;
/



 