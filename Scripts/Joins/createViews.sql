--customers_contact_info: all customers contact information - phone, address and etc
create view customers_contact_info as 
select customers."name" ,customers.email, customers.phone, customers.age, customers_addresses.address ,customers_addresses.city,
		customers_addresses.province, customers_addresses.state, customers_addresses.postal_code, customers_addresses.country 
		from customers
		join customers_addresses on customers.addres_id = customers_addresses.address_id;
	
	
--customers_active_orders: customer id, name and phone with order id, status and date of ordering
create view customers_active_orders as
select customers.customer_id , customers."name", customers.phone, orders.order_id , orders.is_order_completed, orders.date_of_order
from orders
join customers on customers.order_id = orders.order_id
where orders.is_order_completed = false;

create view customers_active_orders_2 as
select customers.customer_id, customers."name", customers.phone, customers.order_id, orders.is_order_completed , orders.date_of_order 
from orders
join customers on customers.customer_id = orders.customer_id
where orders.is_order_completed  = false;

--customers_pending_payments: customer id and name with list of pending orders that are not payed, 
--order date and total sum expected to be payed
create view customers_pending_payments as
select c.customer_id as customer_id , c."name" as customer_name, o.date_of_order, aq.ordered_quantity,
pi2.price_with_vat as price, sum (aq.ordered_quantity * pi2.price_with_vat) as total_sum
from customers c
join  orders o  on c.customer_id = o.customer_id
join ordered_quantity aq on o.order_id  = aq.order_id
join products_inventory pi2 on aq.product_id = pi2.product_id 
group by c.customer_id , c."name" , date_of_order, ordered_quantity, pi2.price_with_vat
order by c.customer_id;

--supplier_inventory: supplier id, name and phone with available products (qty > 0), 
--quantity, price with and without VAT and the warehouse the item is located
create view supplier_inventory as
select s.supplier_id as supplier_id, s.name as suppliers_name,
		s.phone as supplier_phone, pi2.available_quantity as available_quantity,
		pi2.price_with_vat  as price_with_vat, pi2.price_withouth_vat as price_without_vat,
		pi2.warehouse as warehouse from suppliers s 
		join products_inventory pi2 on s.supplier_id = pi2.supplier_id
		where pi2.available_quantity > 0;


--customer_ordered_items: customer id and name with ordered product and product type
create view customer_ordered_items as
select c.customer_id as customer_id, c."name" as customer_name,
pi2.product_name as product_name, pi2.product_type as product_type
from customers c
join orders o  on c.customer_id = o.customer_id
join ordered_quantity oq on oq.order_id = o.order_id 
join products_inventory pi2 on oq.product_id = pi2.product_id
order by c.customer_id;

--phones: a union of all suppliers and customers ids, names and phone numbers
create view phones as
select c.customer_id  as id, c."name" as name, c.phone as phone from customers c
union
select s.supplier_id as id, s.name as name, s.phone as phone from suppliers s ;