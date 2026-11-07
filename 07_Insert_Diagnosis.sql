
USE IqraNoreenDB;

INSERT INTO Diagnosis
(DiagnosisID, AppointmentID, DiagnosisName)
VALUES
('D01', 'A001', 'Ocular hypertension'),
('D02', 'A002', 'Diabetic macular oedema'),
('D03', 'A003', 'Ocular hypertension'),
('D04', 'A004', 'Glaucoma suspect'),
('D05', 'A005', 'Keratoconus');

SELECT * FROM Diagnosis;
