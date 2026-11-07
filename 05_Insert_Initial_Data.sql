
USE IqraNoreenDB;

-- Patient records
INSERT INTO Patient (PatientID, PatientName, Postcode)
VALUES
('OP001', 'Amina Yusuf', 'NE1 4AB'),
('OP002', 'Daniel Reed', 'N16 7QP'),
('OP003', 'Sofia Bennett', 'E8 2LD'),
('OP004', 'Michael Okoro', 'SE6 3RT');

-- Specialty records
INSERT INTO Specialty (SpecialtyID, SpecialtyName)
VALUES
('S01', 'Glaucoma'),
('S02', 'Retina'),
('S03', 'Cornea');

-- Clinic records
INSERT INTO Clinic (ClinicID, ClinicName)
VALUES
('CL01', 'City Road'),
('CL02', 'Bedford'),
('CL03', 'Croydon');

-- Medicine records
INSERT INTO Medicine (MedicineID, MedicineName)
VALUES
('M01', 'Latanoprost'),
('M02', 'Timolol'),
('M03', 'Aflibercept'),
('M04', 'Sodium chloride drops');


SELECT * FROM Patient;
SELECT * FROM Specialty;
SELECT * FROM Clinic;
SELECT * FROM Medicine;

