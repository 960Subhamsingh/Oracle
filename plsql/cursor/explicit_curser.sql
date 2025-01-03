DECLARE
  sal_limit NUMBER ( 4 ) := 0 ;
  my_ename employees.firstname%TYPE ;
  my_sal employees.salary%TYPE ;
  CURSOR my_cursor
  IS
    SELECT first_name , salary FROM employees WHERE salary > sal_limit ;
BEGIN
  sal_limit := 1200 ;
  OPEN my_cursor INTO my_ename ,
  my_sal ;
  LOOP
    FETCH my_cursor INTO my_ename , my_sal ;
    EXIT
  WHEN my_cursor%NOTFOUND ;
    -nothing returned
    INSERT INTO new_t VALUES
      ( my_ename , my_sal
      ) ;
  END LOOP ;
  CLOSE my_cursor ;
  COMMIT ;
END ;
/

select * from new_t;

create table new_t (my_name varchar(12), my_sal int);