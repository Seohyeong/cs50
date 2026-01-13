-- write a SQL query to find the 10 least expensive players per hit in 2001.
-- Your query should return a table with three columns, one for the players’ first names, one of their last names, and one called “dollars per hit”.
-- ensure that the salary’s year and the performance’s year match.
SELECT "players"."first_name", "players"."last_name", "salaries"."salary" / "performances"."H" AS "dollars per hit" FROM "performances"
JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id"
JOIN "players" ON "players"."id" = "performances"."player_id"
WHERE "salaries"."year" = "performances"."year" AND "salaries"."year" = 2001 AND "H" > 0
ORDER BY "dollars per hit" ASC, "players"."first_name", "players"."last_name"
LIMIT 10;