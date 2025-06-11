-- Task fill 50 random data into the database 
USE master;

use NepathyaDB;
drop TABLE Std_det

CREATE TABLE
    Std_det (
        Id INT IDENTITY (100, 1) PRIMARY KEY NOT NULL,
        stdName VARCHAR(120) NOT NULL,
        gender VARCHAR(15) NOT NULL,
        stdPhoneNum VARCHAR(15) NOT NULL,
        stdAddress text NOT NULL,
        stdEmail VARCHAR(100),
    )