SELECT 
    deposit_group
FROM
    wizzard_deposits
GROUP BY deposit_group
HAVING AVG(magic_wand_size)
LIMIT 1

