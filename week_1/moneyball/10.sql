SELECT "first_name", "last_name", "salary", "salaries"."year", "HR" FROM "performances"
JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id"
JOIN "players" ON "players"."id" = "performances"."player_id"
WHERE "salaries"."year" = "performances"."year"
ORDER BY "players"."id", "salaries"."year" DESC, "HR" DESC, "salary" DESC;