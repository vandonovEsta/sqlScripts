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
Notes varchar(255)
);
