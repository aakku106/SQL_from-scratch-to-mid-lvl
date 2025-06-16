-- Single col data change eg
-- updata wee set ph_no= "-12213" where id=2
use NepathyaDB
UPDATE Std_det
set
    stdPhoneNum = '1234567890'
where
    id = 102
SELECT
    *
FROM
    Std_det
INSERT INTO
    Std_det
VALUES
    ('null', 'null', 'null', 'null', null)
    -- now example for mass update
UPDATE Std_det
set
    stdAddress = 'khausali'
WHERE
    CONVERT(varchar, stdAddress) = 'btl'