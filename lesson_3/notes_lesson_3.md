# 3:2 Identifying Optimizations #

The N+1 query pattern (or anti-pattern):
1. You run 1 query to fetch a list of entities.
2. Then, for each entity, you run another query to fetch related data.

So N is the number of entities returned by the 1st query. N + 1 queries.

# 3:3 Optimizing N+1 Queries #

Replacing an N+1 Query pattern with a single, complex query is an optimization
because it means
* fewer round-trips between app and database (I/O is very expensive).
* less data transferred (we only get back the data we need).
* less processing of data in our Ruby app (databases are more efficient at most
data-processing operations than a Ruby app could be).

A thing we can do to count boolean (and other values) is to use the `NULLIF`
function. So if we do something like:
```sql
SELECT COUNT(NULLIF(completed, false)) AS completed_todos
  FROM todos;
```
We get a count of rows whose `completed` column is NOT set to `false`. `NULLIF`
will return `NULL` if the value in the first argument for that row matches the
value given as the second argument. `COUNT` will ignore `NULL` values in the
tally it returns.
