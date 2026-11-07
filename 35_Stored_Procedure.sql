
USE IqraNoreenDB;

-- Query 5: Stored Procedure
-- Retrieve appointments for a selected patient

DELIMITER //

CREATE PROCEDURE GetPatientAppointments(
    IN InputPatientID VARCHAR(10)
)
BEGIN
    SELECT
        p.PatientID,
        p.PatientName,
        a.AppointmentID,
        a.AppointmentDate,
        a.AppointmentTime,
        c.ClinicianName
    FROM Patient p
    INNER JOIN Appointment a
        ON p.PatientID = a.PatientID
    INNER JOIN Clinician c
        ON a.ClinicianID = c.ClinicianID
    WHERE p.PatientID = InputPatientID
    ORDER BY a.AppointmentDate;
END //

DELIMITER ;
