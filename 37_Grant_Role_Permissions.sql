
USE IqraNoreenDB;

-- Administrator permissions
GRANT SELECT, INSERT, UPDATE, DELETE
ON IqraNoreenDB.*
TO 'hospital_admin';

-- Doctor permissions
GRANT SELECT
ON IqraNoreenDB.*
TO 'hospital_doctor';

GRANT UPDATE
ON IqraNoreenDB.Diagnosis
TO 'hospital_doctor';

-- Receptionist permissions
GRANT SELECT
ON IqraNoreenDB.Patient
TO 'hospital_receptionist';

GRANT SELECT, INSERT, UPDATE
ON IqraNoreenDB.Appointment
TO 'hospital_receptionist';
