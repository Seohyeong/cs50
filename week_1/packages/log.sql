
-- *** The Lost Letter ***
-- find the id of the address (900 Somerville Avenue) -> 432
SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue';
-- find the ids of the packages with the id of the from address 432
SELECT "id", "contents" FROM "packages" WHERE "from_address_id" = 432;
-- find the id of the congratulatory letter with the id of the from address 432 -> 384
SELECT "id", "contents" FROM "packages" WHERE "from_address_id" = 432 AND "contents" = 'Congratulatory letter';
-- find rows that match package_id of 384 from scans table
SELECT * FROM "scans" WHERE "package_id" = 384;
-- find the id of the address where the letter got dropped off -> 854
SELECT "address_id" FROM "scans" WHERE "package_id" = 384 AND "action" = 'Drop';
-- find the address and the type of id 854
SELECT "address", "type" FROM "addresses" WHERE "id" = 854;

-- Combining all the queries
SELECT "address", "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
        ) AND "contents" = 'Congratulatory letter'
    ) AND "action" = 'Drop'
);

-- *** The Devious Delivery ***
-- find the package that has missing from_address_id -> 5098, Duck debugger, 50
SELECT "id", "contents", "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL;
-- find out where the package 5098 ended up -> 348
SELECT "address_id" FROM "scans" WHERE "package_id" = 5098 AND "action" = 'Drop';
-- find out the address with the address_id of 348 -> 546 Lewis Street
SELECT "type" FROM "addresses" WHERE "id" = 348;

-- Combining all the queries to get the type of the address
SELECT "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    ) AND "action" = 'Drop'
);

-- *** The Forgotten Gift ***
-- from: 109 Tileston Street
-- to: 728 Maple Place
-- find the address id of 109 Tileston Street -> 9873
SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street';
-- find the package id and content from from_address_id of 9873 -> 9523, Flowers
SELECT "id", "contents" FROM "packages" WHERE "from_address_id" = 9873;
-- find the driver_id from scans table with the package_id 9523 -> 17
SELECT "driver_id" from "scans" WHERE "package_id" = 9523 ORDER BY "timestamp" DESC LIMIT 1;
-- find out who the driver_id 17 is -> Mikel
SELECT "name" from "drivers" WHERE "id" = 17;

-- Combining all the queries to get the name of the driver
SELECT "name" from "drivers" WHERE "id" = (
    SELECT "driver_id" from "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
        )
    ) ORDER BY "timestamp" DESC LIMIT 1
);