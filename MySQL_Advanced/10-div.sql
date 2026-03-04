-- Create a function and divides two numbers
DELIMITER $$

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF b != 0 THEN
        RETURN a / b;
    ELSE
        RETURN 0;
    END IF;
END$$

DELIMITER ;