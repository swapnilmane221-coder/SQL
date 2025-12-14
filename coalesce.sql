CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    added_date DATE,
    discount_rate DECIMAL(5,2)
);

select * from product;

INSERT INTO Product (product_id, product_name, category, price, quantity, added_date, discount_rate)
VALUES
(1, 'Laptop Pro 15', 'Electronics', 85000.00, 10, '2025-01-10', 10.00),
(2, 'Wireless Mouse', 'Electronics', 1200.00, 50, '2025-01-12', 5.00),
(3, 'Office Chair', 'Furniture', 7500.00, 20, '2025-01-15', 15.00),
(4, 'Water Bottle', 'Kitchen', 250.00, 100, '2025-01-18', 2.50),
(5, 'Smartphone X', 'Electronics', 65000.00, 15, '2025-01-20', 12.00),
(6, 'Running Shoes', 'Sportswear', 4500.00, 30, '2025-01-22', 8.00),
(7, 'Bluetooth Speaker', 'Electronics', 3500.00, 25, '2025-01-25', 7.50),
(8, 'Notebook Pack', 'Stationery', 150.00, 200, '2025-01-28', 3.00),
(9, 'LED TV 42"', 'Electronics', 42000.00, 8, '2025-02-01', 10.00),
(10, 'Dining Table Set', 'Furniture', 32000.00, 5, '2025-02-05', 20.00);


alter table product add column discount_price numeric(10,2);

select * from product;

update product set discount_price=price*0.9 where product_name not in ('Laptop Pro 15','desk');

update product set discount_price=null where product_name  in ('Laptop Pro 15','desk');

select product_name,coalesce(discount_price,price) as final_price
from product; 












