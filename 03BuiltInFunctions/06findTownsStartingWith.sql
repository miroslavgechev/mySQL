SELECT 
    town_id, name
FROM
    towns
WHERE
    UPPER(LEFT(name, 1)) IN ('M' , 'K', 'B', 'E')
ORDER BY name