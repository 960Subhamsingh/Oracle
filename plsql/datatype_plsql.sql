DECLARE
   SUBTYPE name IS char(20);
   SUBTYPE message IS varchar2(50);
   salutation name;
   greetings message;
   counter NUMBER(5,2);
BEGIN
   salutation := 'Reader ';
   greetings := 'Welcome to the PL/SQL';
   counter := 468.5;
   dbms_output.put(' ');
   dbms_output.put_line('Hello ' || salutation || greetings);
   dbms_output.put(' ');
   dbms_output.put_line('Your number is:'|| counter);
END;
/
Hello Reader              Welcome to the PL/SQL
Your number is:468.5

PL/SQL procedure successfully completed.

--------------------------------------------

SQL> declare
  2  x number(3);
  3  y int ;
  4  z char(2);
  5  a varchar(12);
  6  begin
  7  x:= 123.34;
  8  y:= 12;
  9  z:= 'A';
 10  a:= 'subham kumar';
 11  dbms_output.put_line('Data_type ' || to_char(x ));
 12  dbms_output.put_line('Data_type ' || to_char(y));
 13  dbms_output.put_line('Data_type ' || to_char(z ));
 14  dbms_output.put_line('Data_type ' || to_char(a ));
 15  end;
 16  /
Data_type 123
Data_type 12
Data_type A
Data_type subham kumar

PL/SQL procedure successfully completed.