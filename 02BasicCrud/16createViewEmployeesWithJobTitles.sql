CREATE VIEW v_employees_job_titles AS
    SELECT 
        IF(middle_name IS NOT NULL,
            CONCAT_WS(' ', first_name, middle_name, last_name),
            CONCAT_WS(' ', first_name, last_name)) AS 'full_name',
        job_title
    FROM
        employees
