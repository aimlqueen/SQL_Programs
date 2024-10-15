# create a MySQL function to determine eligibility based on age.
use test_sql;
DELIMITER $$

CREATE FUNCTION isEligible (age INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    IF age >= 18 THEN
        RETURN 'yes';
    ELSE
        RETURN 'no';
    END IF;
END$$

DELIMITER ;

SELECT isEligible(78);
