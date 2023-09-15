-- Newsletter: Assuming a newsletter date of 2022-03-10, show upcoming
-- events after that date that have been approved by staff. For each
-- event, show date and description.

--
-- 10 points
--

SELECT Title, Description, EventDate
FROM Events
WHERE approved = TRUE 
    AND EventDate > date '2022-03-10'
ORDER BY EventDate ASC
;
