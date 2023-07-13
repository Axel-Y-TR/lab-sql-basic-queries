Use the sakila database to do the following tasks:

Show all tables.

Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
select title from film;
-- 3.2. List of languages used in films, with the column aliased as language from the language table
select name as 'language'  from language;
-- 3.3 List of first names of all employees from the staff table
select first_name from staff;

-- Retrieve unique release years.

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
select COUNT(*) AS store FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(rental_id) from rental;
select count(inventory_id) from rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
select count( distinct last_name) from actor;
-- Retrieve the 10 longest films.
select title, length from film order by length desc limit 10;


-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
select first_name, last_name from actor where first_name = "SCARLETT"; 

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select title from film where title like '%ARMAGEDDON%';
-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content
select special_features from film where special_features like '%Behind the scenes%';
select count(special_features) from film where special_features like '%Behind the scenes%';


