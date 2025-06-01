USE master;
GO
DROP DATABASE wee;
GO
CREATE DATABASE wee;
GO
USE wee;
GO
CREATE TABLE ccn
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(106),
    class INT
);
GO
INSERT INTO ccn
    (name, class)
VALUES
    ('ccn', 1),
    ('aakku', 2),
    ('weeee', 3);
GO
SELECT *
FROM ccn;
GO
PRINT 'I am the boss';
GO 