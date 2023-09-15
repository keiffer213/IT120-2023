-- Report donors who have given more than $20 but are not members (SUM, GROUP)
--
-- 20 points
--

-- Suggestion: start by making a query that gets the total donation for each donor:
-- SELECT Donor, FIXME AS total
-- FROM FIXME...    -- (reminder: "Donor" is an ID)

-- After you have this query, use its results as the right table in a JOIN:

SELECT id, name, MemberStatus, tmp.sum AS Total_Donation
FROM People
INNER JOIN  (
    SELECT DonorID, SUM(Amount) 
    FROM Donation
    GROUP BY DonorID
  ) Tmp
ON Tmp.DonorID = People.ID
WHERE people.MemberStatus = false
  AND Tmp.sum > 20
;
