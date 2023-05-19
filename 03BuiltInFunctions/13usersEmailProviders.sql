SELECT 
    user_name,
    SUBSTRING(email, LOCATE('@', email) + 1) AS 'email provider'
    -- SUBSTRING_INDEX(email, '@', - 1)
FROM
    users
ORDER BY `email provider` , user_name