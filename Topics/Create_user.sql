--  show the user

SHOW USER;

-- CRIAÇÃO DE USUÁRIO
CREATE USER

-- Syntax:

CREATE USER "user_name"
IDENTIFIED BY "passwd"
DEFAULT TABLESPACE "default_tablespace_name"
TEMPORARY TABLESPACE "temp_tablespace_name"
ACCOUNT "account_status" [LOCK | UNLOCK]
PROFILE "profile1" -- limites/regras_para_o_usuario
QUOTA [n k|m] ON "tablespace_ame"

-- Example

CREATE USER TEST IDENTIFIED BY 12345 DEFAULT TABLESPACE ABC TEMPORARY TABLESPACE TEMP ACCOUNT UNLOCK PROFILE DEFAULT;

-- show user name of database

SELECT USERNAME from DBA_USERS;

-- ALTER USER;

-- Syntax

ALTER USER 'user_name' [parameter ];

-- Example

ALTER USER TEST IDENTIFIED BY 12345;
ALTER USER TEST ACCOUNT LOCK;

-- DISC or DISCONNECT 

DISC ou DISCONNECT

-- 

CONN ou CONNECT

-- Exemplo
CONN TEST @12345

create role ABC;

Role created.

grant create table  , create session to ABC;

Grant succeeded.

 grant ABC to TEST;

Grant succeeded.

 conn test/12345

 create table emp (id int, name varchar(12), address varchar(12));

set serveroutput on

begin
  dbms_output.put_line('Hello');
  end;
 /


SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS;

SELECT TABLE_NAME FROM USER_TABLES;