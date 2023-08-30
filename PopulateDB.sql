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
INSERT INTO littlelemondm.staff (pkStaffID, Name, Role, Salary, PhoneNumber)
VALUES (1, 'Steve', 'Manager', 45000, '555-4321'),
	(2, 'Lucy', 'Head Chef', 40000, '555-7745'),
	(3, 'Dan', 'Chef', 30000, '555-6767'),
	(4, 'Kate', 'Server', 25000, '555-9812'),
	(5, 'Joe', 'Server', 25000, '555-7420') 

-- Populate bookings table
INSERT INTO littlelemondm.bookings (
		pkBookingID,
		BookingDate,
		BookingTime,
		TableNumber,
		NumberOfGuests,
		fkCustomerID,
		fkStaffID
	)
VALUES (1, '2023-07-05', '17:30:00', 1, 1, 1, 4),
	(2, '2023-07-10', '18:00:00', 2, 2, 2, 5),
	(3, '2023-07-15', '18:30:00', 3, 1, 3, 4),
	(4, '2023-07-20', '19:00:00', 4, 2, 4, 5),
	(5, '2023-07-25', '19:30:00', 5, 1, 5, 4),
	(6, '2023-07-06', '20:00:00', 1, 3, 6, 5),
	(7, '2023-07-11', '17:30:00', 2, 1, 7, 4),
	(8, '2023-07-16', '18:00:00', 3, 4, 8, 5),
	(9, '2023-07-21', '18:30:00', 4, 1, 9, 4),
	(10, '2023-07-26', '19:00:00', 5, 2, 10, 5),
	(11, '2023-07-07', '19:30:00', 1, 1, 11, 4),
	(12, '2023-07-12', '20:00:00', 2, 2, 12, 5),
	(13, '2023-07-17', '17:30:00', 3, 1, 13, 4),
	(14, '2023-07-22', '18:00:00', 4, 5, 14, 5),
	(15, '2023-07-27', '18:30:00', 5, 1, 15, 4)