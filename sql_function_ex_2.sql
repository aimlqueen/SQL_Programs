-- SQL function to calculate the square of a number 
use test_sql;
DELIMITER //

CREATE FUNCTION Square(Number INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN Number * Number;
END //

DELIMITER ;

SELECT Square(5) AS SquareOf5;
