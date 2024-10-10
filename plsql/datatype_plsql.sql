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
