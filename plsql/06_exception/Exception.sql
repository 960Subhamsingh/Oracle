
SET SERVEROUTPUT ON

 begin
    dbms_output.put_line(12/0);
    exception
    when zero_divide then
    dbms_output.put_line('Division by zero');
    end;
    /
Division by zero

PL/SQL procedure successfully completed.

 

DECLARE
  vto VARCHAR2(100) := 'subham kumar bem vindo ao PL/SQL.';
BEGIN
  DBMS_OUTPUT.PUT_LINE(vto);
EXCEPTION
  WHEN OTHERS 
  THEN 
    DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;


-----------------------
  
DECLARE
  Num  NUMBER(11,2) := 2000;
  Num1  NUMBER(11,2) := 5000;
  Num2    NUMBER(11,2);
BEGIN
  Num2 := (Num + Num1) / 2;
  DBMS_OUTPUT.PUT_LINE('Num2 = ' || Num2);
EXCEPTION
  WHEN OTHERS 
  THEN 
    DBMS_OUTPUT.PUT_LINE(' Oracle: ' || SQLCODE || SQLERRM);
END;

