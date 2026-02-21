# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Observations will always be randomly distrubuted across three boats which prevents a specific boat from overflowing with a big number of observation. However, since there's no pattern that determines the partitoning, querying anything from the database will likely to always require querying on all three boats.

## Partitioning by Hour

Partioning by Hour will allow the researcher to run queries more efficiently; by having to query a subset of boats then all of them. However, boat A that take hour 0-7 will likely to get too big compared to the rest of the boats.

## Partitioning by Hash Value

Partitioning by Hash Value is a middle ground between Random Partitioning and Partitioning by Hour. It allows observations to be distributed evenly across three boats and allows querying for a specific row efficient. However, it still suffers from having to query all three boats for queries that involves more than one row. 
