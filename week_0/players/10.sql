--  write SQL query to answer a question of your choice. This query should:
-- Make use of AS to rename a column
-- Involve at least condition, using WHERE
-- Sort by at least one column using ORDER BY
SELECT COUNT(DISTINCT "birth_country") AS "Number of Countries" FROM "players" WHERE "first_name" LIKE "A%" ORDER BY "height" DESC;