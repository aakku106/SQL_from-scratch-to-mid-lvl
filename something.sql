-- [1] Check existing DBs
SELECT name
FROM sys.databases;
GO

-- [2] Create test DB
CREATE DATABASE AakkuTestDB;
GO

-- [3] Use test DB
USE AakkuTestDB;
GO

-- [5] Create test table
CREATE TABLE NarutoFans
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Clan NVARCHAR(50),
    ChakraLevel INT
);
GO

-- [5] Insert shinobis
INSERT INTO NarutoFans
    (Name, Clan, ChakraLevel)
VALUES
    ('Naruto Uzumaki', 'Uzumaki', 9999),
    ('Sasuke Uchiha', 'Uchiha', 9800),
    ('Kakashi Hatake', 'Hatake', 8500),
    ('Hinata Hyuga', 'Hyuga', 7700);
GO

-- [6] Fetch everything
SELECT *
FROM NarutoFans;
GO

-- [7] Filter high chakra
SELECT *
FROM NarutoFans
WHERE ChakraLevel > 8000;
GO