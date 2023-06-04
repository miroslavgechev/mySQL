DELIMITER $$
CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(19,4))
	BEGIN
		START TRANSACTION;
        
        IF money_amount < 0 OR 
        (SELECT balance from accounts where id = account_id) < money_amount 
        THEN
        ROLLBACK;
        
        ELSE
        
		UPDATE accounts
        SET balance = balance - money_amount
		WHERE account_id = id;
            
		END IF;
    END$$
DELIMITER ; ; 