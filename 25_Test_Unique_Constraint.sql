
USE IqraNoreenDB;

-- Test 5: UNIQUE constraint
-- Appointment A001 already has a follow-up plan

INSERT INTO FollowUpPlan
(FollowUpID, AppointmentID, DueDate, Priority, Status, Notes)
VALUES
('F999', 'A001', '2026-12-01',
 'High', 'Pending', 'Duplicate follow-up test');
