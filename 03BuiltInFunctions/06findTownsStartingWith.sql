SELECT 
    town_id, name
FROM
    towns
WHERE
    LEFT(name, 1) IN ('M' , 'K', 'B', 'E', 'm', 'k', 'b', 'e')
ORDER BY name