use NepathyaDB
select std.stdName, mrk.marks
from Std_det std
    RIGHT JOIN marks_tbl mrk
    on std.Id=mrk.std_id
-- as aspect it return non null values 
select std.stdName, mrk.marks
from Std_det std
    RIGHT JOIN marks_tbl mrk
    on mrk.std_id   =std.Id
-- either way the same but if we so 

select std.stdName, mrk.marks
from marks_tbl mrk
    RIGHT JOIN Std_det std
    on std.Id=mrk.std_id
-- by doing this we get the null values too cause right table is students details table, where all student hnd not been assigned data in mrk table
select std.stdName, mrk.marks
from marks_tbl mrk
    RIGHT JOIN Std_det std
    on mrk.std_id=std.Id
     -- either way its same thing cause we are matching values of id if left table[mrk] has matching values in Id in right table [std], the result will be same 