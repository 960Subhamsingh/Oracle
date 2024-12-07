load data
infile 'E:\plsql\data_cleaning-main\data_cleaning-main\club_member_info\csv\club_member_info.csv'
truncate 
into table club_member_info
fields terminated by ','
(full_name,
age,
maritial_status,
email,
phone,
full_address,
job_title,
membership_date)

 
