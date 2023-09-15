--
-- Data for Name: merchandise
--

--INSERT INTO merchandise (id, item, description, saleunit, FIXME, inventory, inventorydate) VALUES (1, 'Earth Rise T-Shirt', 'T-shirt with earth rising over moon', '1 T-Shirt', 15.50, 20, FIXME);
--INSERT INTO merchandise (id, item, description, saleunit, FIXME, inventory, inventorydate) VALUES (2, 'Earth Rise Puzzle', '1000 piece jigsaw puzzle of earth rising over moon', '1 box', 9.35, 15, '2020-03-01');
--INSERT INTO merchandise (id, item, description, saleunit, FIXME, inventory, inventorydate) VALUES (3, 'Endangered Habitats', 'Tabletop book', '1 book', 35.30, 25, '2020-03-01');
--INSERT INTO merchandise (id, item, description, saleunit, FIXME, inventory, inventorydate) VALUES (4, 'Last Views', '4k UHD documentary on endangered species', '1 disc', 23.90, 10, '2020-04-12');
--INSERT INTO merchandise (id, item, description, saleunit, FIXME, inventory, inventorydate) VALUES (5, 'Call to Action', 'Book on climate change action', '1 book', FIXME, 30, '2020-04-15');

--INSERT INTO merchandise (id, item, description, saleunit, FIXME, inventory, inventorydate) 
--VALUES 
--(1, 'Earth Rise T-Shirt', 'T-shirt with earth rising over moon', '1 T-Shirt', 15.50, 20, FIXME);
--(2, 'Earth Rise Puzzle', '1000 piece jigsaw puzzle of earth rising over moon', '1 box', 9.35, 15, '2020-03-01');
--(3, 'Endangered Habitats', 'Tabletop book', '1 book', 35.30, 25, '2020-03-01');
--(4, 'Last Views', '4k UHD documentary on endangered species', '1 disc', 23.90, 10, '2020-04-12');
--(5, 'Call to Action', 'Book on climate change action', '1 book', FIXME, 30, '2020-04-15');

INSERT INTO merch (id, name, description, priceperunit, inventory, units, dateentered) 
VALUES 
(1, 'Earth Rise T-Shirt', 'T-shirt with earth rising over moon', 15.50, 20, '1 T-Shirt', '2020-02-15'),
(2, 'Earth Rise Puzzle', '1000 piece jigsaw puzzle of earth rising over moon', 9.35, 15, '1 box', '2020-03-01'),
(3, 'Endangered Habitats', 'Tabletop book', 35.30, 25, '1 book', '2020-03-01'),
(4, 'Last Views', '4k UHD documentary on endangered species', 23.90, 10, '1 disc', '2020-04-12'),
(5, 'Call to Action', 'Book on climate change action', 6.45, 30, '1 book', '2020-04-15');

--
-- Data for Name: sale
--

--INSERT INTO sale (id, customer, billingaddress, shippingaddress, dateordered, dateshipped) VALUES (2, 4, '303 South Market
--Seattle, WA, 98112', '120 Pine Street
--Seattle, WA 98122', '2020-10-09', '2019-10-12');
--INSERT INTO sale (id, customer, billingaddress, shippingaddress, dateordered, dateshipped) VALUES (1, 8, '161 Brown Street, Chicago, IL, 80092', 'same', '2020-10-02', '2020-10-04');
--INSERT INTO sale (id, customer, billingaddress, shippingaddress, dateordered, dateshipped) VALUES (3, 9, '2020 North Street
--San Francisco, CA. 99122', NULL, '2020-10-30', NULL);

--INSERT INTO sale (id, customer, billingaddress, shippingaddress, dateordered, dateshipped)
--VALUES 
--(1, 8, '161 Brown Street, Chicago, IL, 80092', 'same', '2020-10-02', '2020-10-04'),
--(2, 4, '303 South Market Seattle, WA, 98112', '120 Pine Street Seattle, WA 98122', '2020-10-09', '2019-10-12'),
--(3, 9, '2020 North Street San Francisco, CA. 99122', NULL, '2020-10-30', NULL);

INSERT INTO sale (ID, CustomerID, BillingAddress, ShippingAddress, DateOrdered, DateShipped)
VALUES
(1, 8, '161 Brown Street, Chicago, IL, 80092', 'same', '2020-10-02', '2020-10-04'),
(2, 4, '303 South Market Seattle, WA, 98112', '120 Pine Street Seattle, WA 98122', '2020-10-09', '2019-10-12'),
(3, 9, '2020 North Street San Francisco, CA. 99122', NULL, '2020-10-30', NULL);

--
-- FIXME: How to capture sale/item/quantity?
--

INSERT INTO SoldItem (SalesID, MerchID, Quantity)
VALUES
(1, 2, 2),
(1, 1, 1),
(2, 1, 3),
(3, 4, 1);


