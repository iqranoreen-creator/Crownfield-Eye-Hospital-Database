
USE IqraNoreenDB;

-- 10 additional fictional follow-up plans

INSERT INTO FollowUpPlan
(FollowUpID, AppointmentID, DueDate, Priority, Status, Notes)
VALUES
('F06', 'A006', '2026-11-16', 'Routine', 'Pending', 'Cataract assessment review'),
('F07', 'A007', '2026-11-17', 'Routine', 'Scheduled', 'Review visual acuity'),
('F08', 'A008', '2026-11-18', 'High', 'Pending', 'Investigate visual symptoms'),
('F09', 'A009', '2026-11-19', 'Routine', 'Scheduled', 'Review eyelid condition'),
('F10', 'A010', '2026-11-20', 'High', 'Pending', 'Review inflammation'),
('F11', 'A011', '2026-11-23', 'High', 'Scheduled', 'Retinal imaging review'),
('F12', 'A012', '2026-11-24', 'Urgent', 'Pending', 'Retinal specialist follow-up'),
('F13', 'A013', '2026-11-25', 'Routine', 'Scheduled', 'Eye alignment assessment'),
('F14', 'A014', '2026-11-26', 'Routine', 'Pending', 'Low vision support review'),
('F15', 'A015', '2026-11-27', 'Urgent', 'Scheduled', 'Ocular lesion specialist review');

-- Display all follow-up plans
SELECT * FROM FollowUpPlan
ORDER BY FollowUpID;
