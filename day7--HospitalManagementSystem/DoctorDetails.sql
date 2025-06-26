use hospitalManagementSystem;
 
 SELECT doc.Name as DoctorName,COUNT(*) as PCnt, spc.SpecialistType 
  from Doctor doc
 INNER JOIN DocPatient dp on dp.d_Id= doc.Id
 INNER JOIN DocSpecialist ds on ds.Doc_Id=doc.Id
 INNER JOIN specialist spc on spc.Id = ds.sp_Id
 GROUP BY doc.Name, spc.SpecialistType
-- having (COUNT(*)>=25)
