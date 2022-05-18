--create customers table
create table customers(
Customer_id serial PRIMARY key,
Name varchar(50) not null,
Email varchar(50) unique not null,
Phone varchar(13) unique not null,
Age int default 99,
GDPR bool not null,
Customer_profile_status bool,
Datetime_created timestamp not null default now(),
DateTime_deactivated timestamp,
Reason_for_deactivation varchar(255),
Notes varchar(255),
addres_id int unique not null,
foreign key(addres_id) references public.customers_addresses(address_id),
order_id int,
foreign key(order_id) references public.orders(order_id)
);


--add 1:many relation with orders table
ALTER TABLE public.customers ADD order_id int4 NULL;
ALTER TABLE public.customers ADD CONSTRAINT customers_fk FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--select all from customers c 
select * from customers c;


