# 1:2 Getting Started #

We will learn how to:
* connect to PostgreSQL from Ruby.
* use the `pg` gem to perform queries.
* build dynamic SQL statements safely.
* structure small command-line applications.
* optimize queries made from Ruby programs.

# 1:3 What to Focus On #

* Observe the progression of steps from high-level requirements to low-level
implementation details.
  * Think about how project requirements affect what SQL is written later.

* Understand how to dynamically generate SQL.
  * There are risks associated with creating SQL statements programmatically, so
  pay attention to how this can be done safely.

* Focus on the database and not the application.

# 1:4 Executing SQL Statements from Ruby #

In the context of the `pg` gem, a 'tuple' means a hash representing a row, and a
'row' is an array with the values of the row.

Useful commands:
* `PG.connect(dbname: 'a_database')` -- create a new `PG::Connection` object
* `connection.exec('SELECT * FROM table_name')` -- returns a `PG::Result` object
* `result.values` -- returns an Array of Arrays of values for each row in `result`
* `result.fields` -- returns the names of columns as an Array of Strings
* `result.ntuples` -- how many rows
* `result.each(&block` -- yields a hash of column names and values for each row
* `result.each_row` -- yields an array of values for each row
* `result[index]` -- returns a hash of headings and values for row at `index`
* `result.field_values(column)` -- returns array of row values in the `column` heading
* `result.column_values(index)` -- like above but using an index instead of heading
