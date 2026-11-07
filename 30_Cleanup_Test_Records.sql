USE IqraNoreenDB;

-- Remove the temporary follow-up test record
DELETE FROM FollowUpPlan
WHERE FollowUpID = 'F999'
AND AppointmentID = 'A999';

-- Remove the temporary appointment
DELETE FROM Appointment
WHERE AppointmentID = 'A999';

-- Confirm both test records have been removed
SELECT * FROM FollowUpPlan
WHERE FollowUpID = 'F999';

SELECT * FROM Appointment
WHERE AppointmentID = 'A999';