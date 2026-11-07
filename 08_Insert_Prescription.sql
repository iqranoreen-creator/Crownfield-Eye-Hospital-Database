
USE IqraNoreenDB;

INSERT INTO Prescription
(PrescriptionID, AppointmentID, PrescriptionDate,
 PrescriptionType, RepeatIntervalDays, RepeatEndDate)
VALUES
('P01', 'A001', '2026-10-05', 'Repeat', 30, '2027-04-05'),
('P02', 'A002', '2026-10-05', 'One-time', NULL, NULL),
('P03', 'A003', '2026-11-16', 'Repeat', 30, '2027-05-16'),
('P04', 'A005', '2026-10-07', 'One-time', NULL, NULL);

SELECT * FROM Prescription;
