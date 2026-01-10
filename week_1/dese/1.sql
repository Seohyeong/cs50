-- write a SQL query to find the names and cities of all public schools in Massachusetts.
SELECT "name", "city" FROM "schools" WHERE "state" = 'MA' and "type" = 'Public School';