set serveroutput on
DECLARE
    emp_sal VARCHAR2(100);
BEGIN
    SELECT sal+120 into emp_sal  FROM emp
    WHERE empno = 7521;

    DBMS_OUTPUT.PUT_LINE(' Add two number in emp table ' || emp_sal);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with that ID.');
END;
/

select * from emp;


-- second example

declare
a int:=12;
b int:= 15;
c int;
begin
dbms_output.put_line('Add The Two number '|| a ||' and '|| b ||' are : '|| (a+b));
end;
/
