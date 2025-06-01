USE master;
DROP DATABASE CCN;
CREATE DATABASE CCN;
USE CCN;
CREATE TABLE UserDetails
(
    Id INT IDENTITY(106,100) PRIMARY KEY NOT NULL ,
    UserName VARCHAR
    (100) NOT NULL,
    Address VARCHAR
    (100)
);
INSERT INTO UserDetails
    (UserName, Address)
VALUES
    ('cat', 'address1'),
    ('rat', 'address2'),
    ('bat', 'address3'),
    ('fat', 'address4'),
    ('sat', 'address5');

SELECT *
FROM UserDetails

SELECT Id
FROM UserDetails
WHERE Id<306

INSERT INTO UserDetails
    (UserName,Address)
VALUES
    ( 'wee', 'weeee');

SELECT *
FROM UserDetails

-- UPDATE UserDetails SET Address='weeeeeeeeeeeeee' -- sab ly select gorxa 
UPDATE UserDetails SET Address='weeeeeeeeeeeeee' WHERE Id>506

SELECT *
FROM UserDetails

-- DELETE * FROM UserDetails --well it sems 