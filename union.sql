-- union allows us to stack the two tables separately

-- consider that characters table does not exists only characters_alive and characters_dead are present

SELECT * FROM characters_alive
UNION DISTINCT
SELECT * FROM characters_dead;

-- UNION
-- UNION DISTINCT
-- UNION ALL 
-- Combining value of two sets
-- Intersect - take only columns which is same OR common in two tables, Consider this AS C region in an venn daigram

SELECT * FROM characters_alive
INTERSECT DISTINCT
SELECT * FROM characters_dead;

-- Consider a venn daigram which has two circles A and B, Which is intersection named as c, 
-- in this case you want to get only A Ignoring C has the same data from both A and B

SELECT * FROM characters_alive
EXCEPT DISTINCT
SELECT * FROM characters_dead;

--UNION INTERSECT EXCEPT (ALL | DISTINCT)
-- The order of tables called matters

-- RULES
-- 1. the tables should have same number of columns
-- 2. The columns should have same data types

SELECT col1, col2 FROM table1
UNION DISTINCT
SELECT col1, col2 FROM table2
