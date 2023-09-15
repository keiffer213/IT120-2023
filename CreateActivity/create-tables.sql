CREATE TABLE contact (
    ContactID INTEGER PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE phone (
Phone_Number BIGINT,
Contact INTEGER,
Type VARCHAR,
    FOREIGN KEY (Contact)
        REFERENCES contact(CONTACTID)
);