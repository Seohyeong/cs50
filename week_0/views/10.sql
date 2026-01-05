-- write a SQL query to answer a question of your choice about the prints. The query should:
-- Make use of AS to rename a column
-- Involve at least one condition, using WHERE
-- Sort by at least one column, using ORDER BY
SELECT AVG("brightness") AS "Average Brightness of 5 Brightest Painings" FROM "views" WHERE "english_title" LIKE '%Fuji%' ORDER BY "brightness" DESC LIMIT(5);