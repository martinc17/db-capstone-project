DELIMITER //
CREATE PROCEDURE CheckBooking (IN bDate DATE, IN TableNo INT)
BEGIN
SELECT 
CASE WHEN COUNT(*) >= 1 THEN CONCAT('Table ', TableNo, ' is already booked')
	WHEN COUNT(*) = 0 THEN CONCAT('Table ', TableNo, ' is free!')
	ELSE 'Something went wrong'
    END AS 'Booking Status'
FROM bookings
WHERE BookingDate = bDate
AND TableNumber = TableNo;
END //
DELIMITER ;