SELECT 
    e.employee_id,
    CONCAT_WS(' ', e.first_name, e.last_name) AS employee_name,
    (SELECT 
            CONCAT_WS(' ', e1.first_name, e1.last_name) AS manager_name
        FROM
            employees AS e1
        WHERE
            e.manager_id = e1.employee_id) AS manager_name,
    d.name AS department_name
FROM
    employees AS e
        JOIN
    departments AS d ON e.department_id = d.department_id
WHERE
    e.manager_id IS NOT NULL
ORDER BY e.employee_id ASC
LIMIT 5