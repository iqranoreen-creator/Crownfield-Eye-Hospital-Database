
USE IqraNoreenDB;

-- Table 5: Clinician
CREATE TABLE Clinician (
    ClinicianID VARCHAR(10) PRIMARY KEY,
    ClinicianName VARCHAR(100) NOT NULL,
    SpecialtyID VARCHAR(10) NOT NULL,
    FOREIGN KEY (SpecialtyID)
        REFERENCES Specialty(SpecialtyID)
);

-- Table 6: Appointment
CREATE TABLE Appointment (
    AppointmentID VARCHAR(10) PRIMARY KEY,
    PatientID VARCHAR(10) NOT NULL,
    ClinicianID VARCHAR(10) NOT NULL,
    ClinicID VARCHAR(10) NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime TIME NOT NULL,
    Notes TEXT NULL,

    FOREIGN KEY (PatientID)
        REFERENCES Patient(PatientID),

    FOREIGN KEY (ClinicianID)
        REFERENCES Clinician(ClinicianID),

    FOREIGN KEY (ClinicID)
        REFERENCES Clinic(ClinicID)
);

-- Table 7: Diagnosis
CREATE TABLE Diagnosis (
    DiagnosisID VARCHAR(10) PRIMARY KEY,
    AppointmentID VARCHAR(10) NOT NULL,
    DiagnosisName VARCHAR(150) NOT NULL,

    FOREIGN KEY (AppointmentID)
        REFERENCES Appointment(AppointmentID)
);

-- Table 8: Prescription
CREATE TABLE Prescription (
    PrescriptionID VARCHAR(10) PRIMARY KEY,
    AppointmentID VARCHAR(10) NOT NULL,
    PrescriptionDate DATE NOT NULL,
    PrescriptionType VARCHAR(20) NOT NULL,
    RepeatIntervalDays INT NULL,
    RepeatEndDate DATE NULL,

    FOREIGN KEY (AppointmentID)
        REFERENCES Appointment(AppointmentID),

    CONSTRAINT chk_prescription_type
        CHECK (PrescriptionType IN ('Repeat', 'One-time')),

    CONSTRAINT chk_repeat_details
        CHECK (
            (PrescriptionType = 'Repeat'
             AND RepeatIntervalDays > 0
             AND RepeatIntervalDays IS NOT NULL
             AND RepeatEndDate IS NOT NULL
             AND RepeatEndDate > PrescriptionDate)
            OR
            (PrescriptionType = 'One-time'
             AND RepeatIntervalDays IS NULL
             AND RepeatEndDate IS NULL)
        )
);

-- Table 9: PrescriptionItem
CREATE TABLE PrescriptionItem (
    PrescriptionItemID VARCHAR(10) PRIMARY KEY,
    PrescriptionID VARCHAR(10) NOT NULL,
    MedicineID VARCHAR(10) NOT NULL,
    Dose VARCHAR(50) NOT NULL,
    Route VARCHAR(50) NOT NULL,
    Frequency VARCHAR(50) NOT NULL,
    Duration VARCHAR(50) NOT NULL,

    FOREIGN KEY (PrescriptionID)
        REFERENCES Prescription(PrescriptionID),

    FOREIGN KEY (MedicineID)
        REFERENCES Medicine(MedicineID)
);

-- Table 10: FollowUpPlan
CREATE TABLE FollowUpPlan (
    FollowUpID VARCHAR(10) PRIMARY KEY,
    AppointmentID VARCHAR(10) NOT NULL UNIQUE,
    DueDate DATE NOT NULL,
    Priority VARCHAR(20) NOT NULL,
    Status VARCHAR(20) NOT NULL DEFAULT 'Pending',
    Notes VARCHAR(255) NULL,

    FOREIGN KEY (AppointmentID)
        REFERENCES Appointment(AppointmentID),

    CONSTRAINT chk_followup_priority
        CHECK (Priority IN ('High', 'Urgent', 'Routine')),

    CONSTRAINT chk_followup_status
        CHECK (Status IN (
            'Pending', 'Scheduled',
            'Completed', 'Cancelled'
        ))
);



SHOW TABLES;




DESCRIBE Prescription;


SHOW TABLES;

