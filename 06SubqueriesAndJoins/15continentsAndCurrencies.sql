SELECT 
    c.continent_code,
    c.currency_code,
    COUNT(*) AS currency_usage
FROM
    countries AS c
GROUP BY continent_code , currency_code
HAVING currency_usage > 1
    AND currency_usage = (SELECT 
        COUNT(*) AS curr_usage
    FROM
        countries AS c1
    GROUP BY continent_code , currency_code
    HAVING c1.continent_code = c.continent_code
    ORDER BY curr_usage DESC
    LIMIT 1)
ORDER BY continent_code , currency_code