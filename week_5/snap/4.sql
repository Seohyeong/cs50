-- The app needs to send users a summary of their engagement. 
-- Find the username of the most popular user, defined as the user who has had the most messages sent to them.
SELECT "username" FROM "users" WHERE "id" = (
    SELECT "to_user_id" FROM "messages" 
    GROUP BY "to_user_id"
    ORDER BY COUNT(*) desc
    LIMIT 1
);