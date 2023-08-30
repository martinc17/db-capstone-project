SELECT
	c.pkCustomerID,
    c.FullName,
    o.pkOrderID,
    o.Cost,
    m.MenuName,
    mi.Name
FROM
	Customers c
	INNER JOIN Orders o ON c.pkCustomerID = o.fkCustomerID
	INNER JOIN Menus m ON o.fkMenuID = m.pkMenuID
	INNER JOIN MenuItems mi ON m.pkMenuID = mi.fkMenuID
WHERE
	o.cost > 150
    AND mi.type = 'Starter'
ORDER BY
	o.Cost