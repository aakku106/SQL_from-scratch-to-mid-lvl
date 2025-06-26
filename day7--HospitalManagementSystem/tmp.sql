SELECT 
    d.Id AS DoctorID, 
    d.Name AS DoctorName, 
    COUNT(dp.p_Id) AS PatientCount
FROM 
    Doctor d
LEFT JOIN 
    DocPatient dp ON d.Id = dp.d_Id
GROUP BY 
    d.Id, d.Name
ORDER BY 
    PatientCount DESC;
