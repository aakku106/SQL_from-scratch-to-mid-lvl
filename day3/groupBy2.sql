use NepathyaDB
SELECT
    stdName,
    CONVERT(VARCHAR, stdAddress),
    COUNT(1)
FROM
    Std_det
GROUP BY
    stdName,
    CONVERT(VARCHAR, stdAddress)