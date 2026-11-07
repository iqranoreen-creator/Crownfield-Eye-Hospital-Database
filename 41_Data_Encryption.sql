
USE IqraNoreenDB;

-- Demonstrate encryption of sensitive patient information
SELECT
    HEX(AES_ENCRYPT(
        'Confidential Patient Information',
        'DemoKey123456789'
    )) AS EncryptedData;

-- Demonstrate decryption
SELECT
    CAST(AES_DECRYPT(
        UNHEX(HEX(AES_ENCRYPT(
            'Confidential Patient Information',
            'DemoKey123456789'
        ))),
        'DemoKey123456789'
    ) AS CHAR) AS DecryptedData;
