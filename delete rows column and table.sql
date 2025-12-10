create table employee2(
		employee_id int generated always as identity (start with 500) primary key,
		name varchar(100) not null,
		position varchar(50),
		department varchar(50),
		hire_date date,
		salary numeric(10,2)		
);

select * from employee2;

insert into  employee2 (name,position,department,hire_date,salary) values
	('swapnil','full stack','IT','25/03/2026',85000),
	('swapnil','full stack','IT','25/03/2026',85000),
	('Keshav', 'Data Analyst', 'Data Science', '2026-01-25', 100000), -- Your original record
	('Priya', 'Senior Software Engineer', 'Technology', '2024-03-10', 145000),
	('Ahmed', 'Marketing Manager', 'Marketing', '2023-08-01', 95000),
	('Sofia', 'HR Specialist', 'Human Resources', '2025-05-15', 78000),
	('Ben', 'Financial Analyst', 'Finance', '2022-11-20', 110000),
	('Chen', 'Project Lead', 'Technology', '2023-01-05', 130000),
	('Maya', 'UX/UI Designer', 'Design', '2025-09-01', 85000),
	('Omar', 'Sales Executive', 'Sales', '2026-02-14', 70000),
	('Lisa', 'Database Administrator', 'Technology', '2024-06-18', 120000),
	('Rajesh', 'Research Scientist', 'Data Science', '2022-04-12', 155000),
	('Chloe', 'Junior Accountant', 'Finance', '2025-10-01', 65000);

select * from employee2;


delete from employee2 where department='Sales';

alter table employee2 drop column salary;

drop table if exists employee2;



