use NepathyaDB
SELECT
    sub.Name as Subject,
    SUM(mrk.marks) as SUM,
    avg(mrk.marks) as AVG
from
    Std_det std
    INNER join marks_tbl mrk on std.Id = mrk.std_id
    INNER JOIN sub_tbl as sub on mrk.sub_id = sub.Id
GROUP by
    sub.Name