--Create customer only with mandatory fields
insert into customers (Name, Email, Phone, GDPR)
values ('John', 'john@work.eu', '+359888888888', true);

--Create customer with all fields
insert into customers (Name, Email, Phone, Age, GDPR, Customer_profile_status, DateTime_deactivated, Reason_for_deactivation, Notes)
values (
'Jane', 
'janen@work.eu', 
'+35988888588', 
22,
false,
false,
now(),
'Left the Country',
'Left the country for a prolonged period may return in the future'
);