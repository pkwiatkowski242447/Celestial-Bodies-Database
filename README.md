# Celestial-Bodies-Database
This database was created as a result of finishing a project in Relational Database Certification Course on https://www.freecodecamp.org.

The main goal of the task was to create a database, that will be used for storing data about Celestial Bodies. The structure of the database is divided into six tables:

* galaxy		-> Contains information about different galaxies like: their name, age, radius in light years, and distance from the Earth in millions of light years

e.g:

universe=> SELECT * FROM galaxy ORDER BY galaxy_id;
+-----------+-------------------+-------+-----------------------+--------------------------+
| galaxy_id |       name        |  age  | radius_in_light_years | distance_in_mln_of_years |
+-----------+-------------------+-------+-----------------------+--------------------------+
|         1 | Milky Way         | 13.60 |                 60000 |                     0.00 |
|         2 | Andromeda         |  9.50 |                 76000 |                     2.54 |
|         3 | Triangulum Galaxy | 12.50 |                 30550 |                     2.73 |
|         4 | Whirpool Galaxy   |  0.40 |                 30000 |                    23.00 |
|         5 | Pinwheel Galaxy   |  3.00 |                 95000 |                    21.00 |
|         6 | Sombrero Galaxy   |  8.00 |                 32000 |                    28.00 |
+-----------+-------------------+-------+-----------------------+--------------------------+
(6 rows)

* star			-> Contains information about stars: their name, age, type, and id of the galaxy that they are located in.

universe=> SELECT * FROM star ORDER BY star_id;
+---------+-----------+--------------+------------------+------+
| star_id | galaxy_id | star_type_id |       name       | age  |
+---------+-----------+--------------+------------------+------+
|       1 |         1 |            6 | Sun              |  4.6 |
|       2 |         1 |            4 | Proxima Centauri |  5.0 |
|       3 |         1 |            2 | Sirius B         |  0.2 |
|       4 |         1 |            6 | Sirius A         |  0.3 |
|       5 |         1 |            6 | VY Canis Majoris |      |
|       6 |         1 |            5 | WISE 0855-0714   | 10.0 |
+---------+-----------+--------------+------------------+------+
(6 rows)

* planet
* moon
* star_type
* planet_type
