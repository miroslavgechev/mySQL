SELECT 
    -- CONCAT_WS(' ', first_name, middle_name, last_name) AS 'Full Name'
    first_name, middle_name, last_name
FROM
    employees
ORDER BY employee_id