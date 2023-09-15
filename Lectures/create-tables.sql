CREATE TABLE enrollment (
    studentID INTEGER,
    courseID INTEGER,
    grade DECIMAL(2,1)
);

CREATE TABLE student (
    ctcLink INTEGER,
    name VARCHAR
);

CREATE TABLE course(
    courseID INTEGER,
    title VARCHAR,
    quarter VARCHAR,
    instructorID INTEGER
);

CREATE TABLE instructor (
    ctcLink INTEGER,
    name VARCHAR
);