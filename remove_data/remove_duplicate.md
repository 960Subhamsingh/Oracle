

# column name of Fruit table

- Fruit_id 
- Fruit_name 
- Color 

#  create table fruits
```
CREATE TABLE fruits (
        fruit_id   int primary key ,
        fruit_name VARCHAR2(100),
        color VARCHAR2(20)
);
```

# Insert Row data of Fruit Table

```
INSERT INTO fruits(fruit_name,color) VALUES('Apple','Red');
INSERT INTO fruits(fruit_name,color) VALUES('Apple','Red');
INSERT INTO fruits(fruit_name,color) VALUES('Orange','Orange');
INSERT INTO fruits(fruit_name,color) VALUES('Orange','Orange');
INSERT INTO fruits(fruit_name,color) VALUES('Orange','Orange');
INSERT INTO fruits(fruit_name,color) VALUES('Banana','Yellow');
INSERT INTO fruits(fruit_name,color) VALUES('Banana','Green');

```
# see all the row and column in fruit table
```
select * from fruit;
```
# see the max fruit on the fruit table
```
SELECT  MAX(fruit_id)  FROM
  fruits  GROUP BY   fruit_name,
  color ORDER BY  MAX(fruit_id);
```


```
DELETE FROM  fruits WHERE
  fruit_id NOT IN  (
    SELECT  MAX(fruit_id)
    FROM fruits GROUP BY  fruit_name, color
  );
```

```
DELETE FROM fruits
WHERE fruit_id NOT IN (  
     SELECT  MIN(fruit_id)
    FROM fruits
    GROUP BY fruit_name,
      color
  );
```

# see the Duplicate Rows

```
SELECT 
    fruit_name,
    color,
    COUNT(*)
FROM 
    fruits
GROUP BY 
    fruit_name,
    color;

    ```

    ```
    SELECT 
    fruit_name,
    color,
    COUNT(*)
FROM 
    fruits
GROUP BY 
    fruit_name,
    color
HAVING COUNT(*) > 1; 
``
```
SELECT *
FROM fruits
WHERE (fruit_name, color) IN
    (SELECT fruit_name,
        color
    FROM fruits
    GROUP BY fruit_name,
        color
    HAVING COUNT(*) > 1
    )
ORDER BY fruit_name, color;
``
# Finding duplicate records using analytic function 
```

SELECT f.*,
    COUNT(*) OVER (PARTITION BY fruit_name, color) c
FROM fruits f;
```
```
WITH fruit_counts AS (
    SELECT f.*,
        COUNT(*) OVER (PARTITION BY fruit_name, color) c
    FROM fruits f
)
SELECT *
FROM fruit_counts
WHERE c > 1 ;

```

```
SELECT 
    *
FROM
        (SELECT f.*,
            COUNT(*) OVER (PARTITION BY fruit_name, color) c
        FROM fruits f
        )
WHERE c > 1;