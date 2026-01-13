-- write a SQL query to find all teams that Satchel Paige played for.
SELECT "name" FROM "teams"
JOIN "performances" ON "performances"."team_id" = "teams"."id"
WHERE "player_id" = (
    SELECT "id" FROM "players" WHERE "first_name" = 'Satchel' AND "last_name" = 'Paige'
);
-- player_id: 14190 but no record of salaries exist