use hospitalManagementSystem
CREATE TABLE
    patient (
        Id INT IDENTITY (100, 1) PRIMARY KEY NOT NULL,
        Name VARCHAR(120) NOT NULL,
        gender VARCHAR(15) NOT NULL,
        PhoneNum VARCHAR(15) NOT NULL,
        stdAddress VARCHAR(100) NOT NULL,
        Email VARCHAR(100),
    )
CREATE TABLE
    specialist (
        Id INT IDENTITY (1, 1) PRIMARY KEY NOT NULL,
        SpecialistType VARCHAR(80) NOT NULL
    )
CREATE TABLE
    Doctor (
        Id INT IDENTITY (1, 1) PRIMARY KEY NOT NULL,
        Name VARCHAR(120) NOT NULL,
        NMC_Num VARCHAR(15) NOT NULL,
    )
CREATE TABLE
    DocPatient (
        Id INT IDENTITY (1, 1) PRIMARY KEY NOT NULL,
        p_Id INT FOREIGN KEY REFERENCES patient (Id),
        d_Id INT FOREIGN KEY REFERENCES Doctor (Id)
    )
CREATE TABLE
    DocSpecialist (
        Id INT IDENTITY (1, 1) PRIMARY KEY NOT NULL,
        sp_Id INT FOREIGN KEY REFERENCES specialist (Id),
        Doc_Id INT FOREIGN KEY REFERENCES DocPatient (Id),
    )