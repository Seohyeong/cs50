-- write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.
SELECT "name", SUM("H") AS "total hits" FROM "performances"
LEFT JOIN "teams" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" = 2001
GROUP BY "name"
ORDER BY "total hits" DESC
LIMIT 5;