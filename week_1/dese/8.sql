--  write a SQL query to display the names of all school districts and the number of pupils enrolled in each.
-- SELECT "name", "pupils" FROM (
--     SELECT * FROM "districts"
--     LEFT JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
-- );

SELECT "name", "pupils" FROM (
    SELECT "district_id", "pupils", "name", "expenditures"."id" FROM "expenditures"
    LEFT JOIN "districts" ON "districts"."id" = "expenditures"."district_id"
    GROUP BY "district_id"
);