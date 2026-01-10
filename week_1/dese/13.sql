SELECT "city", AVG("unsatisfactory") AS "avg_unsatisfactory" FROM (
    "districts"
    LEFT JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
) GROUP BY "city" 
ORDER BY "avg_unsatisfactory" DESC LIMIT 10;