
create table department(
department_no int primary key,
department_name varchar(20),
location varchar(20)
);


create table emplyee(
empoyee_id int primary key,
name varchar(20),
job varchar(20),
sal double(9,2),
email varchar(20),
manager_id int,
department_no int
foreign key fk_dept(department_no) references department(department_no)
on delete set null
on update cascade
);

create table project(
project_id int primary key,
name varchar(20),
start_date date,
end_date date
status varchar(20).
);

create table task(
task_id int primary key,
task_name varchar(20),
project_id int,
employee_id int,
status varchar(20).
foreign key fk_pro(project_id) references project(project_id)
foreign key fk_emp(employee_id) references department(employee_id)
);