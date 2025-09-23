CREATE table product_info(
product_id int primary key,
product_name varchar(20) not null,
product_type varchar (20) not null,
mfg_date date,
price decimal(12,2) , constraint chk_price check(price >100 and price<1000));

desc product_info;
select*from product_info; 
Alter table product_info modify column mfg_date  date not null;

insert into product_info values (1, 'Notebook',     'Stationery', '2024-01-10', 150.00),
 (2, 'Ball Pen',     'Stationery', '2024-02-15', 120.00),
 (3, 'Backpack',     'Bags',       '2024-03-05', 750.00),
 (4, 'Water Bottle', 'Kitchenware','2024-01-20', 250.00),
 (5, 'Headphones',   'Electronics','2024-04-12', 950.00),
 (6, 'Mouse',        'Electronics','2024-05-18', 499.00),
 (7, 'Keyboard',     'Electronics','2024-02-28', 699.00),
 (8, 'T-Shirt',      'Clothing',   '2024-06-02', 450.00),
 (9, 'Shoes',        'Footwear',   '2024-07-10', 899.00),
 (10,'Sunglasses',   'Accessories','2024-08-15', 399.00); 
 
 alter table product_info drop constraint chk_price;
 
 alter table product_info modify product_name varchar(20);