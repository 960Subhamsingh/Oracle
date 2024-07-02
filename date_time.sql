---------------------------- timestamp--------------------------
SQL> begin
   dbms_output.put_line(to_timestamp ('2009-09-21 ', 'YYYY-MM-DD'));
    end;
   / 
21-SEP-09 12.00.00.000000000 AM

PL/SQL procedure successfully completed.
---------------------------- timestamp--------------------------
SQL> declare
  2  checkout timestamp(3);
  3  begin
  4  checkout := '10-JUL- 2012 07:23:23.272';
  5  dbms_output.put_line(to_char(checkout));
  6  end;
  7  /
10-JUL-12 07.23.23.272 AM

PL/SQL procedure successfully completed.
----------------------to_date----------------------------------
SQL> begin
    dbms_output.put_line(to_date('31-mar-2024','DD-MON-YYYY'));
    end;
    /

31-MAR-24

PL/SQL procedure successfully completed.
----------------------------INTERVAL---------------------------
SQL> begin
    dbms_output.put_line(INTERVAL '10-2' YEAR TO MONTH);
    end;
    /
+000000010-02

PL/SQL procedure successfully completed.
------------------------------INTERVAL------------------------
SQL> begin
    dbms_output.put_line(INTERVAL '9' MONTH);
    end;
    /
+000000000-09

PL/SQL procedure successfully completed.