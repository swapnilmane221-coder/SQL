
select * from employee2;

select name,salary,(salary*0.1) as Bonus from employee2;

select name,salary,(salary*12) as CTC,(salary*0.05) as increment,(salary*1.05) as new_slary from employee;