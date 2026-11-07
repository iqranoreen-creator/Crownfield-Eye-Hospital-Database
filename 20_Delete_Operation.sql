
USE IqraNoreenDB;

-- Check the record before deletion
SELECT * FROM Diagnosis
WHERE DiagnosisID = 'D15';

-- Begin a transaction
START TRANSACTION;

-- Delete one fictional diagnosis
DELETE FROM Diagnosis
WHERE DiagnosisID = 'D15';

-- Confirm the record was deleted
SELECT * FROM Diagnosis
WHERE DiagnosisID = 'D15';

-- Restore the record
ROLLBACK;

-- Confirm the record is back
SELECT * FROM Diagnosis
WHERE DiagnosisID = 'D15';
