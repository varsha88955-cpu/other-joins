-- CREATE TABLES
create table departments (
    dept_id int primary key,
    dept_name varchar(100),
    location varchar(100)
);
create table employees (
    emp_id int primary key,
    emp_name varchar(100),
    salary decimal(10,2),
    dept_id int,
    foreign key (dept_id) references departments(dept_id)
);

-- INSERT DEPARTMENT DATA
insert into departments values
(1,'hr','hyderabad'),
(2,'it','bangalore'),
(3,'finance','mumbai'),
(4,'sales','delhi'),
(5,'marketing','chennai'),


-- INSERT EMPLOYEE DATA
insert into employees values
(1,'arjun',65000,2),
(2,'priya',58000,1),
(3,'rahul',72000,3),
(4,'sneha',55000,4),
(5,'kiran',45000,2),
(6,'neha',39000,null);


-- RIGHT JOIN

-- 4. Display all departments and their employees
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 5. Display employee names and department names
select e.emp_name,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 6. Display emp_id, emp_name and dept_name
select e.emp_id,e.emp_name,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 7. Display all departments including those without employees
select d.dept_id,d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 8. Display department name and employee salary
select d.dept_name,e.salary
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 9. Display all departments and employees working in each department
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 10. Display dept_id, dept_name and emp_name
select d.dept_id,d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 11. Display departments located in Hyderabad and their employees
select d.dept_name,d.location,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id
where d.location='hyderabad';


-- 12. Display all departments and employees whose salary is greater than 50000
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d on e.dept_id=d.dept_id
where e.salary>50000 or e.salary is null;


-- 13. Display all departments and employees whose salary is between 30000 and 60000
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d on e.dept_id=d.dept_id
where e.salary between 30000 and 60000 or e.salary is null;


-- 14. Display all departments and employee names in alphabetical order
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id
order by e.emp_name;


-- 15. Display all departments and employees sorted by department name
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id
order by d.dept_name;


-- 16. Display all departments where an employee exists
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.emp_id is not null;


-- 17. Display all departments including those without employees and sort employees by salary
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d on e.dept_id=d.dept_id
order by e.salary;


-- 18. Display department name, employee name and salary
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 19. Find departments that have no employees
select d.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.emp_id is null;


-- 20. Display all departments and only employees whose names start with A
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.emp_name like 'a%' or e.emp_name is null;


-- 21. Display all departments and employees earning more than 40000
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d on e.dept_id=d.dept_id
where e.salary>40000 or e.salary is null;


-- 22. Display all departments in Hyderabad or Bangalore and their employees
select d.dept_name,d.location,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id
where d.location in ('hyderabad','bangalore');


-- 23. Display department name and employee name where employee belongs to department
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.dept_id is not null;


-- 24. Display all departments and employees earning less than 50000
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d on e.dept_id=d.dept_id
where e.salary<50000 or e.salary is null;


-- 25. Display all departments and employees in descending order of salary
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d on e.dept_id=d.dept_id
order by e.salary desc;


-- 26. Display all departments and employee names sorted by employee name
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id
order by e.emp_name;


-- 27. Count employees in each department
select d.dept_name,count(e.emp_id) as employee_count
from employees e
right join departments d on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;


-- 28. Average salary of employees in each department
select d.dept_name,avg(e.salary) as average_salary
from employees e
right join departments d on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;


-- SIMULATED FULL OUTER JOIN

-- 29. Return all employees and all departments
select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 30. Employee name and department name
select e.emp_name,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_name,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 31. emp_id, emp_name, dept_id and dept_name
select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 32. All employees and all departments
select e.emp_id,e.emp_name,d.dept_id,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_id,e.emp_name,d.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 33. All employees and departments sorted by department name
select *
from (
    select e.emp_id,e.emp_name,e.dept_id,d.dept_name
    from employees e
    left join departments d on e.dept_id=d.dept_id

    union

    select e.emp_id,e.emp_name,e.dept_id,d.dept_name
    from employees e
    right join departments d on e.dept_id=d.dept_id
) as full_data
order by dept_name;


-- 34. Employee names and department names including NULL values
select e.emp_name,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_name,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 35. Find employees who do not belong to any department
select e.emp_id,e.emp_name
from employees e
left join departments d on e.dept_id=d.dept_id
where d.dept_id is null;


-- 36. Find departments that do not have any employees
select d.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.emp_id is null;


