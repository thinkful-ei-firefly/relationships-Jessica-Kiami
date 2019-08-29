--List only the managers that are assigned to the 'Watch paint dry' project.

SELECT *
FROM employee
JOIN department ON employee.department = department.id
join employee_project on employee_project.emp_id = employee.id
join project on employee_project.project_id = project.id
where manager = employee.id
and project_name ilike '%paint%'