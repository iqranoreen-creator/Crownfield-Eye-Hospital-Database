
USE IqraNoreenDB;

-- Query 6: Trigger
-- Prevent follow-up dates earlier than appointment dates

DELIMITER //

CREATE TRIGGER CheckFollowUpDate
BEFORE INSERT ON FollowUpPlan
FOR EACH ROW
BEGIN
    DECLARE OriginalAppointmentDate DATE;

    SELECT AppointmentDate
    INTO OriginalAppointmentDate
    FROM Appointment
    WHERE AppointmentID = NEW.AppointmentID;

    IF NEW.DueDate < OriginalAppointmentDate THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT =
        'Follow-up date cannot be before appointment date';
    END IF;
END //

DELIMITER ;
