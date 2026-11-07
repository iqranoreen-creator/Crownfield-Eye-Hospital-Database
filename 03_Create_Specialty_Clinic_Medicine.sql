
USE IqraNoreenDB;

-- Table 2: Specialty
CREATE TABLE Specialty (
    SpecialtyID VARCHAR(10) PRIMARY KEY,
    SpecialtyName VARCHAR(100) NOT NULL
);

-- Table 3: Clinic
CREATE TABLE Clinic (
    ClinicID VARCHAR(10) PRIMARY KEY,
    ClinicName VARCHAR(100) NOT NULL
);

-- Table 4: Medicine
CREATE TABLE Medicine (
    MedicineID VARCHAR(10) PRIMARY KEY,
    MedicineName VARCHAR(150) NOT NULL
);



SHOW TABLES;