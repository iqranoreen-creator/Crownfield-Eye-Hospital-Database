
USE IqraNoreenDB;

-- Give patient limited read-only access
GRANT SELECT
ON IqraNoreenDB.Clinic
TO 'hospital_patient'@'%';

-- Verify patient permissions
SHOW GRANTS FOR 'hospital_patient'@'%';
