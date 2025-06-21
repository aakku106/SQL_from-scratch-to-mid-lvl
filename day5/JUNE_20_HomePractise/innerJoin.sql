use NepathyaDB

select std.stdName, mrk.marks
-- select *
from Std_det std
    INNER join marks_tbl mrk on std.Id= mrk.std_id

-- KK dekhauni bhenera select ma lekhni
-- KK ly math ani join garni bhanera on ma include garni hehe

SELECT std.stdName, mrk.marks
-- from marks_tbl mrk inner join Std_det std on std.Id=mrk.std_id
from marks_tbl mrk inner join Std_det std on mrk.std_id= std.Id

-- by  looking at result either way it works