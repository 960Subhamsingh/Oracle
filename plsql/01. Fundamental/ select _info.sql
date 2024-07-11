SET SERVEROUTPUT ON
 
DECLARE
  bonus NUMBER(8,2);
  emp_id NUMBER(6) := 7369;
 
BEGIN
  SELECT sal * 0.10 INTO bonus
  FROM emp
  WHERE empno = emp_id;
 
  DBMS_OUTPUT.PUT_LINE('Bonus = ' || bonus);
 
END;
 
/


Bonus = 80

PL/SQL procedure successfully completed.
