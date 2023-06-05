SELECT 
    (SELECT 
            COUNT(*)
        FROM
            products AS p
        WHERE
            p.category_id = c.id) AS items_count,
    c.name,
    (SELECT 
            SUM(quantity_in_stock)
        FROM
            products AS pr
        WHERE
            pr.category_id = c.id) AS total_quantity
FROM
    categories AS c
ORDER BY items_count DESC , total_quantity ASC
LIMIT 5;

-- SELECT 
--     COUNT(c.id) AS 'items_count',
--     c.name,
--     SUM(p.quantity_in_stock) AS 'total_quantity'
-- FROM
--     products p
--         JOIN
--     categories c ON c.id = p.category_id
-- GROUP BY c.id
-- ORDER BY `items_count` DESC , total_quantity ASC
-- LIMIT 5;
