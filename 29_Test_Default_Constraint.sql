
USE IqraNoreenDB;

-- Test 6: DEFAULT constraint
-- Create a temporary appointment using existing IDs

START TRANSACTION;

INSERT INTO Appointment
(AppointmentID, PatientID, ClinicianID, ClinicID,
 AppointmentDate, AppointmentTime, Notes)
VALUES
('A999', 'OP001', 'C01', 'CL01',
 '2026-12-15', '10:00:00', 'Default constraint test');

-- Insert follow-up without specifying Status
INSERT INTO FollowUpPlan
(FollowUpID, AppointmentID, DueDate, Priority, Notes)
VALUES
('F999', 'A999', '2026-12-22',
 'High', 'Testing default status');

-- Check the automatic default value
SELECT FollowUpID, AppointmentID, Priority, Status
FROM FollowUpPlan
WHERE FollowUpID = 'F999';
