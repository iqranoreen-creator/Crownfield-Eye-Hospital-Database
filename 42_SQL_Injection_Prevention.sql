
USE IqraNoreenDB;

-- Part D: SQL Injection Prevention
-- Secure patient lookup using a parameterised query

-- Prepare a query with a placeholder
PREPARE SafePatientSearch FROM
'SELECT * FROM Patient WHERE PatientID = ?';

-- Provide a patient ID as a parameter
SET @PatientID = 'OP001';

-- Execute the query safely
EXECUTE SafePatientSearch USING @PatientID;

-- Release the prepared statement
DEALLOCATE PREPARE SafePatientSearch;
