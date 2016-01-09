Release 5:

sqlite> SELECT * FROM states;

sqlite> select id, state_name from states;

sqlite> SELECT * from regions;

sqlite> SELECT state_name, population from states;

sqlite> SELECT state_name, population FROM states ORDER BY population DESC
   ...> ;

sqlite> SELECT state_name FROM states WHERE region_id = 7;

sqlite> SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density DESC;


sqlite> SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

sqlite> SELECT state_name, region_id
   ...> FROM states
   ...> ORDER BY region_id ASC
   ...> ;


sqlite> SELECT region_name
   ...> FROM regions
   ...> WHERE region_name LIKE "%Central%";


sqlite> SELECT regions.region_name, states.state_name
   ...> FROM states
   ...> INNER JOIN regions ON states.region_id = regions.id
   ...> ORDER BY states.region_id ASC;


Release 6:

![schema-designer][schema.png]


Release 7:

What are databases for?

Databases are an efficient and fast way to store complex relationship that would be too difficult to store in a complex data structure.

What is a one-to-many relationship?

One table has one record with a particular value, whereas another table has many records that correspond to that value (and this relationship is replicated for most values in the first table).

What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is usually the first column/key in a table and is a unique identifier for that table. Where as a foreign key is a secondary key that is used to join to a primary key in the parent table.

How can you select information out of a SQL database? What are some general guidelines for that?

You name the columns, and it gives you all rows unless you add a WHERE clause. You can JOIN to other tables, ORDER BY, and there's a lot more - grouping, aggregating, having, sub-queries, etc.