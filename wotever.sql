-- CREATE DATABASE temp;

CREATE TABLE
    temps (
        Id INT IDENTITY (100, 1) PRIMARY KEY NOT NULL,
        Names VARCHAR(20) NOT NULL
    );

INSERT INTO
    temps (Names)
VALUES
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn'),
    ('ccn');

SELECT
    *
FROM
    temps;