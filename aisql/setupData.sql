
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Birthday, Points) VALUES
(1, 'Steve', 'Marsh', 'smarsh@gmail.com', '2015-01-08', 0),
(2, 'Derrik', 'Something', 'dsomething@gmail.com', '2010-05-09', 0),
(3, 'Koby', 'Cutler', 'kcutler@gmail.com', '2001-07-06', 0),
(4, 'Joshua', 'Culmer', 'jculmer@gmail.com', '2000-07-06', 0),
(5, 'Devin', 'Frandsen', 'dfrandsen@gmail.com', '2000-07-06', 0);

INSERT INTO Cookie (CookieID, Type, CookieName, GlutenFree, DairyFree) VALUES
(1, 'CC', 'Chocolate Chip', false, false),
(2, 'PK', 'Pumpkin Chocolate Chip', false, false),
(3, 'SC', 'Strawberry Creme', true, false),
(4, 'OR', 'Oatmeal Raisin', true, true);

INSERT INTO "Order" (OrderID, ShopID, CustomerID) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 2, 2),
(4, 2, 5),
(5, 3, 4);

INSERT INTO CookieOrder (OrderID, CookieID, Amount) VALUES
(1, 1, 3),
(1, 2, 1),
(1, 4, 1),
(2, 3, 2),
(2, 1, 1),
(3, 1, 4),
(4, 2, 1),
(4, 3, 1),
(5, 1, 5);

INSERT INTO Shop (ShopID, AddressID, PhoneNumber) VALUES
(1, 1, '8012565256'),
(2, 2, '1574823695'),
(3, 3, '8017482569');

INSERT INTO Address (AddressID, State, Zip, City) VALUES
(1, 'UT', 84101, 'Salt Lake City'),
(2, 'CO', 81611, 'Aspen'),
(3, 'FL', 32619, 'Bell');

INSERT INTO CookieShop (ShopID, CookieID) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2);
