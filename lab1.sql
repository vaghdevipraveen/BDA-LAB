CREATE database vaghu;
USE vaghu;

CREATE table department(
	deptname varchar(5) primary key check(deptname in('ECE', 'IEEE', 'AI'))
    );
    
CREATE table employee( 
	id int primary key,
    name varchar(30) not null,
    age int check(age > 0 and age <= 50),
    dept varchar(20),
    salary float,
    foreign key(dept) references department(deptname)
    );
    
CREATE table project(
	id int not null,
    eid int,
    title varchar(20),
    dept varchar(20),
    foreign key(dept) references department(deptname),
    foreign key(eid) references employee(id)
    );
    
CREATE table dependents(
	eid int,
    name varchar(20),
    relation varchar(20),
    foreign key(eid) references employee(id)
    );
    
INSERT into department values('ECE'), ('IEEE'), ('AI');
select * from department;

INSERT into employee values(20, 'ABC', 35, 'ECE', 90000), (21, 'BCD', 30, 'IEEE', 67000), (22, 'CDE', 25, 'ECE', 40000), (23, 'DEF', 27, 'AI', 80000), (24, 'EFG', 31, 'AI', 70000);
select * from employee;

INSERT into project values(1, 20, 'AA', 'ECE'), (2, 24, 'AB', 'IEEE'), (3, 23, 'WE', 'AI'), (4, 22, 'DF', 'ECE'), (5, 22, 'LM', 'IEEE');
select * from project;

INSERT into dependents values(20, 'PAN', 'Spouse'), (22, 'LAN', 'Father'), (24, 'MAN', 'Husband');
select * from dependents;

select * from employee where dept = 'ECE';

select dept,count(*) from employee group by dept;

select dept,count(*) from employee where salary >= 50000 group by dept;
    