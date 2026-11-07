USE IqraNoreenDB;

-- Count appointments for each clinician
SELECT
    ClinicianID,
    COUNT(*) AS TotalAppointments
FROM Appointment
GROUP BY ClinicianID
HAVING COUNT(*) > 1;