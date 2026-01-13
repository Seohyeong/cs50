SELECT "first_name", "last_name" FROM (
    SELECT "players"."first_name", "players"."last_name", "salaries"."salary" / "performances"."H" AS "dollars per hit" FROM "performances"
    JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id"
    JOIN "players" ON "players"."id" = "performances"."player_id"
    WHERE "salaries"."year" = "performances"."year" AND "salaries"."year" = 2001 AND "H" > 0
    ORDER BY "dollars per hit" ASC, "players"."first_name", "players"."last_name"
    LIMIT 10
)
INTERSECT
SELECT "first_name", "last_name" FROM (
    SELECT "players"."first_name", "players"."last_name", "salaries"."salary" / "performances"."RBI" AS "dollars per rbi" FROM "performances"
    JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id"
    JOIN "players" ON "players"."id" = "performances"."player_id"
    WHERE "salaries"."year" = "performances"."year" AND "salaries"."year" = 2001 AND "RBI" > 0
    ORDER BY "dollars per rbi" ASC, "players"."first_name", "players"."last_name"
    LIMIT 10
)
ORDER BY "last_name";
