--Create talbe
CREATE TABLE public.products_inventory (
    product_id serial PRIMARY KEY,
    product_name VARCHAR(255),
    available_quantity INT,
    product_type VARCHAR(255),
    price_with_vat DECIMAl,
    price_withouth_vat DECIMAl,
    is_product_in_stock BOOLEAN,
    warehouse VARCHAR(255)
);

--Populate table
insert into products_inventory ( 
product_name, 
available_quantity, 
product_type, 
price_with_vat, 
price_withouth_vat, 
is_product_in_stock, 
warehouse
)
values 
('cheese', 99, 'dairy', 2.0, 29.99, true, 'wh_01'),
('cucumber', 1, 'vegetables', 1.50, 1.99, true, 'wh_02'),
('chicken', 25, 'meat', 9.00, 15.99, true, 'wh_03'),
('beans', 25, 'vegetables', 9.00, 15.99, false, 'wh_02'),
('ham', 25, 'meat', 19.00, 30.99, false, 'wh_02'),
('tuna', 25, 'fish', 30.00, 45.99, true, 'wh_01');


--Drop table
drop table products_inventory;