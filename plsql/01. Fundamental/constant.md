
A constant is a variable whose value cannot be changed after it is initialized. 
Constants are useful when you want to define a value that should remain fixed
 throughout the execution of a block of code or program.



## Declaring a Constant

declare a constant in PL/SQL using the CONSTANT keyword in the variable declaration section.
Here’s the basic syntax: 

constant_name CONSTANT data_type := initial_value;

DECLARE  
    v_pi CONSTANT NUMBER := 3.14159;  
    -- Declare a constant  for Pi  v_radius NUMBER := 5;  
    v_area NUMBER;   
BEGIN  
    -- Attempt to modify the   constant will result in an  error  
    -- v_pi := 3.14; -- This line  would cause a compilation error  

    v_area := v_pi * v_radius * v_radius; -- Calculate area of a circle
    DBMS_OUTPUT.PUT_LINE('Area of the circle: ' || v_area);
END;
/

**8Key Points about Constants**

**Immutable:**  Once a constant is assigned a value, you cannot change it. Any attempt to modify a constant will result in a compilation error.  

**Initialization:**  Constants must be initialized at the time of declaration. You cannot declare a constant without assigning it a value.

**Scope:**  The scope of a constant is the same as that of a regular variable, meaning it can be declared at various levels (inside a block, procedure, or package).  

**Usage:**  Constants improve code readability and maintainability, as they make it clear that certain values should not change throughout the execution of the program.

**Type:**  Like regular variables, constants can be of any PL/SQL data type, including scalar types, records, collections, and user-defined types.


DECLARE
    v_max_attempts CONSTANT   INTEGER := 3;  
    v_current_attempts INTEGER := 0;    
BEGIN 
    WHILE v_current_attempts < v_max_attempts LOOP  
        -- Simulate login attempt logic  
        v_current_attempts :=  v_current_attempts + 1; 
        DBMS_OUTPUT.PUT_LINE ('Attempt ' ||  v_current_attempts); 
        
        IF v_current_attempts = v_max_attempts THEN
            DBMS_OUTPUT.PUT_LINE ('Maximum login  attempts reached.'); 
        END IF; 
    END LOOP; 
END; 
/


declare

-- declare constraint

credit constant number := 500.00;

max_day constant int:= 3445;

begin

dbms_output.put_line('credit =  ' || To_char(credit));
dbms_output.put_line('max_day = ' || to_char(max_day));

end;
