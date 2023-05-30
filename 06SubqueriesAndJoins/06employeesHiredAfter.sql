SELECT 
    first_name, last_name, hire_date, name AS dept_name
FROM
    employees
        JOIN
    departments ON employees.department_id = departments.department_id
WHERE
    hire_date > '1999-01-01'
        AND departments.name IN ('Sales' , 'Finance')
ORDER BY hire_date ASC