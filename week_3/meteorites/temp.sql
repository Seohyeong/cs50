CREATE TABLE "temp" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" NUMERIC,
    "long" NUMERIC
);

-- Then run the following
-- cat temp.sql | sqlite3 meteorites.db
-- sqlite3 meteorites.db
-- .import --csv --skip 1 meteorites.csv temp