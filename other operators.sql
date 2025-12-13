select * from employee;

select * from employee where department is null;
select * from employee where department is not null;

select * from employee order by salary asc;
select * from employee order by salary desc;

select * from employee order by salary desc limit 3;

select count (distinct department) from employee;
