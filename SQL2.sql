--Таблица employees

--1. Создать таблицу employees
--a) id. serial,  primary key,
--b) employee_name. Varchar(50), not null
--2. Наполнить таблицу employee 70 строками.

create table employees (ID serial primary key,
 employees_name varchar (50) not null);
 insert into employees (employees_name)
 values ('Olia'),
 		('Sveta'),
 		('Konstantin'),
 		('Pavel'),
 		('Kate'),
 		('Dina'),
 		('Mary'),
 		('Sergey'),
 		('Mike'),
 		('Timofey'),
 		('Roma'),
 		('Alesia'),
 		('Alisa'),
 		('Nina'),
 		('Liza'),
 		('Zoya'),
 		('Ira'),
 		('Ruslan'),
 		('Harry'),
 		('Kristy'),
 		('Julia'),
 		('Lena'),
 		('Nik'),
 		('Vania'),
 		('Yura'),
 		('Vasia'),
 		('Nastia'),
 		('Tania'),
 		('Anna'),
 		('Marina'),
 		('Venia'),
 		('Filipp'),
 		('Andrey'),
 		('Vlad'),
 		('Anton'),
 		('Alex'),
 		('Lida'),
 		('Nadia'),
 		('Alina'),
 		('Marina'),
 		('Inna'),
 		('Polina'),
 		('Natasha'),
 		('Petya'),
 		('Danik'),
 		('Dima'),
 		('Ruvim'),
 		('Lev'),
 		('Vadim'),
 		('Vitya'),
 		('Lena'),
 		('Daniil'),
 		('Angelina'),
 		('Klava'),
 		('Artur'),
 		('Yana'),
 		('Valera'),
 		('Bogdan'),
 		('Evgeny'),
 		('Uliana'),
 		('Maya'),
 		('Marta'),
 		('Vika'),
 		('Rustam'),
 		('Marat'),
 		('Vladimir'),
 		('Lina'),
 		('Selen'),
 		('Vasilisa'),
 		('Milina');
 
--Таблица salary
--3. Создать таблицу salary
--a) id. Serial  primary key,
--b) monthly_salary. Int, not null
--4. Наполнить таблицу salary 15 строками:

 	create table salary (ID serial primary key,
 		monthly_salary int not null);
 	insert into salary (monthly_salary)
 	values  (1000),
 			(1100),
 			(1200),
 			(1300),
 			(1400),
 			(1500),
 			(1600),
 			(1700),
 			(1800),
 			(1900),
 			(2000),
 			(2100),
 			(2200),
 			(2300),
 			(2400);
 		
 		
-- Таблица employee_salary
--5. Создать таблицу employee_salary
--a) id. Serial  primary key,
--b) employee_id. Int, not null, unique
--c) salary_id. Int, not null
--6. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
 create table employees_salary (ID serial primary key,
 	employees_id int not null unique,
 	salary_id int not null);
 insert into employees_salary (employees_id, salary_id)
 values (71, 1),
 		(72, 2),
 		(73, 3),
 		(74, 4),
 		(75, 5),
 		(76, 6),
 		(77, 7),
 		(78, 8),
 		(79, 9),
 		(80, 10),
 		(3, 7),
 		(1, 4),
 		(5, 9),
 		(40, 13),
 		(23, 4),
 		(11, 2),
 		(52, 10),
 		(15, 13),
 		(26, 4),
 		(16, 1),
 		(33, 7),
 		(69, 15),
 		(67, 13),
 		(66, 11),
 		(65, 9),
 		(60, 7),
 		(59, 5),
 		(57, 12),
 		(56, 14),
 		(55, 8),
 		(53, 1),
 		(35, 4),
 		(30, 10),
 		(41, 2),
 		(43, 7),
 		(44, 5),
 		(45, 13),
 		(48, 15),
 		(2, 4),
 		(22, 11);
 	
 
--Таблица roles
--7. Создать таблицу roles
--a) id. Serial  primary key,
--b) role_name. int, not null, unique
--8. Поменять тип столба role_name с int на varchar(30)
--9. Наполнить таблицу roles 20 строками:
create table roles (ID serial primary key,
 		role_name int not null unique);
 
alter table roles alter column role_name type varchar(30);
insert into roles (role_name)
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');


--Таблица roles_employee
--10. Создать таблицу roles_employee
--a) id. Serial  primary key,
--b) employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--c) role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--11. Наполнить таблицу roles_employee 40 строками:
create table roles_employees (
		ID serial primary key,
		employees_id int not null unique,
		role_id int not null,		
foreign key (employees_id)
references employees (ID),
foreign key (role_id)
references roles(ID));

insert into roles_employees (employees_id, role_id)
values  (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(8, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(1, 20),
		(2, 12),
		(4, 14),
		(28, 1),
		(9, 11),
		(23, 10),
		(24, 2),
		(25, 6),
		(26, 7),
		(27, 5),
		(30, 1),
		(31, 3),
		(40, 8),
		(41, 4),
		(45, 19),
		(44, 17),
		(50, 15),
		(55, 14),
		(57, 11),
		(60, 12),
		(63, 16),
		(65, 17),
		(66, 7),
		(69, 2),
		(70, 3),
		(62, 1),
		(67, 5),
		(43, 4),
		(49, 9);

 	
 	select * from roles;
	