--Create customer only with mandatory fields
insert into customers (Name, Email, Phone, GDPR, addres_id, order_id)
values ('John', 'johns@work.eu', '+35961796388', true, 10, 6);

--Create customer with all fields
insert into customers (Name, Email, Phone, Age, GDPR, Customer_profile_status, DateTime_deactivated, Reason_for_deactivation, Notes, addres_id, order_id)
values (
'Jane', 
'janen@work.eu', 
'+35988888588', 
22,
false,
false,
now(),
'Left the Country',
'Left the country for a prolonged period may return in the future',
2,
1 
);


--add more customers
insert into customers (Name, Email, Phone, Age, GDPR, Customer_profile_status, DateTime_deactivated, Reason_for_deactivation, 
Notes, addres_id, order_id)
values 
('Tom', 't@work.eu', '+35988788588', 22, false, false, now(),
'...', '...',
3, 2
),
('Jerry', 'jerry@work.eu', '+35988744588', 22, false, false, now(),
'...', '...',
4, 3
),
('Natasha', 'nat@work.eu', '+35988796388', 22, false, false, now(),
'...', '...',
5, 4
);


--get orders
select * from orders o;
--clear table
truncate table customers ;

--select 
select * from customers c ;