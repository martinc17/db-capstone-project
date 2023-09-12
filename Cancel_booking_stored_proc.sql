DELIMITER //
CREATE PROCEDURE CancelBooking ( IN bID INT)
BEGIN
DELETE FROM bookings
WHERE pkBookingID = bID;
SELECT CONCAT("Booking ", bID, " cancelled") AS Confirmation;
END //
DELIMITER ;