USE IqraNoreenDB;

CREATE TABLE PatientConfidentialDemo (
    DemoID INT PRIMARY KEY,
    EncryptedNotes VARBINARY(255)
);
INSERT INTO PatientConfidentialDemo (DemoID, EncryptedNotes)
VALUES (
    1,
    AES_ENCRYPT('Confidential patient medical notes', 'DemoKey2026!')
);

SELECT
    DemoID,
    HEX(EncryptedNotes) AS EncryptedData,
    CAST(
        AES_DECRYPT(EncryptedNotes, 'DemoKey2026!')
        AS CHAR
    ) AS DecryptedNotes
FROM PatientConfidentialDemo;