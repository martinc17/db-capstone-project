--Populate menus table
INSERT INTO littlelemondm.menus(pkMenuID, MenuName, Cuisine)
VALUES (1, 'Smokehouse Meal', 'American'),
	(2, 'Greek Meal', 'Greek'),
	(3, 'Pizza Meal', 'Italian'),
	(4, 'Chinese Meal', 'Chinese') 

-- Populate customers table
INSERT INTO littlelemondm.customers (pkCustomerID, Fullname, Email, PhoneNumber)
VALUES (1, 'John Doe', 'john@example.com', '555-1234'),
	(2, 'Jane Smith', 'jane@example.com', '555-5678'),
	(
		3,
		'Michael Johnson',
		'michael@example.com',
		'555-7890'
	),
	(
		4,
		'Emily Brown',
		'emily@example.com',
		'555-2345'
	),
	(
		5,
		'William Lee',
		'william@example.com',
		'555-6789'
	),
	(
		6,
		'Sophia Davis',
		'sophia@example.com',
		'555-3456'
	),
	(
		7,
		'James Wilson',
		'james@example.com',
		'555-4567'
	),
	(
		8,
		'Olivia Garcia',
		'olivia@example.com',
		'555-8901'
	),
	(
		9,
		'Liam Martinez',
		'liam@example.com',
		'555-5678'
	),
	(
		10,
		'Ava Anderson',
		'ava@example.com',
		'555-1234'
	),
	(
		11,
		'Noah Taylor',
		'noah@example.com',
		'555-7890'
	),
	(
		12,
		'Emma Rodriguez',
		'emma@example.com',
		'555-2345'
	),
	(
		13,
		'Sophia Hernandez',
		'sophia2@example.com',
		'555-6789'
	),
	(
		14,
		'Jackson Lopez',
		'jackson@example.com',
		'555-3456'
	),
	(
		15,
		'Oliver Moore',
		'oliver@example.com',
		'555-4567'
	) 

-- Populate orders table
INSERT INTO littlelemondm.orders (
		pkOrderID,
		fkCustomerID,
		Cost,
		Quantity,
		fkMenuID
	)
VALUES (1, 1, 75.00, 1, 1),
	(2, 2, 150.00, 2, 1),
	(3, 3, 75.00, 1, 2),
	(4, 4, 150.00, 2, 2),
	(5, 5, 75.00, 1, 3),
	(6, 6, 225.00, 3, 3),
	(7, 7, 75.00, 1, 4),
	(8, 8, 300.00, 4, 4),
	(9, 9, 75.00, 1, 1),
	(10, 10, 150.00, 2, 1),
	(11, 11, 75.00, 1, 2),
	(12, 12, 150.00, 2, 2),
	(13, 13, 75.00, 1, 3),
	(14, 14, 375.00, 5, 3),
	(15, 15, 75.00, 1, 4) 

-- Populate staff table
INSERT INTO littlelemondm.staff (
		pkStaffID,
		Name,
		Role,
		Salary,
		PhoneNumber
	)
VALUES (1, 'Steve', 'Manager', 45000, '555-4321'),
	(2, 'Lucy', 'Head Chef', 40000, '555-7745'),
	(3, 'Dan', 'Chef', 30000, '555-6767'),
	(4, 'Kate', 'Server', 25000, '555-9812'),
	(5, 'Joe', 'Server', 25000, '555-7420') 
	

-- Populate MenuItems
INSERT INTO MenuItems (pkItemID, Name, Type, fkMenuID)
VALUES (1, 'Buffalo Wings', 'Starter', 1),
	(2, 'Brisket Burger', 'Main', 1),
	(3, 'Ice Cream Sundae', 'Dessert', 1),
	(4, 'Greek Salad', 'Starter', 2),
	(5, 'Chicken Gyros', 'Main', 2),
	(6, 'Baklava', 'Dessert', 2),
	(7, 'Bruschetta', 'Starter', 3),
	(8, 'Pizza', 'Main', 3),
	(9, 'Tiramisu', 'Dessert', 3),
	(10, 'Spring Rolls', 'Starter', 4),
	(11, 'Hoisin Duck', 'Main', 4),
	(12, 'Red Bean Bun', 'Dessert', 4)