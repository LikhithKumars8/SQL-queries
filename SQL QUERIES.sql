-- one can select using short hand in bigquery instead of using complete address of the table
SELECT *
FROM item --HERE YOU CAN SPECIFY ACTUAL ADDRESS WHICH IS A BIT LONG
LIMIT 1000

--Remeber these commands
-- for psql tool \! cls or \!clear or \q 
-- to run the query fn f5 or simply f5

--sql statement
SELECT class, AVG(level) AS avg_level
FROM characters
WHERE is_alive = true
GROUP BY class
HAVING AVG(level) > 22
ORDER BY AVG(level) DESC
LIMIT 5;
--There is an order in which each clause is executed
-- FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT

-- 1st level LEXICAL order - order in which clauses are written
-- 2nd level Logical order - order in which the clauses are executed logically
-- 3rd level Effective order - True order of execution after the engine's optimisation


--aliasing
--constants
--calculations
--Functions
--- there are numerous functions look them up when you need them ---
SELECT name, guild, level AS character_level, 1 AS version, 
experience, experience /100, experience + 100 / level * 2, SQRT(16), UPPER(guild)
FROM characters

SELECT SQRT(25)

-- ORDER OF OPERATIONS
-- FUNCTIONS, MULTIPLICATION/DIVISION, ADDITION/SUBTRACTION
-- BRACKETS GO FIRST

SELECT (3 + 2 * 3) - 4 / 2 + (POW(2, 2) - 2) / 2;
