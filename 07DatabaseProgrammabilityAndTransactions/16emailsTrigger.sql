CREATE TABLE logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    old_sum DECIMAL(19 , 4 ),
    new_sum DECIMAL(19 , 4 )
);

DELIMITER $$
CREATE TRIGGER tr_account_balance_update
AFTER UPDATE
ON accounts
FOR EACH ROW
BEGIN
	INSERT INTO logs (account_id, old_sum, new_sum)
    VALUES (OLD.id, OLD.balance, NEW.balance);
END $$
DELIMITER ; ;

CREATE TABLE notification_emails (
id INT PRIMARY KEY AUTO_INCREMENT,
recipient INT NOT NULL,
subject VARCHAR(100) NOT NULL,
body VARCHAR(200) NOT NULL
);

DELIMITER $$
CREATE TRIGGER tr_email_creation
AFTER INSERT
ON logs
FOR EACH ROW
BEGIN
	INSERT INTO notification_emails (recipient, subject, body)
    VALUES (NEW.account_id, concat_ws(' ','Balance change for account:', NEW.account_id), concat('On ', now(),' your balance was changed from ', NEW.old_sum, ' to ', NEW.new_sum, '.'));
END$$
DELIMITER ; ;