
USE IqraNoreenDB;

-- 10 additional fictional diagnosis records
INSERT INTO Diagnosis
    (DiagnosisID, AppointmentID, DiagnosisName)
VALUES
    ('D06', 'A006', 'Cataract'),
    ('D07', 'A007', 'Refractive error'),
    ('D08', 'A008', 'Visual disturbance'),
    ('D09', 'A009', 'Ptosis'),
    ('D10', 'A010', 'Anterior uveitis'),
    ('D11', 'A011', 'Diabetic retinopathy'),
    ('D12', 'A012', 'Retinal detachment'),
    ('D13', 'A013', 'Strabismus'),
    ('D14', 'A014', 'Low vision'),
    ('D15', 'A015', 'Suspected ocular lesion');

-- Display all diagnosis records
SELECT * FROM Diagnosis
ORDER BY DiagnosisID;
