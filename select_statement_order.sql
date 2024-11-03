SELECT * FROM characters
WHERE health > 50 AND is_alive = true

-- logical order FROM clause (Get the table) -> WHERE clause (DROP ROWS)

SELECT name, level, level/10 AS level_scaled FROM characters WHERE level/10 > 3
-- Repeat the logical condition in where clause as order of execution is WHERE -> SELECT

-- Boolean Algebra 
-- elements : true, false
-- operators: NOT, AND, OR
-- operation: true AND false = false

-- Truth table - logical negation
-- p true = p in opposite ~p = f else ~f = p
 
-- order of operations : NOT, AND, OR
-- FIRST solve the brackets

SELECT NOT (true and NOT false or false AND (true or true) AND true) 

