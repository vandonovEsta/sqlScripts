--the count of all available products in stock
select count(product_id) as products from products_inventory;

--the average product price with VAT for all categories
select avg(prive_with_vat) as avg_price_with_vat from products_inventory;

--the total amount of all available items in stock (use price with VAT and available qty.)
select sum(available_quantity) as total_quantity from products_inventory 
where is_product_in_stock = true;

--Find the most and least expensive item from the table
select product_name, prive_with_vat, prive_withouth_vat as min_price from products_inventory 
 order by prive_with_vat asc
 limit 1;
 
select product_name, min(prive_with_vat) as min_price from products_inventory 
group by product_name 
order by min_price asc
limit 1;

select product_name, max(prive_with_vat) as min_price from products_inventory 
group by product_name 
order by min_price desc
limit 1;

--Find the most expensive item in each warehouse
select product_name, max(prive_with_vat) as min_price from products_inventory 
group by product_name 
order by min_price desc
limit 1;

--Find the most expensive item in each warehouse
select warehouse, product_name, max(prive_with_vat) as min_price from products_inventory 
group by warehouse, product_name
order by min_price desc
limit (select count( distinct warehouse ) from products_inventory);

--Get the count of all products for each category
select product_type as type , count(available_quantity) as count from products_inventory
group by product_type;

--Get the count of all products for each category in and out of stock		
select is_product_in_stock, count(distinct product_type) from products_inventory 
group by is_product_in_stock;

--Get the count of all products for each category where the products count is more than 3
select product_type, count(product_id) as product_count from products_inventory
group by product_type
having count(product_id) > 1;

--Get the inventory amount for each warehouse
select warehouse, product_name, available_quantity from products_inventory 
where is_product_in_stock = true
group by warehouse, product_name, available_quantity
order by warehouse asc;

--Get all product categories stored by each warehouse
select warehouse, product_type from products_inventory
group by warehouse, product_type
order by warehouse asc;

--Get the avarage product categories hold by the warehouses
select warehouse , avg(distinct available_quantity) as avarage_quantity from products_inventory 
group by warehouse
order by warehouse asc;