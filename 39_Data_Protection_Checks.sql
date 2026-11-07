
USE IqraNoreenDB;

-- Check password security settings
SHOW VARIABLES LIKE 'validate_password%';

-- Check secure database connections
SHOW VARIABLES LIKE 'require_secure_transport';

-- Check database audit logging availability
SHOW VARIABLES LIKE 'audit_log%';
