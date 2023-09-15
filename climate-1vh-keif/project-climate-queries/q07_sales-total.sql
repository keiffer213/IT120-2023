-- Compute the total value of the sales (This involves *one* JOIN and
-- multiplying the units sold * the price per unit for the
-- merchandise.)
--
-- 15 points
--

-- Suggestion: think about how to collect:
--   price: Merchandise.price
--   quantity: LineItem.quantity
--   want: p * q
-- After you have those, adapt to get the sum.

SELECT sum(merch.PricePerUnit * SoldItem.quantity)
FROM SoldItem
INNER JOIN Merch
ON SoldItem.MerchID = merch.id
;