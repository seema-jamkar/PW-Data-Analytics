
--Q1- Theory Identify the primary keys and foreign keys in maven movies db. Discuss the differences 
--Primary Key---------------------------------------------------------------------------------------
A primary key is defined within a single table and uniquely identifies each record in that table.
Its purpose is to ensure data integrity, enforce uniqueness, and provide a reliable means of identifying individual records.
The primary key value cannot be null or duplicated within the table.
Primary keys are often used to establish relationships with other tables through foreign keys.

--Foreign Key-----------------------------------------------------------------------------------------
A foreign key is a way to create connections between tables by using the primary key of one table as a reference. It represents a dependency or association between two tables and maintains referential integrity.
Foreign keys can accept null values, allowing for optional or unspecified relationships.
They can be duplicated within a table, reflecting multiple records associated with the same reference.

-------------------------------------------------------------------------------------------------------
--#Q1-List all details of actors
select * from actor;
--#Q2-List all customer information from DB.
select * from customer;
--#Q3-List different countries.
select distinct country from country;
--#Q4-Display all active customers.
select customer_id , first_name ,last_name ,email from  customer where active ='1';
--#Q5-List of all rental IDs for customer with ID 1.
select rental_id from rental where customer_id=1;
--#Q6-Display all the films whose rental duration is greater than 5 .
select * from film where rental_duration > 5;
--#Q7-List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(*)from film where replacement_cost >15 and replacement_cost <20; 
--#Q8-Display the count of unique first names of actors.
select count( DISTINCT first_name ) from actor;
--#Q9-Display the first 10 records from the customer table .
select * from customer limit 10 ; 
--#Q10-Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like "b%"  limit 3 ; 
--#Q11-Display the names of the first 5 movies which are rated as ‘G’.
select title from  film where rating = 'G' limit 5; 
--#Q12-Find all customers whose first name starts with "a".
select * from customer where first_name like "a%";
--#Q13-Find all customers whose first name ends with "a".
select * from customer where first_name like '%a' ;
--#Q14-Display the list of first 4 cities which start and end with ‘a’ .
select * from city where city like "a%a" limit 4;
--#Q15-Find all customers whose first name have "NI" in any position.
select * from customer where first_name like "%ni%";
--#Q16-Find all customers whose first name have "r" in the second position .
select * from customer where first_name like "_r%";
--#Q17-Find all customers whose first name starts with "a" and are at least 5 characters in length.
select * from  customer where first_name like "a_____%";
--#Q18-Find all customers whose first name starts with "a" and ends with "o".
select * from customer  where first_name like 'a%o'; 
--#Q19-Get the films with pg and pg-13 rating using IN operator.
select * from film where rating  IN ('pg', 'pg-13') ;
--#Q20Get the films with length between 50 to 100 using between operator.
select * from film  where length between 50 and 100;
--#Q21-Get the top 50 actors using limit operator.
select * from actor where actor_id  limit 50;
--#Q22-Get the distinct film ids from inventory table.
select distinct(film_id) from inventory;
