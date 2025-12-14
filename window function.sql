select * from product;

-- assign unique row num to each product within same category

select product_name,category,price, row_number() over(partition by category order by price desc) as row_num from product;

select product_name,category,price, dense_rank() over(partition by category order by price desc) as row_num from product;

select product_name,category,price, sum(price) over(partition by category order by price desc) as row_num from product;

select product_name,category,price, avg(price) over(partition by category order by price desc) as row_num from product;




