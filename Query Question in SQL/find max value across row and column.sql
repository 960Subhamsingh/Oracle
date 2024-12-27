--find max value across row and column

select max(max_per) as overall from(
select greatest(empno, sal) as max_per from emp);

-- Sample table creation
CREATE TABLE numbers (
    col1 INT,
    col2 INT,
    col3 INT
);

-- Insert sample data
INSERT INTO numbers (col1, col2, col3) VALUES (10, 20, 30);
INSERT INTO numbers (col1, col2, col3) VALUES (5, 25, 15);
INSERT INTO numbers (col1, col2, col3) VALUES (40, 10, 20);

-- Query to find the maximum value across rows and columns
SELECT MAX(max_per_row) AS overall_max
FROM (
    SELECT GREATEST(col1, col2, col3) AS max_per_row
    FROM numbers
) subquery;