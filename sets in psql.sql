drop table if exists students_2023;

create table student_2023 (
		student_id int primary key,
		student_name varchar(100),
		course varchar(50)
);

insert into student_2023 (student_id,student_name,course) values
		(1,'Arav Sharma','Computer Science'),
		(2,'Ishita Verma','Mechanical Engineering'),
		(3,'Kabir Patel','Electronics'),
		(4,'Anaya Desai','Civil Engineering'),
		(5,'Rahul Gupta','Computer Science');

select * from student_2023;

create table student_2024 (
		student_id int primary key,
		student_name varchar(100),
		course varchar(50)
);

insert into student_2024 (student_id,student_name,course) values
		(3,'Kabir Patel','Electronics'),
		(4,'Anaya Desai','Civil Engineering'),
		(6,'Meera Rao','Computer Science'),
		(7,'Vikram Singh','Mathematics'),
		(8,'Sanya Kapoor','Physics');

select * from student_2024;

--union 
select * from student_2023 union select * from student_2024 order by student_id asc;

--union all
select * from student_2023 union all select * from student_2024 order by student_id asc;

--intersect
select * from student_2023 intersect select * from student_2024 order by student_id asc;

-- except -return different value from table 2 which is present in table 1
select * from student_2023 except select * from student_2024 order by student_id asc;



