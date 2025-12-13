select * from employee order by employee_id asc;

update employee set department='Technology' where employee_id=1;

select * from employee where department='Technology' and salary>=100000;

select * from employee where department='Technology' or salary>=100000;

select * from employee where not department='Technology';
