use NepathyaDB
-- eg 1
SELECT std.stdName, mrk.marks
from Std_det std
    LEFT JOIN marks_tbl mrk
    on  std.Id = mrk.std_id


--- eg 2
SELECT std.stdName, mrk.marks
from marks_tbl mrk
    LEFT JOIN Std_det std
    on  std.Id = mrk.std_id
-- on  mrk.std_id = std.Id -- switching it either way gies same result

-- eg 3 
SELECT std.stdName, mrk.marks
from Std_det std
    LEFT JOIN marks_tbl mrk
    on    mrk.std_id =  std.Id
 -- this too gives same result as example 1 