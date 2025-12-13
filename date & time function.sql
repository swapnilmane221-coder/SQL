select now();

select current_date;

select current_time;

select date_part('year',now());
select date_part('month',now());
select date_part('day',now());
select date_part('dow',now());


SELECT AGE(date '2004-03-25');
select age(timestamp '2004-03-25');

select extract(month from now());
select extract(year from now());
select extract(day from now());

select * from employee;

select name,to_char(hire_date,'dd-month-yyyy') as formatted_date from employee;

select name,date_trunc('month',hire_date) as month_start from employee;

select name,hire_date,hire_date+interval '6 days' as new_d from employee;

select current_time;



