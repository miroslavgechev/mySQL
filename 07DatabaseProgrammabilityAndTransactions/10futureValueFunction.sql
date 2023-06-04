CREATE FUNCTION ufn_calculate_future_value(initial_sum DECIMAL (19,4), yearly_interest_rate DOUBLE, number_of_years INT)
RETURNS DECIMAL (19,4)
RETURN (initial_sum * pow((1+yearly_interest_rate), number_of_years));
