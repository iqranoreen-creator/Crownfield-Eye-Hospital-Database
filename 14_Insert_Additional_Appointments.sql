
USE IqraNoreenDB;

-- Add 10 additional fictional appointments
INSERT INTO Appointment
(AppointmentID, PatientID, ClinicianID, ClinicID,
 AppointmentDate, AppointmentTime, Notes)
VALUES
('A006', 'OP005', 'C04', 'CL04',
 '2026-11-02', '09:00:00', 'Cataract assessment'),

('A007', 'OP006', 'C05', 'CL05',
 '2026-11-03', '09:30:00', 'Paediatric eye review'),

('A008', 'OP007', 'C06', 'CL13',
 '2026-11-04', '10:00:00', 'Visual symptoms assessment'),

('A009', 'OP008', 'C07', 'CL10',
 '2026-11-05', '10:30:00', 'Eyelid consultation'),

('A010', 'OP009', 'C08', 'CL11',
 '2026-11-06', '11:00:00', 'Uveitis follow-up'),

('A011', 'OP010', 'C09', 'CL06',
 '2026-11-09', '11:30:00', 'Retina assessment'),

('A012', 'OP011', 'C10', 'CL06',
 '2026-11-10', '13:00:00', 'Vitreoretinal consultation'),

('A013', 'OP012', 'C11', 'CL05',
 '2026-11-11', '13:30:00', 'Strabismus assessment'),

('A014', 'OP013', 'C12', 'CL12',
 '2026-11-12', '14:00:00', 'Low vision assessment'),

('A015', 'OP014', 'C13', 'CL09',
 '2026-11-13', '14:30:00', 'Ocular lesion assessment');

-- Check all appointments
SELECT * FROM Appointment
ORDER BY AppointmentID;
