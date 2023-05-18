SELECT 
    town_id, name
FROM
    towns
WHERE
    LEFT(name, 1) NOT IN ('R' , 'r', 'B', 'b', 'D', 'd')
ORDER BY name