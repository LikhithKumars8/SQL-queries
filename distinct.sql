SELECT DISTINCT class, guild, is_alive 
FROM characters 
ORDER BY class, guild

-- DISTINCT gives us unique combination between the columns data (DROP DUPLICATES)
-- DISTINCT has no effect on the * because atleast one data will be unique in entire instance.

-- It looks at the only column selected and looks at all the rows and checks and
-- removes repeated/duplicate rows based on our selection

