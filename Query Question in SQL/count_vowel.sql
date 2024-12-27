SELECT ename,
       LENGTH(ename) - LENGTH(REPLACE(LOWER(ename), 'a', '')) -
       LENGTH(REPLACE(LOWER(ename), 'e', '')) -
       LENGTH(REPLACE(LOWER(ename), 'i', '')) -
       LENGTH(REPLACE(LOWER(ename), 'o', '')) -
       LENGTH(REPLACE(LOWER(ename), 'u', '')) AS vowel_count
FROM emp;




