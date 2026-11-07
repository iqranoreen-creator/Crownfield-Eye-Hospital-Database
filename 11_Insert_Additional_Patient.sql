
USE IqraNoreenDB;

-- 10 additional fictional patients
INSERT INTO Patient
(PatientID, PatientName, Postcode)
VALUES
('OP005', 'Emily Carter', 'M16 8AB'),
('OP006', 'James Wilson', 'M20 4CD'),
('OP007', 'Fatima Khan', 'M14 6EF'),
('OP008', 'Oliver Brown', 'M33 2GH'),
('OP009', 'Aisha Ahmed', 'M21 9JK'),
('OP010', 'Noah Thompson', 'M15 5LM'),
('OP011', 'Grace Mitchell', 'M32 7NP'),
('OP012', 'Adam Hussain', 'M19 3QR'),
('OP013', 'Isabella Clarke', 'M41 6ST'),
('OP014', 'Daniel Morgan', 'M23 8UV');

SELECT * FROM Patient;
