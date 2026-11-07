USE IqraNoreenDB;

START TRANSACTION;

INSERT INTO FollowUpPlan
(FollowUpID, AppointmentID, DueDate, Priority, Status)
VALUES
('F999', 'A001', '2026-10-01', 'High', 'Pending');

ROLLBACK;