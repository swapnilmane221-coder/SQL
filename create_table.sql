create table employee(
		employee_id serial primary key,
		name varchar(100) not null,
		position varchar(50),
		department varchar(50),
		hire_date date,
		salary numeric(10,2)		
);

select * from employee;

































CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    address_details JSONB
);
select * from users;

insert into users (name,address_details) values 
	('swapnil','{"street":"LIG","city":"Kalamboli","pincode":410218}');
	
SELECT
    name,
    address_details ->> 'street' AS street,
    address_details ->> 'city' AS city
FROM users
WHERE address_details ->> 'pincode' = '410218';
		