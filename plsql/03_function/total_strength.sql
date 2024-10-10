--To find the total strength of students in different sections of a school:
create or replace function total_stren RETURN INTEGER AS
total integer :=0;
begin
select sum(strength) into total from section;
return total;
end total_stren;


--To compute the reverse of a number:

 CREATE OR REPLACE FUNCTION reverse_it(x IN INTEGER) RETURN INTEGER AS
   rev INTEGER := 0;
   r 
BEGIN-- Code to reverse the number
 RETURN rev;
 END reverse_it;

-- Recursive function to calculate the factorial of a number:

 FUNCTION factorial(x NUMBER) RETURN INTEGER IS
   f 
BEGIN
   IF x = 0 THEN
      f := 1;
 ELSE
      f := x * factorial(x - 1);
 END IF;
 RETURN f;
 END;-- Example: factorial(5) returns 120

 -- Exception handling in functions:

 FUNCTION sqroot(x INT) RETURN FLOAT AS
   answer FLOAT;
   myexp EXCEPTION;
 BEGIN
   IF x < 0 THEN
      RAISE myexp;
 ELSE
      answer := SQRT(x);
 END IF;
 RETURN answer;
 EXCEPTION
 WHEN myexp THEN
 RETURN x; -- Handling negative input
 END sqroot;

 -- Advantages:

-- Functions allow single calls to the database, improving performance.
 -- They can be used in assignments, Boolean expressions, and SQL statements.

