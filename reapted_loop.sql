DECLARE
  l_output NUMBER;
BEGIN
  FOR i IN 1..10 LOOP
    SELECT 1  INTO l_output  FROM dual;
    DBMS_OUTPUT.PUT_LINE('Result: ' || l_output);
  END LOOP;
END;

--create a table 

create table  a_table (l_cur date );


DECLARE
-- Store the SELECT query in a cursor
  CURSOR l_cur IS SELECT SYSDATE DT FROM DUAL;  
--Create a variable that will hold each result from the cursor
  l_cur_rec l_cur%ROWTYPE;
BEGIN
  -- Open the Cursor so that we may retrieve results
  OPEN l_cur;  
  LOOP
    -- Get a result from the SELECT query and store it in the variable
    FETCH l_cur INTO l_cur_rec;
    -- EXIT the loop if there are no more results
    EXIT WHEN l_cur%NOTFOUND;
    -- INSERT INTO another table that has the same structure as your results
    INSERT INTO a_table VALUES l_cur_rec;        
  END LOOP;
  -- Close the cursor to release the memory
  CLOSE l_cur;
END;

select * from  a_table