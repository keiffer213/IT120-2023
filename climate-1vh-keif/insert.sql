--
-- Data for Name: comment
--

--INSERT INTO comment (id, submitter, comment, dateposted, approved) 
--VALUES (1, 7, 'This site is gorgeous and useful. Well worth the time to visit and explore its features.', '2022-10-20', true);
--INSERT INTO comment (id, submitter, comment, dateposted, approved) 
--VALUES (2, 3, 'I attended the Convention on Climate policy last year and it was quite enlightening. They had discussions from several high ranking scientists and politicians. Worth the price.', '2022-10-22', true);

INSERT INTO comment (ID, SubmitterID, Comment, DateSubmitted, ResourceID, EventID, Approved)
VALUES
(1, 7, 'This site is gorgeous and useful. Well worth the time to visit and explore its features.', '2022-10-20', NULL, NULL, true),
(2, 3, 'I attended the Convention on Climate policy last year and it was quite enlightening. They had discussions from several high ranking scientists and politicians. Worth the price.', '2022-10-22', NULL, NULL, true);

--
-- Data for Name: event
--

INSERT INTO Events (id, submitterID, Title, description, eventdate, approved) VALUES 
(1, NULL, 'Convention on Climate Policy', 'Room 313 Convention Center 200 Pike Street Seattle, WA, 98122 Price 250.00 per attendee', '2022-12-03', true);

INSERT INTO Events (id, submitterID, Title, description, eventdate, approved) VALUES 
(2, NULL, 'UN Report on Climate Progress', 'UN Convention House 2 UN Plaza New York, NY, 00231 Price Free, but limited seats', '2023-04-13', true);
/*
INSERT INTO Events (ID, SubmitterID, Title, RoomName, StreetAddress, City, State, ZipCode, EventDate, Description, Approved)
VALUES
(1, NULL, 'Convention on Climate Policy', 'Room 313', 'Convention Center 200 Pike Street', 
'Seattle', 'WA', '98122', '2022-12-03', 'Price $250.00 per attendee', true),
(2, NULL, 'UN Report on Climate progress', 'UN Convention House 2', 'UN Plaza', 
'New York', 'NY', '00231', '2022-01-13', 'Price free, but limited seats', true);
*/
--
-- Data for Name: person
--

--INSERT INTO person (id, name, email, phone, ismember, dateadded) 
--VALUES 
--(1, 'Jill Keller', 'JillKileer@gmail.com', '2065551245', true, '2019-03-29');
--(2, 'Mark Lowen', 'lowen@msn.com', NULL, true, '2020-04-19');
--(3, 'Wendy Nelson', 'wnelson@yahoo.com', '4565551265', true, '2020-05-01');
--(4, 'Krystal Brown', 'krystalball@hotmail.com', '9045552211', true, '2021-05-20');
--(5, 'Bob Danielson', 'bd2035@gmail.com', '3605552030', true, '2020-06-10');
--(6, 'Ta Nguyen', 'tnguyen304@gmail.com', NULL, true, '2020-07-12');
--(7, 'Nichole Bradley', 'nicholeb@harvest.org', '2225552323', true, '2020-07-15');
--(8, 'Lindsey Peterson', 'lp@msn.com', NULL, false, NULL);
--(9, 'Marcus Tellerman', 'mtellerman@yahoo.com', NULL, false, NULL);
--(10, 'Ha Li', 'hali@gmail.com', NULL, false, NULL);
--(11, 'Hamid Brown', 'hamidb@outlook.com', NULL, false, NULL);
--(12, 'Ken Jackson', 'kj202@yahoo.com', NULL, false, NULL);

