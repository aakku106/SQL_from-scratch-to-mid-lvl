USE hospitalManagementSystem;

-- Specialist types
INSERT INTO specialist (SpecialistType) VALUES 
('Cardiology'),
('Dermatology'),
('Endocrinology'),
('Gastroenterology'),
('Neurology'),
('Oncology'),
('Orthopedics'),
('Pediatrics'),
('Psychiatry'),
('Urology');

-- Doctors (10)
INSERT INTO Doctor (Name, NMC_Num) VALUES 
('Dr. Priya Sharma', 'NMC123456'),
('Dr. Rajesh Patel', 'NMC234567'),
('Dr. Anita Gupta', 'NMC345678'),
('Dr. Vikram Singh', 'NMC456789'),
('Dr. Neha Verma', 'NMC567890'),
('Dr. Sanjay Kumar', 'NMC678901'),
('Dr. Meera Reddy', 'NMC789012'),
('Dr. Arjun Nair', 'NMC890123'),
('Dr. Kavita Joshi', 'NMC901234'),
('Dr. Deepak Malhotra', 'NMC012345');

-- Patients (50)
INSERT INTO patient (Name, gender, PhoneNum, stdAddress, Email) VALUES 
-- Repeated addresses to help with learning GROUP BY and other queries
-- Kathmandu Address (10 patients)
('Ram Bahadur', 'Male', '9801234567', 'Kamaladi, Kathmandu', 'ram.b@email.com'),
('Sita Devi', 'Female', '9807654321', 'Kamaladi, Kathmandu', 'sita.devi@email.com'),
('Hari Krishna', 'Male', '9802345678', 'Kamaladi, Kathmandu', 'hari.k@email.com'),
('Gita Sharma', 'Female', '9803456789', 'Dillibazar, Kathmandu', 'gita.s@email.com'),
('Mohan Raj', 'Male', '9804567890', 'Dillibazar, Kathmandu', 'mohan.r@email.com'),
('Radha Kumari', 'Female', '9805678901', 'Baneshwor, Kathmandu', 'radha.k@email.com'),
('Shyam Lal', 'Male', '9806789012', 'Baneshwor, Kathmandu', 'shyam.l@email.com'),
('Laxmi Devi', 'Female', '9807890123', 'Baneshwor, Kathmandu', 'laxmi.d@email.com'),
('Bishnu Prasad', 'Male', '9808901234', 'Chabahil, Kathmandu', 'bishnu.p@email.com'),
('Saraswati Devi', 'Female', '9809012345', 'Chabahil, Kathmandu', 'saraswati.d@email.com'),

-- Pokhara Address (10 patients)
('Krishna Bahadur', 'Male', '9810123456', 'Lakeside, Pokhara', 'krishna.b@email.com'),
('Janaki Kumari', 'Female', '9811234567', 'Lakeside, Pokhara', 'janaki.k@email.com'),
('Bhim Singh', 'Male', '9812345678', 'Lakeside, Pokhara', 'bhim.s@email.com'),
('Parbati Thapa', 'Female', '9813456789', 'Baidam, Pokhara', 'parbati.t@email.com'),
('Nabin Gurung', 'Male', '9814567890', 'Baidam, Pokhara', 'nabin.g@email.com'),
('Mina Rai', 'Female', '9815678901', 'Baidam, Pokhara', 'mina.r@email.com'),
('Suresh Magar', 'Male', '9816789012', 'Chipledhunga, Pokhara', 'suresh.m@email.com'),
('Sabita Karki', 'Female', '9817890123', 'Chipledhunga, Pokhara', 'sabita.k@email.com'),
('Binod Tamang', 'Male', '9818901234', 'Mahendrapul, Pokhara', 'binod.t@email.com'),
('Sarita Limbu', 'Female', '9819012345', 'Mahendrapul, Pokhara', 'sarita.l@email.com'),

-- Chitwan Address (10 patients)
('Gopal Shrestha', 'Male', '9820123456', 'Bharatpur, Chitwan', 'gopal.s@email.com'),
('Nirmala Devi', 'Female', '9821234567', 'Bharatpur, Chitwan', 'nirmala.d@email.com'),
('Prakash Neupane', 'Male', '9822345678', 'Bharatpur, Chitwan', 'prakash.n@email.com'),
('Anita Chaudhary', 'Female', '9823456789', 'Narayanghat, Chitwan', 'anita.c@email.com'),
('Kamal Thapa', 'Male', '9824567890', 'Narayanghat, Chitwan', 'kamal.t@email.com'),
('Srijana KC', 'Female', '9825678901', 'Narayanghat, Chitwan', 'srijana.kc@email.com'),
('Dipak Adhikari', 'Male', '9826789012', 'Ratnanagar, Chitwan', 'dipak.a@email.com'),
('Sunita Khadka', 'Female', '9827890123', 'Ratnanagar, Chitwan', 'sunita.k@email.com'),
('Ramesh Poudel', 'Male', '9828901234', 'Ratnanagar, Chitwan', 'ramesh.p@email.com'),
('Geeta Sapkota', 'Female', '9829012345', 'Ratnanagar, Chitwan', 'geeta.s@email.com'),

