
USE IqraNoreenDB;

INSERT INTO PrescriptionItem
(PrescriptionItemID, PrescriptionID, MedicineID,
 Dose, Route, Frequency, Duration)
VALUES
('PI01', 'P01', 'M01', '1 drop', 'Ophthalmic',
 'Once daily', '30 days'),

('PI02', 'P01', 'M02', '1 drop', 'Ophthalmic',
 'Twice daily', '14 days'),

('PI03', 'P02', 'M03', '2 mg', 'Intravitreal injection',
 'Monthly', '5 months'),

('PI04', 'P03', 'M01', '1 drop', 'Ophthalmic',
 'Once daily', '30 days'),

('PI05', 'P04', 'M04', '1 drop', 'Ophthalmic',
 'Twice daily', '14 days');

SELECT * FROM PrescriptionItem;
