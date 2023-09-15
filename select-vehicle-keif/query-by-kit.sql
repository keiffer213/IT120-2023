
-- Some manufacturers of diesel fuel vehicles:

SELECT make
FROM registration
WHERE FuelTypePrimary = 'Diesel'
LIMIT 2;
