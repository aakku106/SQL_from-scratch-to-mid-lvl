use NepathyaDB
SELECT
    *
from
    Std_det
where
    stdName = 'aakku'
    and CONVERT(varchar, stdAddress) = 'khausali'
    -- and ley chai LHS ra RHS ko condition meet bhayyo bhanni balla data dinxa
    -- OR ley chai either RHS or LHS ma condition satisfy bhayyo bhanni  data list out garxa