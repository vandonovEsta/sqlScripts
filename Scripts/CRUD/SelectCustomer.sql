--select only name and phone
select Name, Phone from customers;


--select only internal information of the user
select GDPR, Customer_profile_status, Datetime_created, DateTime_deactivated, Reason_for_deactivation, Notes from customers ;

--select by id
select GDPR, Customer_profile_status, Datetime_created, DateTime_deactivated, Reason_for_deactivation, Notes from customers
where Customer_id = 1;