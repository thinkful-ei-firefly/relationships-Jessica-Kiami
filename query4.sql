--Which projects are the Sales department employees assigned to?
SELECT distinct project_name
FROM employee
JOIN employee_project ON employee.id = employee_project.emp_id
join project on employee_project.project_id = project.id
join department on employee.department = department.id
where dept_name ilike '%sales%'