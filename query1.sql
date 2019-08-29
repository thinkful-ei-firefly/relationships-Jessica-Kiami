--How many people work in the Sales department?

SELECT COUNT(DISTINCT emp_name)
FROM employee
JOIN department ON employee.department = department.id
WHERE dept_name ILIKE 'sales'