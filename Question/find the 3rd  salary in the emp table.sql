 select distinct salary from employee e1 where 3= (
    select count(distinct salary) from employee e2 where e1.salary <= e2.salary );

-- second method 
    
select distinct salary from (
    select t.*, dense_rank() over (
            order by salary desc ) as rnk
    from employee t
    ) t
where rnk = 3;


-- method 

SELECT DISTINCT NTH_VALUE(salary, 4) OVER () FROM employee;