USE IqraNoreenDB;

-- Query 2: INNER JOIN using three tables
-- Display patients, appointments and clinicians

SELECT
    p.PatientName,
    a.AppointmentID,
    a.AppointmentDate,
    a.AppointmentTime,
    c.ClinicianName
FROM Appointment a
INNER JOIN Patient p
    ON a.PatientID = p.PatientID
INNER JOIN Clinician c
    ON a.ClinicianID = c.ClinicianID
ORDER BY a.AppointmentDate;