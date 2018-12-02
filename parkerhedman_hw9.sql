use sakila;

#1a
Select first_name, last_name From actor;

#1b
Select upper(concat(first_name," ", last_name)) as 
actor_name from actor;

#2a
select actor_id, first_name, last_name
from actor
where first_name = "Joe";

#2b
select actor_id, first_name, last_name
from actor
where last_name like '%gen%';

#2c
select last_name, first_name
from actor
where last_name like '%li%';

#2d
select country_id, country
from country
where country in ("Afghanistan","Bangladesh","China");

#3a
alter table actor
add Description blob;

#3b
alter table actor
drop Description;

#4a
select last_name, count(last_name)
from actor
group by last_name;

#4b
select last_name, count(last_name)
from actor
group by last_name 
having count(last_name)>1;

#4c
update actor
set first_name = "Harpo"
where first_name = "Groucho" and last_name = "Williams";

#4d
update actor
set first_name = "Groucho"
where first_name = "Harpo" and last_name = "Williams";

#5a


#6a
SELECT staff.first_name, staff.last_name, address.address
FROM address
INNER JOIN staff on address.address_id = staff.address_id;

#6b
select payment.staff_id, staff.first_name, staff.last_name, sum(payment.amount)
from payment
inner join staff on payment.staff_id = staff.staff_id
group by staff_id;

#6c
select film_actor.film_id, film.title, count(film_actor.actor_id)
from film_actor
inner join film on film_actor.film_id = film.film_id
group by film_id;

#6d
select film.title, count(film.film_id)
from inventory
inner join film on inventory.film_id = film.film_id
group by film.title;










