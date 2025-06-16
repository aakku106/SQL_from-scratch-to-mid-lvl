use NepathyaDB
SELECT
    *
FROM
    Std_det
WHERE
    stdEmail is not NULL
--- not null ley null na bhako sab data dinxa
-- nul is just vice versa
SELECT
    *
FROM
    Std_det
WHERE
    stdEmail is NULL
    -- also
    -- not between
    -- not in 
    -- not Id>500