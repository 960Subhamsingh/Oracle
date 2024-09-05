 CREATE TABLE dependents (
      dep_id      NUMBER(6),
      first_name  VARCHAR2(20),
      last_name   VARCHAR2(25) CONSTRAINT dep_last_name_nn NOT NULL,
      birthdate   DATE,
      relation    VARCHAR2(25),
      relative_id  NUMBER(6) CONSTRAINT emp_dep_rel_id_fk REFERENCES employees
        (employee_id),
      benefits    CLOB
   )
   /

LOAD DATA
INFILE D:\Project\Oracle\load_data\dependents.dat
INTO TABLE dependents
REPLACE
FIELDS TERMINATED BY ','
(
dep_id,
first_name,
last_name,
birthdate,
relation,
relative_id,
benefits
) 