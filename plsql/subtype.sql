DECLARE 
   SUBTYPE name IS char(20); 
   SUBTYPE message IS varchar2(100); 
   sname name; 
   greetings message; 
BEGIN 
   sname := 'Subham Kumar '; 
   greetings := 'Welcome to the  PL/SQL World '; 
   dbms_output.put_line('Hello ' || sname || greetings); 
END;