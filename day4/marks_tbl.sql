use NepathyaDB
CREATE TABLE marks_tbl
(
    Id INT IDENTITY(1,1) PRIMARY key,
    marks INT,
    sub_id INT,
    std_id INT,
    FOREIGN KEY(sub_id) REFERENCES sub_tbl(Id),
    FOREIGN KEY(std_id) REFERENCES Std_det(Id)
);


