-- Sample data for testing
CREATE TABLE employees (
 employee_id NUMBER,
 employee_name VARCHAR2(100),
 hire_date DATE
);

desc  employees
select * from employees

alter table employees add  hire_date date

update employees set employee_id= 12 , employee_name ='Ram ', email_id = 'sk@gmail.com'  where hire_date ='10-APR-24'
 

INSERT INTO employees (employee_id, employee_name,  email_id, hire_date)
VALUES (1, 'Alice', 'al@gmail.com' , TO_DATE('2024-04-01', 'YYYY-MM-DD'));

INSERT INTO employees (employee_id, employee_name, email_id, hire_date)
VALUES (2, 'Bob','Bob2@gmail.com ', TO_DATE('2024-03-15' , 'YYYY-MM-DD'));

-- Additional test data
INSERT INTO employees (employee_id, employee_name,  email_id ,hire_date)
VALUES (3, 'Charlie','Bo@gmail.com ' , TO_DATE('2024-04-10', 'YYYY-MM-DD'));

-- Create a procedure to retrieve employee details by ID
 