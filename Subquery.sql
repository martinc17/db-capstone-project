

SELECT
	MenuName
FROM
	Menus
WHERE
pkMenuID = ANY
(SELECT
	fkMenuID
FROM
	Orders
WHERE
	Quantity > 2)