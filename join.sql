create table employees3(
	employee_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	department_id int
);

insert into employees3(first_name,last_name,department_id) values
		('Rahul','Sharma',101),
		('Priya','Mehta',102),
		('Aniket','Verma',103),
		('Simran','Kaur',null),
		('Aman','Singh',101);

select * from employees3;

create table departments(
		department_id int primary key,
		department_name varchar(50)
);

insert into departments(department_id,department_name) values
	(101,'Sales'),
	(102,'Marketing'),
	(103,'IT'),
	(104,'HR');

select * from departments;

-- inner join
select e.employee_id,e.first_name,e.last_name,e.department_id,d.department_name from employees3 as e inner join departments as d on e.department_id=d.department_id;

-- left join
select e.employee_id,e.first_name,e.last_name,e.department_id,d.department_name from employees3 as e left join departments as d on e.department_id=d.department_id;

-- right join 
select e.employee_id,e.first_name,e.last_name,d.department_id,d.department_name from employees3 as e right join departments as d on e.department_id=d.department_id;

-- full outer join 
select e.employee_id,e.first_name,e.last_name,e.department_id,d.department_name from employees3 as e full outer join departments as d on e.department_id=d.department_id;

-- cross join
select e.employee_id,e.first_name,e.last_name,d.department_id,d.department_name from employees3 as e cross join departments as d ;

-- self join 
select 
e1.first_name as emp1,e2.first_name as emp2,d.department_name
from employees3 e1 join employees3 e2 on e1.department_id=e2.department_id and e1.employee_id !=  e2.employee_id 
join departments d on e1.department_id=d.department_id
;






