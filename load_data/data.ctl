create table good(volumne int, Hire_date date, name varchar(12));

drop table good;

select count(*) from good;


LOAD DATA
INFILE 'E:plsql\data_cleaning-main\data_cleaning-main\GOOG.csv'
INTO TABLE good
FIELDS TERMINATED BY ','
(volumne,Hire_date,name)


-- open file directory in cmd then write :- sqlltr system/tiger control=D:/Project/Oracle/load_data/data.ctl 