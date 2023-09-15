SELECT * FROM Phone;
SELECT * FROM Contact;


-- implement a JOIN to pretty-print the contact list.
SELECT *
FROM Phone
FULL JOIN Contact
ON Contact.contactid = phone.contact;
