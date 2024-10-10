-- Write a program annual income of the emp and find the income tax of the employee table.

-- Output should be first_name,salary,ann_sal and tax.

-- i) If the annsal > 60000 then tax is 10% of income
-- ii) If the annsal > 100000 then tax is Rs 800+16% of income
-- iii) If the annsal > 140000 then tax is Rs 2500+25% of income

select * from employee;

select name
     , salary
     , salary * 12 ann_sal
     , case
           when salary * 12 > 140000 then 2500 + (salary * 12 * 25) / 100
           when salary * 12 > 100000 then  800 + (salary * 12 * 16) / 100
           when salary * 12 >  60000 then salary * 12 * 10 / 100
           else 0
       end as tax
from   employee;

set serveroutput on

begin
    for r in ( select name
     , salary
     , salary * 12 ann_sal
     , case
           when salary * 12 > 140000 then 2500 + (salary * 12 * 25) / 100
           when salary * 12 > 100000 then  800 + (salary * 12 * 16) / 100
           when salary * 12 >  60000 then salary * 12 * 10 / 100
           else 0
       end as tax 
from   employee) loop
    dbms_output.put_line(rpad(r.name,10) || lpad(r.salary,9) || lpad(r.ann_sal,9) || lpad(r.tax,9));
    end loop;
    end;
    
    
    
    
    
DECLARE
        CURSOR income IS
          SELECT first_name,
                 salary,
                 salary * 12 ann_sal
          FROM   employees;
        z       income%ROWTYPE;
        tax     NUMBER(8, 2);
    BEGIN
        OPEN income;

        LOOP
            FETCH income INTO z;

            exit WHEN income%NOTFOUND;

            IF z.ann_sal > 60000 THEN
              tax := z.ann_sal * 10 / 100;
            ELSIF z.ann_sal > 100000 THEN
              tax := 800 + z.ann_sal * 16 / 100;
            ELSIF z.ann_sal > 140000 THEN
              tax := 2500 + z.ann_sal * 25 / 100;
            ELSE
              tax := '';
            END IF;

            dbms_output.Put_line(z.first_name
                                 || '  '
                                 || z.salary
                                 || ' '
                                 ||z.ann_sal
                                 || '  '
                                 || tax);
        END LOOP;

        CLOSE income;
    END; 
    
    
    
    
    DECLARE
    CURSOR income
    IS
        SELECT first_name,
            salary,
            salary*12 ann_sal
        FROM EMPLOYEES;
    z income%rowtype;
    ann_sal NUMBER(8,2);
    tax     NUMBER(8,2);
BEGIN
    OPEN income;
    LOOP
        FETCH income
        INTO z;
        EXIT
    WHEN income%notfound;
        IF ann_sal>60000 THEN
            tax  :=ann_sal*10/100;
        elsif ann_sal>100000 THEN
            tax     :=800+ann_sal*16/100;
        elsif ann_sal>140000 THEN
            tax     :=2500+ann_sal*25/100;
        ELSE
            tax:='';
        END IF;
        dbms_output.put_line(z.first_name || '  ' || z.salary || ' ' ||z.ann_sal|| '  ' || z.tax);
    END LOOP;
    CLOSE income;
END;  