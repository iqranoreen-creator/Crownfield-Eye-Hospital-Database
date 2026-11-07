
USE IqraNoreenDB;

-- Query 4: Subquery
-- Find patients with above-average appointment counts

SELECT
    p.PatientID,
    p.PatientName,
    COUNT(a.AppointmentID) AS TotalAppointments
FROM Patient p
INNER JOIN Appointment a
    ON p.PatientID = a.PatientID
GROUP BY p.PatientID, p.PatientName
HAVING COUNT(a.AppointmentID) > (
    SELECT AVG(AppointmentCount)
    FROM (
        SELECT COUNT(*) AS AppointmentCount
        FROM Appointment
        GROUP BY PatientID
    ) AS PatientCounts
)
ORDER BY TotalAppointments DESC;
