
USE IqraNoreenDB;

-- 10 additional specialties
INSERT INTO Specialty (SpecialtyID, SpecialtyName)
VALUES
('S04', 'Cataract'),
('S05', 'Paediatric Ophthalmology'),
('S06', 'Neuro-Ophthalmology'),
('S07', 'Oculoplastics'),
('S08', 'Uveitis'),
('S09', 'Medical Retina'),
('S10', 'Vitreo-Retinal Surgery'),
('S11', 'Strabismus'),
('S12', 'Low Vision'),
('S13', 'Ocular Oncology');

-- 10 additional clinics
INSERT INTO Clinic (ClinicID, ClinicName)
VALUES
('CL04', 'Cataract Clinic'),
('CL05', 'Paediatric Eye Clinic'),
('CL06', 'Retina Assessment Clinic'),
('CL07', 'Glaucoma Monitoring Clinic'),
('CL08', 'Corneal Disease Clinic'),
('CL09', 'Emergency Eye Clinic'),
('CL10', 'Oculoplastics Clinic'),
('CL11', 'Uveitis Clinic'),
('CL12', 'Low Vision Clinic'),
('CL13', 'Neuro-Ophthalmology Clinic');

-- 10 additional medicines
INSERT INTO Medicine (MedicineID, MedicineName)
VALUES
('M05', 'Brimonidine'),
('M06', 'Dorzolamide'),
('M07', 'Bimatoprost'),
('M08', 'Tropicamide'),
('M09', 'Cyclopentolate'),
('M10', 'Prednisolone acetate eye drops'),
('M11', 'Chloramphenicol eye drops'),
('M12', 'Carbomer eye gel'),
('M13', 'Acetazolamide'),
('M14', 'Ketorolac eye drops');

-- Check record totals
SELECT 'Specialty' AS TableName, COUNT(*) AS TotalRecords
FROM Specialty
UNION ALL
SELECT 'Clinic', COUNT(*) FROM Clinic
UNION ALL
SELECT 'Medicine', COUNT(*) FROM Medicine;
