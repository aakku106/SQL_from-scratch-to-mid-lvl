use NepathyaDB
SELECT
    *
FROM
    Std_det
where
    stdName LIKE '%aak%'
    -- like : its called wildcards
    -- a% ley chai a bata start hunni name list garxa bhanni
    -- %a% ley chai name ma kattai a xa bhalli list garxa
    -- also %a ley chai a bata end hunni data list garxa
SELECT
    *
FROM
    Std_det
where
    stdName LIKE 'a_k%'
    -- if bich ko caracter tha bhayana bhanni
SELECT
    *
FROM
    Std_det
where
    stdName LIKE 'a%u%'
    -- sab ly list garxa junma a bata start ra u bata end hunxa