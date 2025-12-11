drop table if exists employees;

create table employees(
employee_id serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
department varchar(50),
salary decimal(10,2) check (salary>0),
joining_date date not null,
age int check (age>=18)
);

select * from employees;

insert into employees (first_name,last_name,department,salary,joining_date,age)
values
('Amit','Sharma','IT',60000.00,'2022-05-01',29),
('Neha','Patel','HR',55000.00,'2021-08-15',32),
('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
('Anjali','Verma','IT',65000.00,'2019-11-22',28),
('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);

select * from employees order by employee_id asc;

-- Q1. Retrieve all employees first name and their department
select first_name,department from employees;

-- Q2 Update salary  of all employees in the 'IT' department by increasing 10 %
update employees set salary=salary+salary*0.1 where department='IT';

-- Q3 Delete all employees who are older than 34 years.
delete from employees where age>34;

-- Q4. Add a new column to employees table.
alter table employees add column email varchar(50);

-- Q5. Rename the 'department' to 'dept_name'
alter table employees rename column department to dept_name; 

-- Q6. Retrieve the name of employees who joined after january 1,2021.
select first_name,last_name from employees where joining_date > '2021-01-01';

-- Q7. Change the data type of the salary column to integer
alter table employees alter column salary type int;

-- Q8. List all employees with thier age and salary column in descending order of salary
select first_name,age,salary from employees order by salary desc;

-- Q9. insert a new employee with the following details 'Raj','Singh','Marketing',60000,'2023-09-15',30
insert into employees (first_name,last_name,dept_name,salary,joining_date,age)
values
('Raj','Singh','Marketing',60000,'2023-09-15',30);

-- Q10. update age of employee +1 to every employee
update employees set age=age+1 where age>=18;