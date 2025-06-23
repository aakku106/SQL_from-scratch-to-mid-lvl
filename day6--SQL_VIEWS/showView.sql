use NepathyaDB
-- DROP VIEW vw_result
SELECT
    *
from
    vw_result
WHERE
    -- StudentMarks >= 20; -- > This wont work cause we dont have values less than 50, which was defined in view
    StudentMarks >= 55;