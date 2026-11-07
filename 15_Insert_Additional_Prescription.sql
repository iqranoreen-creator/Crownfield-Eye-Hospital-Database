
USE IqraNoreenDB;

-- 10 additional fictional prescriptions
-- One-time and repeat prescriptions

INSERT INTO Prescription
(PrescriptionID, AppointmentID, PrescriptionDate,
 PrescriptionType, RepeatIntervalDays, RepeatEndDate)
VALUES
('P05', 'A006', '2026-11-02', 'One-time', NULL, NULL),
('P06', 'A007', '2026-11-03', 'One-time', NULL, NULL),
('P07', 'A008', '2026-11-04', 'Repeat', 30, '2027-05-04'),
('P08', 'A009', '2026-11-05', 'One-time', NULL, NULL),
('P09', 'A010', '2026-11-06', 'Repeat', 30, '2027-02-06'),
('P10', 'A011', '2026-11-09', 'Repeat', 30, '2027-05-09'),
('P11', 'A012', '2026-11-10', 'One-time', NULL, NULL),
('P12', 'A013', '2026-11-11', 'One-time', NULL, NULL),
('P13', 'A014', '2026-11-12', 'Repeat', 30, '2027-05-12'),
('P14', 'A015', '2026-11-13', 'One-time', NULL, NULL);

-- Display all prescriptions
SELECT * FROM Prescription
ORDER BY PrescriptionID;
