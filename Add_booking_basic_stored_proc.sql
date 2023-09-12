DELIMITER //
CREATE PROCEDURE AddBooking (IN bID INT, IN cID INT, IN bDate DATE, IN tableNo INT)
BEGIN
INSERT INTO bookings (pkBookingID, fkCustomerID, BookingDate, TableNumber)
VALUES (bID, cID, bDate, tableNo);
SELECT "New Booking added" AS Confirmation;
END //
DELIMITER ;