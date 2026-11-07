
USE IqraNoreenDB;

-- Test 4: Invalid CHECK constraint
-- 'InvalidPriority' is not an allowed priority

UPDATE FollowUpPlan
SET Priority = 'InvalidPriority'
WHERE FollowUpID = 'F01';
