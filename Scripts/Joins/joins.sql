--list of customers whos phone number is listed as phone number of another customer
select  c.customer_id , c."name" , c.phone  from customers c
join (select customers.customer_id, customers."name", customers.phone from customers) as c2
on c.phone = c2.phone 
and c.name <> c2."name"
order by c."name";

--using left and right joins, find customers without orders and orders without active customers
select c.customer_id, c."name", o.order_id  from customers c 
left join orders o 
on c.customer_id  = o.customer_id  
where o.order_id is null
;

select c.customer_id, c.name, c.customer_profile_status, o.order_id from customers c 
right join orders o 
on c.customer_id = o.customer_id
where c.customer_profile_status  = false
;


--using full join, find customers without orders and orders without active customers
select c.customer_id, c."name", o.order_id  from customers c 
full join orders o 
on c.customer_id  = o.customer_id  
where o.order_id is null
;

select c.customer_id, c.name, c.customer_profile_status, o.order_id from customers c 
full join orders o 
on c.customer_id = o.customer_id
where c.customer_profile_status  = false
and o.order_id is not null;



