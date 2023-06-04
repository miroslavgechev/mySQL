DELIMITER $$
CREATE FUNCTION ufn_calculate_future_value(initial_sum DECIMAL (19,4), yearly_interest_rate DOUBLE, number_of_years INT)
RETURNS DECIMAL (19,4)
RETURN (initial_sum * pow((1+yearly_interest_rate), number_of_years));

CREATE PROCEDURE usp_calculate_future_value_for_account(selected_id INT, interest_rate DECIMAL(8, 4))
BEGIN
    SELECT 
		a.id as account_id,
		ah.first_name as first_name,
		ah.last_name as last_name,
		a.balance AS current_balance,
		ufn_calculate_future_value(a.balance, interest_rate, 5) as balance_in_5_years
	FROM
		account_holders AS ah
			JOIN
		accounts AS a ON ah.id = a.account_holder_id
	WHERE
		a.id = selected_id;
END $$
DELIMITER ; ;