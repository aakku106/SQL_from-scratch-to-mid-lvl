use NepathyaDB
-- SELECT mar.marks, sub.Name, std.stdName
-- FROM Std_det std
--     RIGHT JOIN marks_tbl mar on std.Id = mar.std_id
--     RIGHT JOIN sub_tbl sub on sub.Id = mar.sub_id
-- ORDER BY sub.Name ASC



SELECT std.stdName, AVG(mar.marks)
FROM sub_tbl sub
    RIGHT JOIN marks_tbl mar on mar.sub_id= sub.Id
    RIGHT JOIN Std_det std on std.Id = mar.std_id
WHERE sub.Name is NOT NULL
GROUP BY std.stdName
-- ORDER BY sub.Name ASC

