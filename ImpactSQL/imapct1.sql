SELECT * FROM dbms.class;
update class set name="akash" where  sid=5;

-- here we are select particular person in a table. 
select sid,name,phoneNo,erp from class where name="yash";

-- alter is to modify the table here we are adding new column in table 
alter table class add column DOB date;

update class set `DOB`='1993-07-15' where sid=5;
update class set `DOB`='2013-07-01' where sid=2;
update class set `DOB`='2007-12-11' where sid=3;
update class set `DOB`='2023-02-23' where sid=4;

-- here we are giving default field as CSE.
alter table class add Dept varchar(20) default "CSE";

-- it is like range between the values we are printing b/w these two numbers data. 
select * from class where erp between 210303124200 and 210303124219;

-- j% ante starting name lo ni j unte ah record print avthadi 
select * from class where name like 'j%'; 

-- %a% ante a ane character unna perlu ani print avthai. 
select * from class where name like '%a%'; 

-- %n ni name last lo n unte print chesthadi 
select * from class where name like '%n'; 

-- a%b returns any value which starts with a and ends with b.

-- returns table lo ee values unte print chesthadi. 
select * from class where erp in(210303124211,210303124218);


 
