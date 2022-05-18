--Create table
CREATE TABLE public.orders (
    order_id serial PRIMARY KEY,
    is_order_completed boolean NOT NULL,
    is_order_payed boolean NOT NULL,
    date_of_order date NOT NULL,
    date_order_confirmed date,
    customer_id int,
	foreign key(customer_id) references public.customers(customer_id)
    );
    
   
--Populate table
insert into orders (is_order_completed, 
is_order_payed, date_of_order, 
date_order_confirmed,customer_id)
values 
(true, true, now(), now(), 3),
(false, false, now(), now(), 8),
(false, true, now(), now(), 7),
(true, false, now(), now(), 4),
(true, true, now(), now(), 7),
(false, false, now(), now(), 8),
(false, true, now(), now(), 7),
(true, false, now(), now(), 4),
(true, true, now(), now(), 7),
(false, false, now(), now(), 8),
(false, true, now(), now(), 7),
(true, false, now(), now(), 4);


select * from customers;

--drop table 
drop table orders cascade;