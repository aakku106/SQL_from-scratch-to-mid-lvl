USE master;

DROP DATABASE CCN;

GO CREATE DATABASE CCN;

GO USE CCN;

CREATE TABLE
    UserDetails (
        Id INT IDENTITY (106, 100) PRIMARY KEY NOT NULL,
        UserName VARCHAR(100) NOT NULL,
        Address VARCHAR(100)
    );

INSERT INTO
    UserDetails (UserName, Address)
VALUES
    ('cat', 'nepal'),
    ('rat', 'nepal'),
    ('bat', 'nepal'),
    ('fat', 'nepal'),
    ('sat', 'nepal');

SELECT
    *
FROM
    UserDetails PRINT '---------------------------------------------'
SELECT
    Id
FROM
    UserDetails
WHERE
    Id < 306 PRINT '---------------------------------------------'
INSERT INTO
    UserDetails (UserName, Address)
VALUES
    ('wee', 'weeee');

SELECT
    *
FROM
    UserDetails PRINT '---------------------------------------------'
    -- UPDATE UserDetails SET Address='weeeeeeeeeeeeee' -- sab ly select gorxa 
UPDATE UserDetails
SET
    Address = 'weeeeeeeeeeeeee'
WHERE
    Id > 506
SELECT
    *
FROM
    UserDetails PRINT '---------------------------------------------'
    -- DELETE * FROM UserDetails --well it sems 
DELETE FROM UserDetails
WHere
    Id = 106;

SELECT
    *
FROM
    UserDetails PRINT '---------------------------------------------'
CREATE TABLE
    UserLocationDetails (
        L_Id INT IDENTITY (100, 1) PRIMARY KEY NOT NULL,
        L_Name VARCHAR(70),
        L_Description VARCHAR(MAX)
    );

INSERT INTO
    UserLocationDetails (L_Name, L_Description)
VALUES
    ('nepal', 'wow verry buutifull'),
    ('nepal', 'wow verry buutifull'),
    ('nepal', 'wow verry buutifull'),
    ('nepal', 'wow verry buutifull'),
    ('nepal', 'wow verry buutifull');

SELECT
    *
FROM
    UserLocationDetails;

SELECT
    Address
FROM
    UserDetails
    RIGHT JOIN UserLocationDetails ON UserDetails.Address = UserLocationDetails.L_Name;