-- Report generate of customers table
set pagesize 25
set linesize 70
set pause on
set pause 'Press Enter key to continue'
-- set top of table for each page to set report 'Customer Report'
Ttitle center '[ customers Report]'
Btitle '[End of Report]'
select * from customers;
TTitle off 
Btitle off
clear column
set pagesize on
set linesize 80
set pause off

