
USE IqraNoreenDB;

-- Test 3: NOT NULL Constraint
-- PatientName must not be NULL

INSERT INTO Patient
(PatientID, PatientName, Postcode)
VALUES
('OP999', NULL, 'M20 4AB');
