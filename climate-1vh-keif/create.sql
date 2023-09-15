-- Framework for the Climate Action database

CREATE TABLE People (
  ID INTEGER PRIMARY KEY NOT NULL,
  Name VARCHAR,
  Email VARCHAR,
  PhoneNum VARCHAR,  
  dateAdded DATE,  -- FIXME: if this is date-became-member, then isMember is redundant?
  --if it is date-become-member it is redundant, but if it is just date added
  --then it is when they first donated/purchased something from the website
  MemberStatus BOOLEAN NOT NULL 
);

CREATE TABLE Comment (
  ID INTEGER PRIMARY KEY NOT NULL,
  SubmitterID INTEGER, -- PeopleID
  Comment VARCHAR, 
  DateSubmitted DATE,
  ResourceID INTEGER,   -- to link to which post its from
  EventID INTEGER,      -- only one or the other should be filed & other NULL
  Approved BOOLEAN
);


--I decided to switch the events back to the description to make the 
--writing of the queries simpler

CREATE TABLE Events (
  ID INTEGER PRIMARY KEY NOT NULL,
  submitterID INTEGER, --peopleID
  Title VARCHAR,
  Description VARCHAR,
  EventDate DATE,
  Approved BOOLEAN
);

/*CREATE TABLE Events (
  ID INTEGER PRIMARY KEY NOT NULL,
  SubmitterID INTEGER, --PeopleID
  Title VARCHAR,
  RoomName VARCHAR,
  StreetAddress VARCHAR,
  City VARCHAR,
  State VARCHAR,
  ZipCode Integer,
  EventDate DATE,
  Description VARCHAR,
  Approved BOOLEAN
); */

CREATE TABLE Resource (
  ID INTEGER PRIMARY KEY NOT NULL,
  SubmitterID INTEGER, -- PeopleID
  Title VARCHAR,
  URL VARCHAR,
  Description VARCHAR,  
  SubmitDate DATE,
  Approved BOOLEAN
);
