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
SELECT DateOrdered, FIXME...
FROM Sale
  INNER JOIN
    (     -- Put the SELECT from above here.
          -- Its output is a table with the columns "Donor" and "total" because of the AS labels.
--       SELECT SaleID, FIXME AS extended
--       FROM FIXME...
    ) TempName
  ON TempName.FIXME...
;


-- Finally: add SUM + GROUP BY to get totals. There are a multiple ways
-- to do this!
