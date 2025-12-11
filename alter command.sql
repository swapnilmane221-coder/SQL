select * from users;

insert into users values (6,'Ajay','ajay@gmail.com',28,'Mumbai');

select * from users order by user_id asc;

ALTER TABLE USERS
RENAME COLUMN USERNAME TO FULL_NAME;

-- -to change age column datatype

alter table users 
alter column age type smallint;

alter table users 
alter column city set not null;

--to add check constraint to age column

alter table users
add constraint age check (age>=18);

alter table users
drop constraint age;

insert into users values (8,'Vinod','vinod@gmail.com',17,'Mumbai');
select * from users order by user_id asc;

alter table users 
rename to customers;
