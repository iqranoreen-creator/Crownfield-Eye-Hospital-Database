
USE IqraNoreenDB;

-- Check the original patient record
SELECT * FROM Patient
WHERE PatientID = 'OP014';

-- Update the fictional patient's postcode
UPDATE Patient
SET Postcode = 'M23 9AB'
WHERE PatientID = 'OP014';

-- Check the updated record
SELECT * FROM Patient
WHERE PatientID = 'OP014';
