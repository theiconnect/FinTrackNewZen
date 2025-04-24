MERGE INTO DocumentTypeMaster AS target
USING (
    VALUES 
        (1, 'AADHAR', 'Aadhar Card'),
        (2, 'PAN', 'PAN Card'),
        (3, 'DL', 'Driving License'),
        (4, 'PASSPORT', 'Passport'),
        (5, 'VOTERID', 'Voter ID'),
        (6, 'BANK_STMT', 'Bank Statement'),
        (7, 'RENT_AGR', 'Rent Agreement'),
        (8, 'ELEC_BILL', 'Electricity Bill'),
        (9, 'SAL_SLIP', 'Salary Slip'),
        (10, 'ITR', 'Income Tax Return'),
        (11, 'BIRTH_CERT', 'Birth Certificate'),
        (12, 'MARR_CERT', 'Marriage Certificate'),
        (13, 'EDU_CERT', 'Educational Certificate'),
        (14, 'EMP_ID', 'Employee ID'),
        (15, 'COMP_REG', 'Company Registration Certificate')
) AS source (DocumentTypeIdPk, DocumentTypeCode, DocumentType)
ON target.DocumentTypeIdPk = source.DocumentTypeIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.DocumentTypeCode = source.DocumentTypeCode,
        target.DocumentType = source.DocumentType
WHEN NOT MATCHED THEN
    INSERT (DocumentTypeIdPk, DocumentTypeCode, DocumentType)
    VALUES (source.DocumentTypeIdPk, source.DocumentTypeCode, source.DocumentType);