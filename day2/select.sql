use NepathyaDB
SELECT
    COUNT(0)
from
    Std_det
WHERE
    CONVERT(varchar, stdAddress) = 'khausali'
    -- count() 
    -- eg count(name)---> if some name is null than it wont count it