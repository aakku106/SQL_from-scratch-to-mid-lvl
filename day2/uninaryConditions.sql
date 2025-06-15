use NepathyaDB
SELECT
    *
from
    Std_det
where
    stdName = 'aakku'
    and CONVERT(varchar, stdAddress) = 'khausali'