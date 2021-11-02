
--1) Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--2) Наполнить таблицу employee 70 строками.

create table employees (
    id serial primary key,
    employee_name varchar (50) not null
);

insert into employees (id, employee_name)
values (default , 'Jayden-Lee Velez');

insert into employees (id, employee_name)
values (default , 'Sahara Searle');


select * from employees

--==============================================================================================================================================

-- 3) Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
-- 4) Наполнить таблицу salary 15 строками:

create table salary (
    id serial primary key,
    monthly_salary integer not null
);


insert into salary (id, monthly_salary)
values (default, 2500 );

select * from salary;

--=========================================================================================================================================

--5) Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--6) Наполнить таблицу salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id


create table employee_salary (
    id serial primary key,
    employee_id integer not null unique,
    salary_id integer not null
);


insert into employee_salary (id, employee_id, salary_id)
values (default,91,11);



select * from employee_salary

--===========================================================================================================================================


--7) cоздать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--8) Поменять тип столба role_name с int на varchar(30)
--9) Наполнить таблицу roles 20 строками;


create table roles  (
    id serial primary key,
    role_name  integer not null unique
);

alter table roles
alter column role_name type varchar(30)
using role_name :: varchar(30);

insert into roles(id,role_name)
values(default,'Junior Python developer');

insert into roles(id,role_name)
values (default,'Senior Automation QA engineer');


select * from roles

--===========================================================================================================================================

--10) Создать roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- 11) Наполнить таблицу roles_employee 40 строками


create table roles_employee (
    id serial primary key,
    employee_id integer not null unique,
    role_id integer not null ,
    foreign key (employee_id)
      references employees (id),
    foreign key (role_id)
      references roles (id)       
);


insert into roles_employee (id,employee_id,role_id)
values (default,57,7);



select *from roles_employee;

--==========================================================================================================================================


