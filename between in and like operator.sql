select * from employee;

select * from employee where salary between 140000 and 160000;

select * from employee where name LIKE 'S%';

select name,department from employee where department in ('Finance','Marketing');