-- Shelter queries

-- Specification: Show clients with special requirements.
SELECT nested.name, specialneed.description
FROM specialneed
INNER JOIN (
    SELECT client.name, clientneed.needid
    FROM client
    INNER JOIN clientneed
    ON client.id = clientneed.clientid
) nested
ON specialneed.id = nested.needid;


-- Specification: Suggested vaccination schedule by age, with notes. This is
-- only for the initial vaccination series, not for boosters.
SELECT vaccine.name, vaccinationschedule.species, vaccinationschedule.age, vaccine.notes 
FROM vaccinationschedule
JOIN vaccine
ON vaccine.id = vaccinationschedule.vaccineid
order by species, age asc;

-- VACCINATION HISTORY
-- Specification: For each client, show date and kind of vaccination.

SELECT client.name, nested.name, nested.date
FROM client
INNER JOIN (
    SELECT vaccination.clientid, vaccine.name, vaccination.date
    from vaccination
    INNER JOIN vaccine
    ON vaccination.vaccineid = vaccine.id
) nested
on client.id = nested.clientid
order by client.name asc;

--Specification: for boosters, show how long after the last series the
--first three boosters should be given. If tetanus is due every 10 years
--and the last series shot was at age 6, the age 6 part doesn't matter.
--The next three after the series are "10 years later, 20 years later, 30 years later."

--This will need generate_series(1, 3) to make a table that can be nested
--in a CROSS JOIN. (!!)




--Specification: List all homes with name and contact phone. List any
--special needs the home is prepared to meet.

SELECT home.name, home.phone, tmp.description
FROM home
JOIN (
    SELECT homeid, specialneed.description
    FROM homecapability
    JOIN specialneed
    ON homecapability.needid = specialneed.id
) tmp
ON home.id = tmp.homeid;


--Specification: For each client, show the dates when the first three boosters should
--be administered, assuming the guideline for the initial vaccine series is followed.

SELECT distinct client.name, client.species, tmp1.boost, tmp1.name
FROM client
JOIN (
    SELECT vaccination.clientid, vaccination.date, tmp2.name, tmp2.boost, tmp2.species
    FROM vaccination
    JOIN (
        SELECT vaccine.id, vaccine.name, recurringvaccine.boost, recurringvaccine.species
        FROM vaccine
        JOIN recurringvaccine
        ON vaccine.id = recurringvaccine.vaccineid
    ) tmp2
    ON  vaccination.vaccineid = tmp2.id
) tmp1
ON client.id = tmp1.clientid
ORDER BY client.name, tmp1.boost;