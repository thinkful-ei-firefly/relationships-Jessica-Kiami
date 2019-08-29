--List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
SELECT emp_name
FROM employee
join department on employee.department = department.id
join employee_project on employee.id = employee_project.emp_id
join project on employee_project.project_id = project.id
where dept_name ilike '%warehouse%'
and project_name ilike'%paint%'