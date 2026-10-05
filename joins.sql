-- 1. Display all departments and their employees
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- 2. Display employee names and department names
select e.emp_name,d.dept_name
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- 3. Display emp_id, emp_name and dept_name
select e.emp_id,e.emp_name,d.dept_name
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- 4. Return all departments, including those without employees
select d.dept_id,d.dept_name,e.emp_id,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- 5. Display department name and employee salary
select d.dept_name,e.salary
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- 6. Display all departments and the employees working in each department
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- 7. Display dept_id, dept_name and emp_name
select d.dept_id,d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- 8. Display departments located in Hyderabad and their employees
select d.dept_name,d.location,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id
and d.location='hyderabad';


-- 9. Display all departments and employees whose salary is greater than 50000
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d
on e.dept_id=d.dept_id
and e.salary>50000;


-- 10. Display all departments and employees whose salary is between 30000 and 60000
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d
on e.dept_id=d.dept_id
and e.salary between 30000 and 60000;


-- 11. Display all departments and employee names in alphabetical order
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id
order by e.emp_name;


-- 12. Display all departments and employees sorted by department name
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id
order by d.dept_name;


-- 13. Display all departments where an employee exists
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id
where e.emp_id is not null;


-- 14. Display all departments including those without employees and sort employees by salary
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d
on e.dept_id=d.dept_id
order by e.salary;


-- 15. Display department name, employee name and salary for every department
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d
on e.dept_id=d.dept_id;


-- 16. Find departments that have no employees
select d.dept_id,d.dept_name
from employees e
right join departments d
on e.dept_id=d.dept_id
where e.emp_id is null;


-- 17. Display all departments and only employees whose names start with A
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id
and e.emp_name like 'a%';


-- 18. Display all departments and employees earning more than 40000
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d
on e.dept_id=d.dept_id
and e.salary>40000;


-- 19. Display all departments in Hyderabad or Bangalore and their employees
select d.dept_name,d.location,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id
and d.location in ('hyderabad','bangalore');


-- 20. Display department name and employee name where employee belongs to department
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id
where e.dept_id is not null;


-- 21. Display all departments and employees earning less than 50000
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d
on e.dept_id=d.dept_id
and e.salary<50000;


-- 22. Display all departments and employees in descending order of salary
select d.dept_name,e.emp_name,e.salary
from employees e
right join departments d
on e.dept_id=d.dept_id
order by e.salary desc;


-- 23. Display all departments and employee names sorted by employee name
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id
order by e.emp_name;


-- 24. Count employees in each department
select d.dept_name,count(e.emp_id) as employee_count
from employees e
right join departments d
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;


-- 25. Average salary of employees in each department
select d.dept_name,avg(e.salary) as average_salary
from employees e
right join departments d
on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;


-- SIMULATED FULL OUTER JOIN

-- 26. Return all employees and all departments
select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 27. Employee name and department name
select e.emp_name,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_name,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 28. emp_id, emp_name, dept_id and dept_name
select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_id,e.emp_name,e.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 29. All employees and all departments
select e.emp_id,e.emp_name,d.dept_id,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_id,e.emp_name,d.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 30. All employees and departments sorted by department name
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


-- 31. Employee names and department names including NULL values
select e.emp_name,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_name,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 32. Find employees who do not belong to any department
select e.emp_id,e.emp_name
from employees e
left join departments d on e.dept_id=d.dept_id
where d.dept_id is null;


-- 33. Find departments that do not have any employees
select d.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.emp_id is null;


-- 34. Display employees with department names including employees without departments
select e.emp_name,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id;


-- 35. Display departments with employee names including departments without employees
select d.dept_name,e.emp_name
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 36. Display all employees and departments where salary is greater than 50000
select e.emp_name,e.salary,d.dept_name
from employees e
left join departments d on e.dept_id=d.dept_id
where e.salary>50000

union

select e.emp_name,e.salary,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.salary>50000 or e.emp_id is null;


-- 37. Display all employees and departments where department location is Hyderabad
select e.emp_name,d.dept_name,d.location
from employees e
left join departments d on e.dept_id=d.dept_id
where d.location='hyderabad'

union

select e.emp_name,d.dept_name,d.location
from employees e
right join departments d on e.dept_id=d.dept_id
where d.location='hyderabad';


-- 38. Display all records sorted by employee name
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


-- 39. Display all records sorted by department name
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


-- 40. Find employees with no matching department
select e.emp_id,e.emp_name
from employees e
left join departments d on e.dept_id=d.dept_id
where d.dept_id is null;


-- 41. Find departments with no matching employee
select d.dept_id,d.dept_name
from employees e
right join departments d on e.dept_id=d.dept_id
where e.emp_id is null;


-- 42. Display employee name, salary, department name and location
select e.emp_name,e.salary,d.dept_name,d.location
from employees e
left join departments d on e.dept_id=d.dept_id

union

select e.emp_name,e.salary,d.dept_name,d.location
from employees e
right join departments d on e.dept_id=d.dept_id;


-- 43. Count employees for every department including zero
select d.dept_name,count(e.emp_id) as employee_count
from employees e
right join departments d on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;


-- 44. Average salary for every department including departments with no employees
select d.dept_name,avg(e.salary) as average_salary
from employees e
right join departments d on e.dept_id=d.dept_id
group by d.dept_id,d.dept_name;


-- 45. Display all unmatched records from employees and departments
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

-- 46. Every possible combination of employees and departments
select e.emp_id,e.emp_name,d.dept_id,d.dept_name
from employees e
cross join departments d;


-- 47. Employee name and every department name
select e.emp_name,d.dept_name
from employees e
cross join departments d;


-- 48. emp_id, emp_name and dept_name
select e.emp_id,e.emp_name,d.dept_name
from employees e
cross join departments d;


-- 49. Every employee with every department location
select e.emp_name,d.location
from employees e
cross join departments d;


-- 50. Employee name, department name and location
select e.emp_name,d.dept_name,d.location
from employees e
cross join departments d;


-- 51. Total number of rows produced by cross join
select count(*) as total_combinations
from employees e
cross join departments d;


-- 52. All combinations sorted by employee name
select e.emp_name,d.dept_name
from employees e
cross join departments d
order by e.emp_name;


-- 53. All combinations sorted by department name
select e.emp_name,d.dept_name
from employees e
cross join departments d
order by d.dept_name;


-- 54. Every employee with departments located in Hyderabad
select e.emp_name,d.dept_name,d.location
from employees e
cross join departments d
where d.location='hyderabad';


-- 55. Every employee with departments located in Bangalore
select e.emp_name,d.dept_name,d.location
from employees e
cross join departments d
where d.location='bangalore';


-- 56. Employee and department combinations where salary is greater than 50000
select e.emp_name,d.dept_name
from employees e
cross join departments d
where e.salary>50000;


-- 57. Employee and department combinations where salary is between 30000 and 60000
select e.emp_name,d.dept_name
from employees e
cross join departments d
where e.salary between 30000 and 60000;


-- 58. Every employee with every department, salary and location
select e.emp_name,e.salary,d.dept_name,d.location
from employees e
cross join departments d;


-- 59. Every employee with every department ordered by salary descending
select e.emp_name,e.salary,d.dept_name
from employees e
cross join departments d
order by e.salary desc;


-- 60. All combinations and total number of combinations
select e.emp_name,d.dept_name,
       (select count(*)
        from employees
        cross join departments) as total_combinations
from employees e
cross join departments d;
