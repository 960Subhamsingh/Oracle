SET SERVEROUTPUT ON

DECLARE
    N1 NUMBER(11,2) := 1200.00;
    NString CHAR(2) := 'R$';
    Name_StringTaman VARCHAR(100) := 'INDIAN - Rupees';
    --DData DATE := '10-06-2024';
    DDataAtual DATE := SYSDATE;
    Country VARCHAR(100);
BEGIN
    -- assign values
    Country:= 'INDIA';
    DBMS_OUTPUT.PUT_LINE('Númber = ' || N1);
    DBMS_OUTPUT.PUT_LINE('Caracter Name = ' || NString);
    DBMS_OUTPUT.PUT_LINE('Caracter = ' || Name_StringTaman);
    --DBMS_OUTPUT.PUT_LINE('Data = ' || To_char(DData,'dd-mm-yyyy'));
    DBMS_OUTPUT.PUT_LINE(' Current_Data  = ' || DDataAtual);
    DBMS_OUTPUT.PUT_LINE('Country = ' || Country);
END;
/