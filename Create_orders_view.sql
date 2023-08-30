USE littlelemondm;
CREATE OR REPLACE VIEW OrdersView AS 
SELECT
	pkOrderID,
    Quantity,
    Cost
FROM
	Orders
WHERE
	Quantity > 2;