INSERT INTO People(ID, Name, Email, PhoneNum, dateAdded, MemberStatus)
VALUES
(1, 'Jill Keller', 'JillKileer@gmail.com', '2065551245', '2019-03-29', true),
(2, 'Mark Lowen', 'lowen@msn.com', NULL, '2020-04-19', true),
(3, 'Wendy Nelson', 'wnelson@yahoo.com', '4565551265', '2020-05-01', true),
(4, 'Krystal Brown', 'krystalball@hotmail.com', '9045552211', '2021-05-20', true),
(5, 'Bob Danielson', 'bd2035@gmail.com', '3605552030', '2020-06-10', true),
(6, 'Ta Nguyen', 'tnguyen304@gmail.com', NULL, '2020-07-12', true),
(7, 'Nichole Bradley', 'nicholeb@harvest.org', '2225552323', '2020-07-15', true),
(8, 'Lindsey Peterson', 'lp@msn.com', NULL, NULL, false),
(9, 'Marcus Tellerman', 'mtellerman@yahoo.com', NULL, NULL, false),
-- donors becomes a member automatically if they donate more than $20 from interview
(10, 'Ha Li', 'hali@gmail.com', NULL, NULL, false),
(11, 'Hamid Brown', 'hamidb@outlook.com', NULL, NULL, false),
(12, 'Ken Jackson', 'kj202@yahoo.com', NULL, NULL, false);

--
-- Data for Name: resource
--

--INSERT INTO resource (id, name, url, description, submitter, submitdate, approved) 
--VALUES
--(1, 'Partnership for Energy progress', 'https://www.pepnw.org/about-us/', 'The Partnership for Energy Progress is a collaboration of utilities, farmers, workers, small and large businesses, and community advocates across the Northwest. Our goal is to communicate the work we do to provide reliable, affordable energy to homes and businesses, and highlight the progress we’re making to address climate change.', 1, '2020-09-12', true);
--(2, 'Siemens Company', 'https://new.siemens.com/us/en/company/sustainability/environmental-action.html', 'Siemens is supporting the Decade of Action to accelerate the adoption of sustainable technologies so our customers, our communities and our employees can lead the U.S. towards a low-carbon future.', 1, '2022-10-09', true);
--(3, 'UN Environment Program', 'https://www.unep-wcmc.org/', 'UN Environment Programme World Conservation Monitoring Centre is a world leader in biodiversity knowledge. It works with scientists and policy makers worldwide to place biodiversity at the heart of environment and development decision-making to enable enlightened choices for people and the planet.', 5, '2020-10-18', true);
--(4, 'NASA on Climate Change', 'https://climate.nasa.gov/', 'Explore a real-time data visualization of NASA’s Earth-orbiting satellites and the data they collect about climate change.', 6, '2020-10-25', true);

INSERT INTO Resource (ID, SubmitterID, Title, URL, Description, SubmitDate, Approved) 
VALUES
(1, 1, 'Partnership for Energy progress', 'https://www.pepnw.org/about-us/', 'The Partnership for Energy Progress is a collaboration of utilities, farmers, workers, small and large businesses, and community advocates across the Northwest. Our goal is to communicate the work we do to provide reliable, affordable energy to homes and businesses, and highlight the progress we’re making to address climate change.', '2020-09-12', true ),
(2, 1, 'Siemens Company', 'https://new.siemens.com/us/en/company/sustainability/environmental-action.html', 'Siemens is supporting the Decade of Action to accelerate the adoption of sustainable technologies so our customers, our communities and our employees can lead the U.S. towards a low-carbon future.', '2020-10-09', true ),
(3, 5, 'UN Environment Program', 'https://www.unep-wcmc.org/', 'UN Environment Programme World Conservation Monitoring Centre is a world leader in biodiversity knowledge. It works with scientists and policy makers worldwide to place biodiversity at the heart of environment and development decision-making to enable enlightened choices for people and the planet.', '2020-10-18', true),
(4, 6, 'NASA on Climate Change', 'https://climate.nasa.gov/', 'Explore a real-time data visualization of NASA’s Earth-orbiting satellites and the data they collect about climate change.', '2020-10-25', true);
