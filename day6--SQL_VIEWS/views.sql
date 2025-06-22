-- use NepathyaDB
CREATE VIEW
    vw_result as
SELECT
    std.stdName as StudentName,
    sub.Name as SUBName
from
    Std_det std
    INNER JOIN marks_tbl mar ON mar.std_id = std.Id
    INNER JOIN sub_tbl sub on sub.Id = mar.sub_id
WHERE
    mar.marks >= 50
    -- Well sql dosent seems to like use[or anythong else ] infront of create view