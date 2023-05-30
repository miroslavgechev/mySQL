SELECT 
    first_name, last_name, towns.name AS 'town', address_text
FROM
    employees
        JOIN
    addresses ON employees.address_id = addresses.address_id
        JOIN
    towns ON addresses.town_id = towns.town_id
ORDER BY first_name ASC , last_name ASC
LIMIT 5