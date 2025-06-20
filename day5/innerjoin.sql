use NepathyaDB
SELECT std.stdName, sub.Name, mar.marks
FROM Std_det std
    INNER JOIN marks_tbl mar on std.Id = mar.std_id
    INNER JOIN sub_tbl sub on sub.Id = mar.sub_id

ORDER BY std.stdName ASC