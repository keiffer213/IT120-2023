-- Give membership to donors who have contributed $20 or more. (UPDATE)
-- Set the "dateAdded" to CURRENT_DATE (this is a variable) to reflect
-- that today is when the membership was updated.
--
-- 30 points
--

-- The UPDATE format is provided:

-- This first one can update 2 out of 3
-- Trying to figure out how to get sum amount
UPDATE people
SET MemberStatus = TRUE, dateAdded = CURRENT_DATE
FROM Donation
WHERE people.id = donation.DonorID
    AND Donation.amount > 20;
;

UPDATE people
SET MemberStatus = TRUE, dateAdded = CURRENT_DATE
FROM (
    SELECT donation.DonorID, sum(amount)
    FROM donation
) tmp
WHERE people.id = tmp.DonorID
    AND tmp.sum > 20
;

-- Help: the FIXME clause is hard, and involves a syntax not introduced
-- in class. You want an expression that returns TRUE if the person
-- needs to be updated.
--
-- Review the q06_membership-earned.sql for getting a list, and use that in
-- the SELECT sub-query below.
--
-- The IN syntax basically checks to see if the value on the left of the IN
-- appears in the values on the right in the IN. The table on the right should
-- have only one column. So the clause would look something like this:
--
--WHERE FIXME... Person.ID IN (
--  SELECT DonorID FROM
--  FIXME...
-- )
