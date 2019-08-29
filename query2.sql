--List the names of all employees assigned to the 'Plan Christmas party' project.

SELECT emp_name
FROM employee
JOIN employee_project ON employee.id = employee_project.emp_id
JOIN project ON employee_project.project_id = project.id
where project_name ilike '%plan%'