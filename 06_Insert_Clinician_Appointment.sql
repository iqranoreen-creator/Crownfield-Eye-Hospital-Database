
USE IqraNoreenDB;

-- Insert Clinician records
INSERT INTO Clinician
(ClinicianID, ClinicianName, SpecialtyID)
VALUES
('C01', 'Dr Maya Shah', 'S01'),
('C02', 'Dr Leo Grant', 'S02'),
('C03', 'Dr Priya Nair', 'S03');

-- Insert Appointment records
INSERT INTO Appointment
(AppointmentID, PatientID, ClinicianID, ClinicID,
 AppointmentDate, AppointmentTime, Notes)
VALUES
('A001', 'OP001', 'C01', 'CL01', '2026-10-05', '09:00:00', NULL),
('A002', 'OP002', 'C02', 'CL01', '2026-10-05', '09:30:00', NULL),
('A003', 'OP001', 'C01', 'CL02', '2026-11-16', '10:15:00', NULL),
('A004', 'OP003', 'C01', 'CL01', '2026-10-06', '11:00:00', NULL),
('A005', 'OP004', 'C03', 'CL03', '2026-10-07', '14:00:00', NULL);



SELECT * FROM Clinician;
SELECT * FROM Appointment;