-- 37. Display employees with department names including employees without departments
select e.emp_name,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id;


-- 38. Display departments with employee names including departments without employees
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 39. Display all employees and departments where salary is greater than 50000
select e.emp_name,e.salary,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id
where e.salary>50000

union

select e.emp_name,e.salary,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.salary>50000 or e.emp_id is null;


-- 40. Display all employees and departments where department location is Hyderabad
select e.emp_name,d.dept_name,d.location
from employees e
left join departments d on e.dept_id=d.dept_id
where d.location='hyderabad'

union

select e.emp_name,d.dept_name,d.location
from employees e
right join departments d on e.dept_id=d.dept_id
where d.location='hyderabad';


-- 41. Display all records sorted by employee name
select *
from (
    select e.emp_name,e.salary,e.dept_id,d.dept_name
    from employees e
    left join departments d on e.dept_id=d.dept_id

    union

    select e.emp_name,e.salary,e.dept_id,d.dept_name
    from employees e
    right join departments d on e.dept_id=d.dept_id
) as full_data
order by emp_name;


-- 42. Display all records sorted by department name
select *
from (
    select e.emp_name,e.salary,e.dept_id,d.dept_name
    from employees e
    left join departments d on e.dept_id=d.dept_id

    union

    select e.emp_name,e.salary,e.dept_id,d.dept_name
    from employees e
    right join departments d on e.dept_id=d.dept_id
) as full_data
order by dept_name;


-- 43. Find employees with no matching department
select e.emp_id,e.emp_name
from employees e
left join departments d on e.dept_id=d.dept_id
where d.dept_id is null;


-- 44. Find departments with no matching employee
select d.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.emp_id is null;


-- 45. Display employee name, salary, department name and location
select e.emp_name,e.salary,d.dept_name,d.location
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_name,e.salary,d.dept_name,d.location
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 46. Count employees for every department including zero
select d.dept_name,count(e.emp_id) as employee_count
from employees e
right join departments d on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;


-- 47. Average salary for every department including departments with no employees
select d.dept_name,avg(e.salary) as average_salary
from employees e
right join departments d on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;


-- 48. Display all unmatched records from employees and departments
select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id
where d.dept_id is null

union

select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.emp_id is null;


-- CROSS JOIN

-- 49. Every possible combination of employees and departments
select e.emp_id,e.emp_name,d.dept_id,d.dept_name
from employees e
cross join departments d;


-- 50. Employee name and every department name
select e.emp_name,d.dept_name
from employees e
cross join departments d;


-- 51. emp_id, emp_name and dept_name
select e.emp_id,e.emp_name,d.dept_name
from employees e
cross join departments d;


-- 52. Every employee with every department location
select e.emp_name,d.location
from employees e
cross join departments d;


-- 53. Employee name, department name and location
select e.emp_name,d.dept_name,d.location
from employees e
cross join departments d;


-- 54. Total number of rows produced by cross join
select count(*) as total_combinations
from employees e
cross join departments d;


-- 55. All combinations sorted by employee name
select e.emp_name,d.dept_name
from employees e
cross join departments d
order by e.emp_name;


-- 56. All combinations sorted by department name
select e.emp_name,d.dept_name
from employees e
cross join departments d
order by d.dept_name;


-- 57. Every employee with departments located in Hyderabad
select e.emp_name,d.dept_name,d.location
from employees e
cross join departments d
where d.location='hyderabad';


-- 58. Every employee with departments located in Bangalore
select e.emp_name,d.dept_name,d.location
from employees e
cross join departments d
where d.location='bangalore';


-- 59. Employee and department combinations where salary is greater than 50000
select e.emp_name,d.dept_name
from employees e
cross join departments d
where e.salary>50000;


-- 60. Employee and department combinations where salary is between 30000 and 60000
select e.emp_name,d.dept_name
from employees e
cross join departments d
where e.salary between 30000 and 60000;


-- 61. Every employee with every department, salary and location
select e.emp_name,e.salary,d.dept_name,d.location
from employees e
cross join departments d;


-- 62. Every employee with every department ordered by salary descending
select e.emp_name,e.salary,d.dept_name
from employees e
cross join departments d
order by e.salary desc;


-- 63. All combinations and total number of combinations
select e.emp_name,d.dept_name,
       (select count(*)
        from employees
        cross join departments) as total_combinations
from employees e
cross join departments d;
