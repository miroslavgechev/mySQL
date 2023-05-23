SELECT 
    department_id,
    (SELECT DISTINCT
            salary
        FROM
            employees AS e1
        WHERE
            employees.department_id = e1.department_id
        ORDER BY salary DESC
        LIMIT 1 OFFSET 2) AS third_highest_salary
FROM
    employees
GROUP BY department_id
HAVING third_highest_salary IS NOT NULL
ORDER BY department_id ASC;