-- Biratnagar Address (10 patients)
('Rajendra KC', 'Male', '9830123456', 'Tinpaini, Biratnagar', 'rajendra.kc@email.com'),
('Usha Bhandari', 'Female', '9831234567', 'Tinpaini, Biratnagar', 'usha.b@email.com'),
('Narayan Bhattarai', 'Male', '9832345678', 'Tinpaini, Biratnagar', 'narayan.b@email.com'),
('Indira Subedi', 'Female', '9833456789', 'Bargachhi, Biratnagar', 'indira.s@email.com'),
('Tilak Rai', 'Male', '9834567890', 'Bargachhi, Biratnagar', 'tilak.r@email.com'),
('Kamala Acharya', 'Female', '9835678901', 'Bargachhi, Biratnagar', 'kamala.a@email.com'),
('Harihar Khanal', 'Male', '9836789012', 'Traffic Chowk, Biratnagar', 'harihar.k@email.com'),
('Pramila Yadav', 'Female', '9837890123', 'Traffic Chowk, Biratnagar', 'pramila.y@email.com'),
('Bharat Karki', 'Male', '9838901234', 'Traffic Chowk, Biratnagar', 'bharat.k@email.com'),
('Sarmila Dahal', 'Female', '9839012345', 'Traffic Chowk, Biratnagar', 'sarmila.d@email.com'),

-- Dharan Address (10 patients)
('Shiva Dhakal', 'Male', '9840123456', 'Putali Line, Dharan', 'shiva.d@email.com'),
('Durga Thapa', 'Female', '9841234567', 'Putali Line, Dharan', 'durga.t@email.com'),
('Manoj Koirala', 'Male', '9842345678', 'Putali Line, Dharan', 'manoj.k@email.com'),
('Binita Limbu', 'Female', '9843456789', 'BP Chowk, Dharan', 'binita.l@email.com'),
('Dinesh Rai', 'Male', '9844567890', 'BP Chowk, Dharan', 'dinesh.r@email.com'),
('Asha Tamang', 'Female', '9845678901', 'BP Chowk, Dharan', 'asha.t@email.com'),
('Mahesh Basnet', 'Male', '9846789012', 'Bhanu Chowk, Dharan', 'mahesh.b@email.com'),
('Rita Gurung', 'Female', '9847890123', 'Bhanu Chowk, Dharan', 'rita.g@email.com'),
('Santosh Rijal', 'Male', '9848901234', 'Bhanu Chowk, Dharan', 'santosh.r@email.com'),
('Anita Kharel', 'Female', '9849012345', 'Bhanu Chowk, Dharan', 'anita.k@email.com');

-- DocPatient relationships (assigning patients to doctors)
-- Each doctor has 5 patients on average
DECLARE @patientId INT = 100;
DECLARE @maxPatientId INT = 149;
DECLARE @doctorId INT = 1;

WHILE @patientId <= @maxPatientId
BEGIN
    INSERT INTO DocPatient (p_Id, d_Id) VALUES (@patientId, @doctorId);
    
    SET @patientId = @patientId + 1;
    SET @doctorId = @doctorId + 1;
    
    IF @doctorId > 10
        SET @doctorId = 1;
END

-- DocSpecialist relationships (assigning specializations to doctors)
-- Each doctor has 1-2 specializations
INSERT INTO DocSpecialist (sp_Id, Doc_Id) VALUES 
(1, 1), -- Dr. Priya Sharma - Cardiology
(2, 2), -- Dr. Rajesh Patel - Dermatology
(3, 3), -- Dr. Anita Gupta - Endocrinology
(4, 4), -- Dr. Vikram Singh - Gastroenterology
(5, 5), -- Dr. Neha Verma - Neurology
(6, 6), -- Dr. Sanjay Kumar - Oncology
(7, 7), -- Dr. Meera Reddy - Orthopedics
(8, 8), -- Dr. Arjun Nair - Pediatrics
(9, 9), -- Dr. Kavita Joshi - Psychiatry
(10, 10), -- Dr. Deepak Malhotra - Urology
(8, 11), -- Dr. Priya Sharma - also Pediatrics
(9, 12), -- Dr. Rajesh Patel - also Psychiatry
(7, 13), -- Dr. Anita Gupta - also Orthopedics
(6, 14), -- Dr. Vikram Singh - also Oncology
(4, 15); -- Dr. Neha Verma - also Gastroenterology