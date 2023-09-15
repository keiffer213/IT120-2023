--Queries / SELECTs

-- find the top 20 makes with the most vehicles
SELECT distinct make, count(make) from registration group by make order by count desc limit 20;

-- find the most popular vehicle colors
select color, count(color) from registration group by color order by count desc limit 15;

-- find electric vehicles before 2012
select make, model, myear, fueltypeprimary from registration where myear < 2012 AND fueltypeprimary = 'Electric' order by myear desc limit 50;

-- find blue vehicles in kind county
select make, model, postalcode, GVWRClass from registration where county = 'King' AND color = 'BLUE' order by color desc limit 20;

-- 1.What is the model oldest year reprsented in the database? newest?

SELECT make, model, myear from registration order by myear desc limit 10;

SELECT make, model, myear from registration order by myear asc limit 10;

-- 2. Number of Tesla vehicles by model?

SELECT Model, count(model) from registration where make = 'TESLA' group by Model order by count desc limit 10;

-- 3. How many vehicles per make? What is the interesting order?

SELECT make, count(make) from registration group by make order by count desc limit 20;

-- 4. What counties have the most vehicles?

select county, count(county) from registration group by county order by count desc limit 20;
