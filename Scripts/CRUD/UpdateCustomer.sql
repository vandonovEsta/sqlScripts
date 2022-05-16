--Update customer phone
update customers set Phone = '+359777777777'
where Customer_id = 1;

--Deactivate customer account
update customers set Customer_profile_status = false, 
DateTime_deactivated = now(), Reason_for_deactivation = 'None'
where Customer_id = 1;

--Activate customer account
update customers set Customer_profile_status = true, 
Notes = 'Was deactivated by mistake'
where Customer_id = 1;