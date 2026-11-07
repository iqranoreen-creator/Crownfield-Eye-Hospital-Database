USE IqraNoreenDB;

-- Query 3: LEFT JOIN
-- Find patients who have no appointments

SELECT
    p.PatientID,
    p.PatientName,
    p.Postcode,
    a.AppointmentID
FROM Patient p
LEFT JOIN Appointment a
    ON p.PatientID = a.PatientID
WHERE a.AppointmentID IS NULL
ORDER BY p.PatientName;