DELIMITER //
CREATE PROCEDURE CancelOrder( IN OrderID INT)
BEGIN
DELETE
FROM 
	Orders
where
	pkOrderID = OrderID;
SELECT concat('Order ', OrderID, ' has been cancelled.') AS Confirmation;
END //

DELIMITER ;