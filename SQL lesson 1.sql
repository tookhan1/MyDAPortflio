SELECT first_name,last_name FROM ACTOR
limit 5;

Select count(*) as Num_Rows, 
count(actor_id) as Num_ActorIDs, 
count(distinct actor_id) as Num_UNIQ_ACTORIDS 
from actor;

Select * from city
where city = 'Abha';

Select * from rental
where staff_id = 1 and customer_id = 549;

Select count(*) from rental
where customer_id = 549;


Select * from rental
where customer_id = 549;

Select * from city
where left(city,1) = 'A';

Select * from city
where city like '%do%';

Select * from film_text
where description like '%boring%' and description like '%dentist%';

Select * from actor
where first_name = 'scarlett';

Select * from actor
where last_name like '%son%'
order by first_name asc;

Select first_name,last_name, concat(first_name,' ',last_name) as fullname
from actor
where last_name like '%son%'
order by first_name;



Select count(last_name), count(distinct last_name) from actor;

Select count(distinct country) from country;

Select * from language
order by name asc;

Select * from payment;

Select avg(amount) from payment;

select customer_id, sum(amount) from payment;

Select Customer_ID, staff_id, sum(amount), avg(amount) 
from payment
Group by 1,2;

Select * from customer;

Select * from payment;

Select c.first_name, c.last_name, c.email, sum(p.amount)
from payment p
inner join customer c
on p.customer_id = c.customer_id
group by 1,2,3
order by sum(p.amount) desc
limit 5;

Select c.first_name, c.last_name, c.email, sum(p.amount)
from payment p
inner join customer c
on p.customer_id = c.customer_id
group by 1,2,3
order by sum(p.amount) desc
limit 5;

Select a.first_name, a.last_name, count(f.film_id)
from actor a
inner join film_actor f
on f.film_id = a.actor_id
group by 1,2
order by count(f.film_id) desc;

Select a.actor_id, a.first_name, a.last_name, count(f.film_id)
from actor a
left join film_actor f
on a.actor_id = f.actor_id
group by a.actor_id, a.first_name, a.last_name
order by count(f.film_id) desc
;


Select a.actor_id, a.first_name, a.last_name, count(f.film_id)
from actor a
left join film_actor f
on a.actor_id = f.actor_id
Group by  a.actor_id, a.first_name, a.last_name
Order by count(f.film_id) desc;

Select * from film_actor;

Select * from actor;




Select * from category;

Select * from film_text;

Select f.title, c.name
from category c
inner join film_text f
on f.film_id = c.category_id
group by 1,2
order by title asc;

Select f.title, l.name
from language l
inner join film_text f
on f.film_id = l.language_id
group by 1,2
order by title desc;

Select * from language;


-- Q 10

Select * from film_text;

Select * from category;


Select ft.film_id, ft.title, c.category_id, c.name
from film_text ft
inner join film_category fc
on ft.film_id = fc.film_id
inner join category c
on c.category_id = fc.category_id
order by ft.title;

Select ft.film_id, ft.title, c.category_id, c.name
from film_text ft
inner join film_category fc
on ft.film_id = fc.film_id
inner join category c
on c.category_id = fc.category_id
Order by ft.title;



Select film_id, title, length,
Case when length >= 80  then "Long"
when length >= 50 then "Medium"
Else "Short" end as Film_Duration
from film;

# Fizz Buzz activity
SELECT category_id,
CASE WHEN MOD(category_id,5)=0 AND MOD(category_id,3)=0 THEN "FizzBUZZ"
When mod(category_id,3)=0 then "Fizz"
When mod(category_id,5)=0 then "Buzz"
Else "none"
END AS category_id FROM CATEGORY;
