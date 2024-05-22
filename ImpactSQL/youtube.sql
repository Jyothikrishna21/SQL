SELECT * FROM assignments.student;
use assignments;

-- limit 
SELECT * FROM STUDENT 
where marks > 60 
limit 3;

-- order by 
select * from student
order by grade asc
limit 2;

-- aggreate function it caluclate multiple values.andit return single values
select  count(name) 
from student; 

select max(marks)
from student;

-- group by
select grade,count(grade)
from student
group by grade;

-- Assignment work. 
select city,avg(marks)
from student 
group by city
order by city;

select pymode,count(customer)
from payment
group by pymode;

select grade,count(name)
from student
group by grade;

