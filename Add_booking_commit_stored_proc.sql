DELIMITER //
CREATE PROCEDURE AddValidBooking( IN bDate DATE, IN TableNo INT)
BEGIN
DECLARE table_count INT;
DECLARE booking_id INT;

START TRANSACTION;

SELECT COUNT(*) INTO table_count
FROM bookings
WHERE BookingDate = bDate AND TableNumber = TableNo;

IF table_count > 0 THEN
	ROLLBACK;
    SELECT CONCAT('Table ', TableNo, ' is already booked - booking cancelled');
ELSE
	INSERT INTO Bookings (BookingDate, TableNumber)
	VALUES (bDate, TableNo);
    COMMIT;
    SELECT pkBookingID INTO booking_id 
    FROM bookings 
    WHERE BookingDate = bDate AND TableNumber = TableNo;
    SELECT CONCAT('Booking ', booking_id, ' confirmed for table ', TableNo);
END IF;
END //
DELIMITER ;