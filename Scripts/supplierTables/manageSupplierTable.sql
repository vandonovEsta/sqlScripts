--create suppliers table
create table suppliers(
Supplier_id serial PRIMARY key,
Name varchar(50) not null,
Email varchar(50) unique not null,
Phone varchar(13) unique not null,
Age int default 99,
GDPR bool not null,
Supplier_profile_status bool,
Datetime_created timestamp not null default now(),
DateTime_deactivated timestamp,
Reason_for_deactivation varchar(255),
Notes varchar(255),
address_id int unique not null,
foreign key(address_id) references public.supplier_addresses(address_id),
product_id int,
foreign key(product_id) references public.products_inventory(product_id)
);


--Create supplier only with mandatory fields
insert into suppliers (Name, Email, Phone, GDPR, address_id)
values ('Gordon', 'gordon_imports@work.eu', '+359888888881', true, 9);

--Create supplier with all fields
insert into suppliers (Name, Email, Phone, Age, GDPR, Supplier_profile_status, DateTime_deactivated, Reason_for_deactivation, Notes, address_id)
values 
('KKS', 'KKS@work.eu', '+35988888582', 22, false, false, now(), '...', '...', 12);

insert into suppliers (Name, Email, Phone, Age, GDPR, Supplier_profile_status, 
						DateTime_deactivated, Reason_for_deactivation, Notes, address_id, product_id)
values 
('ssG', 'ssG@work.eu', '+35988888282', 22, false, false, now(), '...', '...', 11, 1),
('PoPW', 'PoPW@work.eu', '+35981888582', 22, false, false, now(), '...', '...', 13, 2),
('aws', 'aws@work.eu', '+35982888582', 22, false, false, now(), '...', '...', 15, 1)
;

--Drop suppliers table
drop table suppliers