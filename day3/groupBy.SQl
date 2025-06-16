use NepathyaDB
SELECT
    CONVERT(varchar, stdAddress),
    COUNT(1)
from
    Std_det
GROUP BY
    CONVERT(VARCHAR, stdAddress)