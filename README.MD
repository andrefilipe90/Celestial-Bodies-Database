Celestial Bodies Database


Celestial Bodies Database
Instructions
For this project, you need to log in to PostgreSQL with psql to create your database. Do that by entering psql --username=freecodecamp --dbname=postgres in the terminal. Make all the tests below pass to complete the project. Be sure to get creative, and have fun!

Don't forget to connect to your database after you create it 😄

Here's some ideas for other column and table names: description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth.

Notes:
If you leave your virtual machine, your database may not be saved. You can make a dump of it by entering pg_dump -cC --inserts -U freecodecamp universe > universe.sql in a bash terminal (not the psql one). It will save the commands to rebuild your database in universe.sql. The file will be located where the command was entered. If it's anything inside the project folder, the file will be saved in the VM. You can rebuild the database by entering psql -U postgres < universe.sql in a terminal where the .sql file is.

If you are saving your progress on freeCodeCamp.org, after getting all the tests to pass, follow the instructions above to save a dump of your database. Save the universe.sql file in a public repository and submit the URL to it on freeCodeCamp.org.

Complete the tasks below

You should create a database named universe

Be sure to connect to your database with \c universe. Then, you should add tables named galaxy, star, planet, and moon

Each table should have a primary key

Each primary key should automatically increment

Each table should have a name column

You should use the INT data type for at least two columns that are not a primary or foreign key

You should use the NUMERIC data type at least once

You should use the TEXT data type at least once

You should use the BOOLEAN data type on at least two columns

Each "star" should have a foreign key that references one of the rows in galaxy

Each "planet" should have a foreign key that references one of the rows in star

Each "moon" should have a foreign key that references one of the rows in planet

Your database should have at least five tables

Each table should have at least three rows

The galaxy and star tables should each have at least six rows

The planet table should have at least 12 rows

The moon table should have at least 20 rows

Each table should have at least three columns

The galaxy, star, planet, and moon tables should each have at least five columns

At least two columns per table should not accept NULL values

At least one column from each table should be required to be UNIQUE

All columns named name should be of type VARCHAR

Each primary key column should follow the naming convention table_name_id. For example, the moon table should have a primary key column named moon_id

Each foreign key column should have the same name as the column it is referencing

RESOLUTION:

create table moon(moon_id int not null, name varchar(50)not null unique, km_from_earth int, description text, planet_id int not null, constraint moon_pk primary key (moon_id));									
create table planet(planet_id int not null, name varchar(50)not null unique, myo_age numeric,has_life boolean not null, star_id int not null, constraint planet_pk primary key (planet_id));									
create table star(star_id int not null, name varchar(50)not null unique, s_mass numeric, s_size numeric, galaxy_id int not null, constraint star_pk primary key (star_id));									
create table galaxy(galaxy_id int not null, name varchar(50) not null unique, s_mass numeric, kms_rotation numeric, is_spherical boolean not null, constraint galaxy_pk primary key (galaxy_id));									
create table rocket(rocket_id int not null, name varchar(50)not null unique, n_of_missions int, kg_weight numeric not null, constraint rocket_pk primary key (rocket_id));									
alter table moon add constraint planet_fk foreign key (planet_id) references planet(planet_id);									
alter table planet add constraint star_fk foreign key (star_id) references star(star_id);									
alter table star add constraint galaxy_fk foreign key (galaxy_id) references galaxy(galaxy_id);									