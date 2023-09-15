INSERT INTO instructor(ctcLink, name)
VALUES
(902221, 'Kit'),
(901112, 'Bill');

INSERT INTO student(name, ctcLink) /* as long as values match column names */
VALUES
('Keiffer', 98765),
('Kat', 98764);

INSERT INTO student VALUES /* only works if the input is in the order you expect */
(98557, 'Yarnel');

INSERT INTO course(courseID, title, quarter, instructorID)
VALUES
(21766, 'IT-120 databases', 'f22', 902221),
(20066, 'Python packages', 'w23', 901112),
(21785, 'IT-120 databases', 'w22', 902221);

INSERT INTO enrollment(studentID, courseID)
VALUES
(98765, 21766),
(98123, 20066),
(98123, 21785),
(98765, 20066);
