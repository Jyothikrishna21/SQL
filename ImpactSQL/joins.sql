use assignments;

create table prof(
id int primary key,
name varchar(30)
);

create table course(
id int primary key,
course varchar(10)
);
SELECT * FROM assignments.prof;
insert into prof (id,name) 
values (101,"adam"),(102,"bob"),(103,"casey");
SELECT * FROM assignments.course;
insert into course (id,course) 
values (102,"english"),(107,"math"),(103,"physics"),(105,"hindi");

-- inner join
select *
from prof
inner join course
on prof.id=course.id;

-- left join it returns all records from left table, and matched records from the right table.
select prof.id,prof.name,course.course
from prof 
left join course
on prof.id=course.id;

-- right join it returns all records from right table, and matched records from the left table.
select *
from prof
right join course
on prof.id=course.id;

-- full join it return all records when there is match in either left or right table.
-- syntax to write full join is left join + union + right join.
select * 
from prof
left join course
on prof.id=course.id
union
select * 
from prof
right join course
on prof.id=course.id;

-- left exclusive join it means left table lo values right table lekapothe manam print chesthunam
--  ikkada 101 okkate overlap avtledu 
select * 
from prof
left join course
on prof.id=course.id
where course.id is null;

-- right exclusive join(opposite of left excluive join) 
select * 
from prof
right join course
on prof.id=course.id
where prof.id is null;

-- self join
create table  employee(
id int primary key,
name varchar(30),
manager_id int
);

insert into employee(id,name,manager_id) values(101,"adam",103),(102,"bob",104),(103,"casey",null),(104,"donald",103);
SELECT * FROM assignments.employee;

select a.name as manager_name,b.name
from employee as a
join employee as b
on a.id=b.manager_id;
