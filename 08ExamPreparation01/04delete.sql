DELETE FROM waiters 
WHERE
    id IN (SELECT 
        *
    FROM
        (SELECT 
            w.id
        FROM
            waiters AS w
        LEFT JOIN orders AS o ON w.id = o.waiter_id
        GROUP BY w.id
        HAVING COUNT(o.waiter_id = w.id) = 0) AS id);

-- DELETE FROM waiters as w
-- WHERE (SELECT COUNT(*) FROM orders WHERE waiter_id = w_id) = 0;