-- Recreate the Donations sample document using a join

SELECT Name, Email, DonationDate AS Date, Amount
FROM Person
INNER JOIN Donation
ON Donor = Person.ID;
