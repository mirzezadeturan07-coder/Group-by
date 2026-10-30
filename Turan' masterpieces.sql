create table Employees(
	id serial primary key,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	department varchar(50) not null,
	position varchar(50) not null,
	salary decimal(10,2) not null,
	hire_date Date not null,
	city varchar(50) not null
)

INSERT INTO Employees (first_name, last_name, department, position, salary, hire_date, city) VALUES
('Elvin',  'Mammadov',   'IT',        'Developer',  4500, '2021-03-15', 'Baku'),
('Nigar',  'Aliyeva',    'IT',        'Developer',  3800, '2022-06-01', 'Baku'),
('Rauf',   'Huseynov',   'IT',        'Tester',     3200, '2023-01-10', 'Ganja'),
('Kamran', 'Quliyev',    'IT',        'Team Lead',  5200, '2019-09-20', 'Baku'),
('Leyla',  'Hasanova',   'IT',        'Developer',  2800, '2024-02-05', 'Sumgayit'),
('Aysel',  'Babayeva',   'HR',        'Recruiter',  1800, '2022-04-12', 'Baku'),
('Orxan',  'Safarov',    'HR',        'Manager',    2200, '2020-11-03', 'Ganja'),
('Sabina', 'Rzayeva',    'Finance',   'Accountant', 3500, '2021-07-19', 'Baku'),
('Tural',  'Nabiyev',    'Finance',   'Analyst',    4000, '2020-05-25', 'Sumgayit'),
('Gunel',  'Ismayilova', 'Finance',   'Accountant', 3100, '2023-08-14', 'Mingachevir'),
('Ruslan', 'Jafarov',    'Sales',     'Manager',    2500, '2021-10-01', 'Baku'),
('Fidan',  'Karimova',   'Sales',     'Sales Rep',  2000, '2023-03-27', 'Ganja'),
('Elchin', 'Abbasov',    'Sales',     'Sales Rep',  1900, '2024-05-16', 'Sumgayit'),
('Aynur',  'Valiyeva',   'Sales',     'Sales Rep',  2300, '2022-12-09', 'Baku'),
('Murad',  'Hajiyev',    'Marketing', 'Designer',   1500, '2023-09-04', 'Mingachevir'),
('Zaur',   'Mustafayev', 'Marketing', 'SMM',        1800, '2022-02-21', 'Baku'),
('Narmin', 'Tagiyeva',   'Marketing', 'SMM',        1700, '2024-01-15', 'Ganja');



select * from Employees

--1
select count(*) from Employees 
select avg(salary) from Employees
select max(salary) from Employees
select min(salary) from Employees
select sum(salary) from Employees

--2
select department, count(*) from Employees group by department
select department, avg(salary) from Employees group by department
select city, count(*), max(salary) from Employees group by city
select department, position, count(*) from Employees group by department, position


--3
select department, count(*) from Employees group by department
having count(*)>2
select department, avg(salary) from Employees group by department
having avg(salary)>3000
select department, sum(salary) from Employees group by department
having sum(salary)>8000

--4
select department, avg(salary) from Employees
where hire_date>'2020-12-31'  
group by department
having avg(salary)>2500

select department, count(*)  from Employees
where city = 'Baku'
group by department
having count(*)>2






