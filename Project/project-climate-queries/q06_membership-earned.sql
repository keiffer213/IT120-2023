-- Report donors who have given more than $20 but are not members (SUM, GROUP)
--
-- 20 points
--

-- Suggestion: start by making a query that gets the total donation for each donor:
-- SELECT Donor, FIXME AS total
-- FROM FIXME...    -- (reminder: "Donor" is an ID)

-- After you have this query, use its results as the right table in a JOIN:

SELECT FIXME...
FROM FIXME...
INNER JOIN
  (     -- Put the SELECT from above here.
        -- Its output is a table with the columns "Donor" and "total" because of the AS labels.
--       SELECT Donor, FIXME AS total
--       FROM FIXME...    -- (reminder: "Donor" is an ID)
  ) TempName
ON TempName.FIXME...
WHERE FIXME
;
