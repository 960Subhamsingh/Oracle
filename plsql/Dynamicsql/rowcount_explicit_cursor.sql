DECLARE
    TYPE cursor_ref IS REF CURSOR;
    c1           cursor_ref;
    TYPE emp_tab IS
        TABLE OF employees%rowtype;
    rec_tab      emp_tab;
    rows_fetched NUMBER;
BEGIN
    OPEN c1 FOR 'SELECT * FROM employees';

    FETCH c1
    BULK COLLECT INTO rec_tab;
    rows_fetched := c1%rowcount;
    dbms_output.put_line('Number of employees fetched: ' || to_char(rows_fetched));
END;
/