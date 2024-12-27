create table emps(empno number,ename varchar2(100));



WITH ds AS (

    SELECT empno,

           upper(ename) ename,

           length(ename)     l

    FROM emp)

SELECT * FROM(
        SELECT empno,ename,c,COUNT(*) cnt

        FROM(
                SELECT empno, ename,substr(ename, r, 1) c
                FROM
                    ds,
                    LATERAL ( SELECT ROWNUM r

                              FROM dual

                              CONNECT BY level <= l)

            )

        WHERE

            c IN ('A','E','I','O','U')

        GROUP BY empno,ename,c

    ) PIVOT ( MAX ( cnt ) FOR c IN ( 'A','E','I','O','U' ));