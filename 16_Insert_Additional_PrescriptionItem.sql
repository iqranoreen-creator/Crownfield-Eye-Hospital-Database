
USE IqraNoreenDB;

-- 10 additional fictional prescription items
-- Medication instructions are academic test data only

INSERT INTO PrescriptionItem
(PrescriptionItemID, PrescriptionID, MedicineID,
 Dose, Route, Frequency, Duration)
VALUES
('PI06', 'P05', 'M05', '1 drop', 'Ophthalmic', 'Twice daily', '30 days'),
('PI07', 'P06', 'M06', '1 drop', 'Ophthalmic', 'Twice daily', '14 days'),
('PI08', 'P07', 'M07', '1 drop', 'Ophthalmic', 'Once daily', '6 months'),
('PI09', 'P08', 'M08', '1 drop', 'Ophthalmic', 'Once daily', '7 days'),
('PI10', 'P09', 'M09', '1 drop', 'Ophthalmic', 'Twice daily', '3 months'),
('PI11', 'P10', 'M10', '1 drop', 'Ophthalmic', 'Once daily', '6 months'),
('PI12', 'P11', 'M11', '1 drop', 'Ophthalmic', 'Four times daily', '7 days'),
('PI13', 'P12', 'M12', 'Apply thin layer', 'Ophthalmic', 'Twice daily', '14 days'),
('PI14', 'P13', 'M13', '250 mg', 'Oral', 'Twice daily', '6 months'),
('PI15', 'P14', 'M14', '1 drop', 'Ophthalmic', 'Twice daily', '7 days');

-- Check all prescription items
SELECT * FROM PrescriptionItem
ORDER BY PrescriptionItemID;
