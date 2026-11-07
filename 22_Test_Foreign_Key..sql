
USE IqraNoreenDB;

-- Test 2: Invalid Foreign Key
-- Appointment A999 does not exist

INSERT INTO Diagnosis
(DiagnosisID, AppointmentID, DiagnosisName)
VALUES
('D999', 'A999', 'Test Diagnosis');
