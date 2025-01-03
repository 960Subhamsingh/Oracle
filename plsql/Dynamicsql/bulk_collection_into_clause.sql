set serverout on

DECLARE
    TYPE empcurtyp IS REF CURSOR;
    TYPE numlist IS
        TABLE OF NUMBER;
    TYPE namelist IS
        TABLE OF VARCHAR2(25);
    emp_cv empcurtyp;
    empids numlist;
    enames namelist;
    sals   numlist;
BEGIN
    OPEN emp_cv FOR 'SELECT employee_id, last_name FROM employees';

    FETCH emp_cv
    BULK COLLECT INTO
        empids,
        enames;
    CLOSE emp_cv;
    EXECUTE IMMEDIATE 'SELECT salary FROM employees'
    BULK COLLECT
    INTO sals;
END;
/