SELECT * FROM assignments.student;
use assignments;

-- having clause
select city,count(name)
from student
group by city
having max(marks)>85;

-- updating
update student
set grade='O'
where grade='A';

update student 
set marks=93
where marks=12;

update student 
set grade='O'
where rollNo=105;

-- delete
delete from student
where marks<=60; 

-- Revisiting Foreign Key 
create table dept(
 id int primary key,
 name varchar(50)
);

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
);


 