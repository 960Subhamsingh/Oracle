SET SERVEROUTPUT ON

DECLARE
  look VARCHAR2(20) := 'Block';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Book : ' || look);
   
  DECLARE
    Book2 VARCHAR2(20) := 'Block2';
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Block: ' || Book2);
    DBMS_OUTPUT.PUT_LINE(': ' || Book2);
  END;
  DBMS_OUTPUT.PUT_LINE('Book2: ' || Book2);
 
END;

/