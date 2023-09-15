# Animal Shelter JOIN activity

## Signup and Tracking

For each task, record:

- specification or design notes
- estimate of how hard the task is
- developer signing up for the query
- time spent
- any collaborators
- diary with notes of significant experiences

## Activity Goals

# Signup and Tracking

Potential queries listed below. Add more if desired.


## Client needs

Specification: Show clients with special requirements.

- estimate: link table (two joins; one nested) (medium)
- developer: kit
- time spent:
- collaborators:

Diary: Query provided in .pdf handout. Note there are two versions, one using
fully qualified names for all columns. Remmbered to name the nested SELECT
results.


SELECT nested.name, specialneed.description
FROM specialneed
INNER JOIN (
    SELECT client.name, clientneed.needid
    FROM client
    INNER JOIN clientneed
    ON client.id = clientneed.clientid
) nested
ON specialneed.id = nested.needid;

SELECT temporary_table.tmp_name AS "NAME", specialneed.description
FROM specialneed
INNER JOIN (
        SELECT client.name AS tmp_name, clientneed.needid AS tmp_needid
        FROM client
        INNER JOIN clientneed
        ON client.id = clientneed.clientid
) temporary_table
ON specialneed.id = temporary_table.tmp_needid;

## Series Schedule

Specification: Suggested vaccination schedule by age, with notes. This is
only for the initial vaccination series, not for boosters.

- estimate: one join
- developer: Keiffer
- time spent: 30 mins
- collaborators: N/A

Diary: To figure out this join, I had to reflect over my notes for joining tables. Looking at the standard format, I was able to slowly adjust my code to work for this query. I had trouble as the query was only showing 7 rows when I needed 18, and I realized I used an ON for vaccine ID = vaccinationschedule ID instead of vaccine ID which took me a while to figure out the problem.


## Vaccination History

Specification: For each client, show date and kind of vaccination.

- estimate: link table (two joins) (medium)
- developer: Keiffer
- time spent: 20 mins
- collaborators:

Diary: After struggling a bit with the series schedule, I slowly understood how join works and the proper formatting as well. I referenced the first query to find how to format this one as it is very similar. I find that you can get the same result regardless which 2 tables you nest as long as they are connected to each other.


## Booster Timing

Specification: for boosters, show how long after the last series the
first three boosters should be given. If tetanus is due every 10 years
and the last series shot was at age 6, the age 6 part doesn't matter.
The next three after the series are "10 years later, 20 years later, 30 years later."

This will need generate_series(1, 3) to make a table that can be nested
in a CROSS JOIN. (!!)


- estimate: unfamiliar JOIN (hard)
- developer:
- time spent:
- collaborators:

Diary: Very confused about this / unable to do

Would be interested in walking through this problem if possible 


## Available Homes

Specification: List all homes with name and contact phone. List any
special needs the home is prepared to meet.

- estimate: link table (two joins, one nested) (medium)
- developer: keiffer
- time spent:10 mins
- collaborators:

Diary: After doing the first 2 queries, my understanding of join has solidified more through trial and error. I was able to complete this query with minimal errors/problems.


## Booster Vaccination Schedule

Specification: For each client, show the dates when the first three boosters should
be administered, assuming the guideline for the initial vaccine series is followed.

- estimate: very hard
- developer: keiffer   
- time spent: 30 mins
- collaborators:

Diary: phew, this one was a rough one. Trying to think about the multiple nested joins and what attributes need to be pushed through to the next join was challenging. Though I hope I did this correctly. I was having trouble with there being over 40 rows with duplicates, but when I added the DISTINCT keyword, it made sure that the query only provided unique rows.


