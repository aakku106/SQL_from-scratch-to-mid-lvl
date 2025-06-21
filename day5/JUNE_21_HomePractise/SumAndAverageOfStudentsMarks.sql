use NepathyaDB
SELECT
    std.stdName as StudentName,
    SUM(mrk.marks) as TotalMarks,
    AVG(mrk.marks) AS AverageMarks
from
    Std_det std
    INNER JOIN marks_tbl mrk ON std.Id = mrk.std_id
GROUP BY
    std.stdName
    -- GROUP BY std.Id -- > id dosen't work cause ther's no id in select statement that wot will it even group with XD
    -- well that wont be common scene to, but it not how it works, actually its opposite
    -- if anything is used in group by it shall present in select, lest see an example
SELECT
    std.stdName as StudentName,
    SUM(mrk.marks) as TotalMarks,
    AVG(mrk.marks) AS AverageMarks
from
    Std_det std
    INNER JOIN marks_tbl mrk ON std.Id = mrk.std_id
GROUP BY
    std.Id,
    std.stdName
    -- even this works,but see its showing data in ascending order