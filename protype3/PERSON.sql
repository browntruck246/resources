CREATE TABLE Person (
    PersonID NUMBER(10) PRIMARY KEY,
    FirstName VARCHAR2(50) NOT NULL,
    LastName VARCHAR2(50) NOT NULL,
    BirthDate DATE,
    Email VARCHAR2(100),
    PhoneNumber VARCHAR2(20)
);  

INSERT INTO Person (PersonID, FirstName, LastName, BirthDate, Email, PhoneNumber) VALUES
(1, 'John', 'Doe', TO_DATE('1980-01-15', 'YYYY-MM-DD'), 'john.doe@example.com', '123-456-7890');

INSERT INTO Person (PersonID, FirstName, LastName, BirthDate, Email, PhoneNumber) VALUES
(2, 'Jane', 'Smith', TO_DATE('1990-05-22', 'YYYY-MM-DD'), 'jane.smith@example.com', '234-567-8901');

INSERT INTO Person (PersonID, FirstName, LastName, BirthDate, Email, PhoneNumber) VALUES
(3, 'Michael', 'Johnson', TO_DATE('1985-08-10', 'YYYY-MM-DD'), 'michael.johnson@example.com', '345-678-9012');

INSERT INTO Person (PersonID, FirstName, LastName, BirthDate, Email, PhoneNumber) VALUES
(4, 'Emily', 'Davis', TO_DATE('1992-11-30', 'YYYY-MM-DD'), 'emily.davis@example.com', '456-789-0123');

INSERT INTO Person (PersonID, FirstName, LastName, BirthDate, Email, PhoneNumber) VALUES
(5, 'Chris', 'Brown', TO_DATE('1978-07-07', 'YYYY-MM-DD'), 'chris.brown@example.com', '567-890-1234');


SELECT
    "A1"."PERSONID"    "PERSONID",
    "A1"."FIRSTNAME"   "FIRSTNAME",
    "A1"."LASTNAME"    "LASTNAME",
    "A1"."BIRTHDATE"   "BIRTHDATE",
    "A1"."EMAIL"       "EMAIL",
    "A1"."PHONENUMBER" "PHONENUMBER"
FROM
    "SYSTEM"."PERSON" "A1";

