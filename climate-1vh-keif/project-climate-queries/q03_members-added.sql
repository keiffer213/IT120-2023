-- List all the members who were added in 2020 (Use the EXTRACT
-- function to get the year). Show newest members first.
-- Show their name and date they became a member.
--
-- 11 points
--

SELECT Name, dateAdded 
FROM People
WHERE dateAdded > date '2019-12-31'
    AND dateadded < date '2021-01-01'
    AND MemberStatus = true
ORDER BY dateadded DESC
;

--couldn't really figure out how to get the exact fuction
