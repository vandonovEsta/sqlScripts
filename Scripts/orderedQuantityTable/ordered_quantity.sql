create  table ordered_quantity (
 order_id   int references orders (order_id) on update  cascade on delete cascade
, product_id int references products_inventory (product_id) on update  cascade
, CONSTRAINT ordered_quantity_pkey PRIMARY KEY (order_id, product_id)  -- explicit pk
, ordered_quantity int not null
);

select order_id from orders;
select product_id from products_inventory;

select * from ordered_quantity;

insert into ordered_quantity (order_id, product_id, ordered_quantity)
values 
(13, 1 , 200), (14, 2, 58), (15, 3, 48),
(16, 4, 3), (17, 5, 44), (18, 6, 99),
(19, 7, 45), (20, 8, 66), (21, 9, 32), 
(22, 10, 21), (23, 11, 74), (24, 1, 32),
(13, 8, 5), (18, 5, 41), (22, 8, 8), 
(18, 3, 7), (15, 1, 22), (24, 8, 44);


--drop table
drop table ordered_quantity;