PREPARE GetOrderDetail FROM 'SELECT pkOrderID, Quantity, Cost FROM Orders WHERE pkOrderID = ?;';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;