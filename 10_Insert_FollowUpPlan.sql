
USE IqraNoreenDB;

INSERT INTO FollowUpPlan
(FollowUpID, AppointmentID, DueDate, Priority, Status, Notes)
VALUES
('F01', 'A001', '2026-11-16', 'High', 'Pending', 'Review IOP'),
('F02', 'A002', '2026-11-02', 'Urgent', 'Pending', 'OCT before review'),
('F03', 'A003', '2027-02-08', 'Routine', 'Pending', 'Visual field test'),
('F04', 'A004', '2027-04-06', 'Routine', 'Pending', 'Monitor'),
('F05', 'A005', '2026-12-02', 'Routine', 'Pending', 'Corneal topography');

SELECT * FROM FollowUpPlan;
