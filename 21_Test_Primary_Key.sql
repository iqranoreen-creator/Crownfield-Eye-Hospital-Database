
USE IqraNoreenDB;

-- Test 1: Duplicate Primary Key
-- OP001 already exists in the Patient table

INSERT INTO Patient
(PatientID, PatientName, Postcode)
VALUES
('OP001', 'Test Patient', 'M20 4AB');
