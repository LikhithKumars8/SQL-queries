-- generate 2 new tables from the characters table

CREATE TABLE characters_dead AS (
    SELECT * FROM characters WHERE is_alive = false
);

CREATE TABLE characters_alive AS (
	SELECT * FROM characters WHERE is_alive = true
);

-- Another way to create table if already exists

DROP TABLE IF EXISTS characters_dead;

CREATE TABLE characters_dead AS (
    SELECT * FROM characters WHERE is_alive = false
);

DROP TABLE IF EXISTS characters_alive;

CREATE TABLE characters_alive AS (
    SELECT * FROM characters WHERE is_alive = true
);

-- Another way with if not exists condition
CREATE TABLE IF NOT EXISTS characters_dead AS (
    SELECT * FROM characters WHERE is_alive = false
);



