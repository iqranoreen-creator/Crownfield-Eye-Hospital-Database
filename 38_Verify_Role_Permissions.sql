
USE IqraNoreenDB;

-- Check Administrator permissions
SHOW GRANTS FOR 'hospital_admin'@'%';

-- Check Doctor permissions
SHOW GRANTS FOR 'hospital_doctor'@'%';

-- Check Receptionist permissions
SHOW GRANTS FOR 'hospital_receptionist'@'%';
