CREATE TABLE if not exists users(
			user_id serial primary key,
			username varchar(50) not null,
			email varchar(100) not null,
			age int,
			city varchar(50)
);
select * from users;

insert into users (username,email,age,city) values
		('rajesh','rajesh@gmail.com',25,'mumbai'),
		('priya','priya@yahoo.com',30,'delhi'),
		('ankit','ankit@gmail.com',28,'bangalore'),
		('sneha','sneha@hotmail.com',35,'pune'),
		('vikram','vikram@gmail.com',22,'hyderabad');

select * from users where age<30 and age>20;

update users set age=26 where username='rajesh';

select * from users order by user_id ASC;

update users set city='chennai' where age>30;

update users set age=31,city='kolkata' where username='priya';

update users set
username=case user_id
	when 1 then 'Rajesh'
	when 2 then 'Priya'
	when 3 then 'Ankit'
	when 4 then 'Sneha'
	when 5 then 'Vikram'
	end,
city=case user_id
	when 1 then 'Mumbai'
	when 2 then 'Kolkata'
	when 3 then 'Bangalore'
	when 4 then 'Chennai'
	when 5 then 'Hyderabad'
end
where
user_id<6;

savepoint;



	