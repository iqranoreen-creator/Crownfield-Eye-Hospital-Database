
USE IqraNoreenDB;

-- Add 10 additional fictional clinicians
INSERT INTO Clinician
(ClinicianID, ClinicianName, SpecialtyID)
VALUES
('C04', 'Dr Sarah Ahmed', 'S04'),
('C05', 'Dr James Patel', 'S05'),
('C06', 'Dr Olivia Green', 'S06'),
('C07', 'Dr Hassan Ali', 'S07'),
('C08', 'Dr Emily Roberts', 'S08'),
('C09', 'Dr Daniel Lewis', 'S09'),
('C10', 'Dr Amina Khan', 'S10'),
('C11', 'Dr Michael Brown', 'S11'),
('C12', 'Dr Fatima Noor', 'S12'),
('C13', 'Dr David Wilson', 'S13');

-- Display all clinicians with their specialties
SELECT
    c.ClinicianID,
    c.ClinicianName,
    s.SpecialtyName
FROM Clinician c
INNER JOIN Specialty s
    ON c.SpecialtyID = s.SpecialtyID
ORDER BY c.ClinicianID;
