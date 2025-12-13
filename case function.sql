select * from employee;

create view status as select name,salary,case  when salary>100000 then 'high' else 'low' end as status from employee;

select * from status;