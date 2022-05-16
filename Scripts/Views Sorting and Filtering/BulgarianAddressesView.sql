--Create bulgarian_addresses view
create view bulgarian_addresses as
select * from customers_addresses
where country = 'Bulgaria';

--Get countries ordered alphabetically
select distinct country from customers_addresses
order by country asc;

--Select cities starting with S
select distinct  city from customers_addresses
where city like 'S%';

-- 3 random bulgarian cities
select city from customers_addresses
where country = 'Bulgaria'
order by random() 
limit 3;

-- all addresses not in Sofia, Plovdiv, Varna
select address, city from customers_addresses
where country  = 'Bulgaria'
and city not in ('Sofia', 'Plovdiv', 'Varna');

--last 10 added customer addresses with a province and address filled, but without a state value
select * from customers_addresses
where province notnull 
and address notnull 
and state is null 
order by address_id desc
limit 10;

--addresses that have 4-digit postal code that start with 3 and end with 7. Order the result alpabetically by country and city
select address, postal_code from customers_addresses
where postal_code::varchar(255) like '3__7'
order by country, city asc;