-- Report the amount of each sale. For each order, print the date ordered
-- and the total amount of the sale.
--
-- 25 points
--

-- Suggestion: start by making a SELECT/JOIN that computes the total
-- for each line item. (This is often called the "extended price" in
-- Finance. It is the unit price * quantity ordered.)  Be sure the
-- query also keeps the SaleID, so you can keep the extended totals
-- organized.

-- SELECT SaleID, FIXME AS extended
-- FROM FIXME...

-- After you have this query, use its results as the right table in a JOIN:

--FOR ORDER 1
SELECT people.Name, tmp1.billingaddress AS Address, tmp1.dateordered, 
        tmp1.name AS Product, tmp1.priceperunit, tmp1.quantity
FROM People
INNER JOIN (
  SELECT CustomerID, BillingAddress, dateordered, tmp2.name, tmp2.PricePerUnit, tmp2.SalesID, tmp2.quantity
  FROM Sale
  INNER JOIN (
    SELECT Name, PricePerUnit, tmp3.SalesID, tmp3.quantity
    FROM Merch
    INNER JOIN (
      SELECT MerchID, SalesID, Quantity
      FROM SoldItem
    )tmp3
    ON tmp3.merchID = Merch.ID
  ) tmp2
  ON tmp2.SalesID = sale.id
) Tmp1
ON people.ID = tmp1.CustomerID
Where tmp1.SalesID = 1
;

--FOR ORDER 2
SELECT people.Name, tmp1.billingaddress AS Address, tmp1.dateordered, 
        tmp1.name AS Product, tmp1.priceperunit, tmp1.quantity
FROM People
INNER JOIN (
  SELECT CustomerID, BillingAddress, dateordered, tmp2.name, tmp2.PricePerUnit, tmp2.SalesID, tmp2.quantity
  FROM Sale
  INNER JOIN (
    SELECT Name, PricePerUnit, tmp3.SalesID, tmp3.quantity
    FROM Merch
    INNER JOIN (
      SELECT MerchID, SalesID, Quantity
      FROM SoldItem
    )tmp3
    ON tmp3.merchID = Merch.ID
  ) tmp2
  ON tmp2.SalesID = sale.id
) Tmp1
ON people.ID = tmp1.CustomerID
Where tmp1.SalesID = 2
;

--FOR ORDER 3
SELECT people.Name, tmp1.billingaddress AS Address, tmp1.dateordered, 
          tmp1.name AS Product, tmp1.priceperunit, tmp1.quantity
FROM People
INNER JOIN (
  SELECT CustomerID, BillingAddress, dateordered, tmp2.name, tmp2.PricePerUnit, tmp2.SalesID, tmp2.quantity
  FROM Sale
  INNER JOIN (
    SELECT Name, PricePerUnit, tmp3.SalesID, tmp3.quantity
    FROM Merch
    INNER JOIN (
      SELECT MerchID, SalesID, Quantity
      FROM SoldItem
    )tmp3
    ON tmp3.merchID = Merch.ID
  ) tmp2
  ON tmp2.SalesID = sale.id
) Tmp1
ON people.ID = tmp1.CustomerID
Where tmp1.SalesID = 3
;

/* Just a test for the joins
SELECT CustomerID, ShippingAddress, DateOrdered, tmp.merchID, quantity
FROM Sale
  INNER JOIN ( 
      SELECT SalesID, MerchID, Quantity
      FROM SoldItem
    ) Tmp
  ON Tmp.SalesID = Sale.ID
; 
*/

-- Finally: add SUM + GROUP BY to get totals. There are a multiple ways
-- to do this!

--8.  Create a sales receipt for a given order (see sub-tasks)
--8a.  Create the summary for a sales receipt (customer, addresses, etc.)
--8b. Itemize the merchandise for the sale