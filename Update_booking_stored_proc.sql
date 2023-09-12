DELIMITER //
CREATE PROCEDURE UpdateBooking (IN bID INT, IN bDate DATE)
BEGIN
UPDATE bookings
SET BookingDate = bDate
WHERE pkBookingID = bID;
SELECT CONCAT("Booking ", bID, " updated") AS Confirmation;
END //
DELIMITER ;