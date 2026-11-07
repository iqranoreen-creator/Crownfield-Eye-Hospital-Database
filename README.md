# Crownfield Eye Hospital Database

## CPU4:103 – Introduction to Database

### Project Overview

This repository contains my individual SQL work for the Crownfield Eye Hospital database assessment.

The project involves designing, implementing and testing a relational database for a fictional ophthalmology hospital using MySQL Workbench.

The database manages patient records, appointments, clinicians, clinics, specialities, diagnoses, prescriptions, medicines and follow-up plans.

## Database Structure

The database is named `IqraNoreenDB` and contains 10 related tables:

1. Patient
2. Appointment
3. Clinician
4. Clinic
5. Specialty
6. Diagnosis
7. Prescription
8. PrescriptionItem
9. Medicine
10. FollowUpPlan

Primary keys and foreign keys establish relationships between the tables. Constraints including NOT NULL, UNIQUE, DEFAULT and CHECK support data integrity.

All patient and hospital records used in this project are fictional.

## SQL Files

The repository contains SQL scripts for:

- Creating the database and tables
- Inserting fictional sample data
- Updating and deleting records
- Testing primary keys, foreign keys and other constraints
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- Subqueries
- Stored procedures
- Triggers
- User permissions and access control
- Data encryption
- SQL injection prevention

## How to Run the SQL Files

1. Open MySQL Workbench and connect to a MySQL server.
2. Run `01_Create_Database.sql` to create the database.
3. Run the table-creation scripts beginning with `02_Create_Patient_Table.sql`, followed by `03_Create_Specialty_Clinic_Medicine.sql` and `04_Create_Remaining_Tables.sql`.
4. Run the sample-data insertion scripts, starting with `05_Insert_Initial_Data.sql`, in dependency order.
5. Select the `IqraNoreenDB` database before running the remaining queries.
6. Run the individual SQL query files to examine their results.
7. Run the stored procedure and trigger creation scripts before their corresponding test scripts.
8. Run security demonstrations separately with an appropriately authorised MySQL account.

Some testing scripts intentionally attempt invalid operations to demonstrate that database constraints and triggers reject incorrect data. These scripts should be run individually rather than as part of an automatic setup.

## Stored Procedure Demonstration

The stored procedure `GetPatientAppointments` retrieves appointments for a selected patient.

Example:

```sql
CALL GetPatientAppointments('OP001');
```

## Trigger Demonstration

The `CheckFollowUpDate` trigger checks that a follow-up date is not earlier than its associated appointment date.

An invalid test produces MySQL Error 1644, demonstrating that the trigger rejects incorrect data.

## Software Used

- MySQL Workbench
- MySQL
- draw.io for the Entity Relationship Diagram
- GitHub for version control and code submission

## Notes

This repository contains academic demonstration code and fictional sample data. SQL scripts should be reviewed before execution, particularly those involving deletion, permissions and encryption.
