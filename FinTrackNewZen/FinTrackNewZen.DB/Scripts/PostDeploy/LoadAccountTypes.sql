MERGE INTO AccountTypeMaster AS target
USING (
    VALUES 
        (1, 'SAVINGS_AC', 'Savings Account'),
        (2, 'CURRENT_AC', 'Current Account'),
        (3, 'BUSINESS_AC', 'Business Account'),
        (4, 'SALARY_AC', 'Salary Account'),
        (5, 'JOINT_AC', 'Joint Account')
) AS source (AccountTypeIdPk, AccountTypeCode, AccountType)
ON target.AccountTypeIdPk = source.AccountTypeIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.AccountTypeCode = source.AccountTypeCode,
        target.AccountType = source.AccountType
WHEN NOT MATCHED THEN
    INSERT (AccountTypeIdPk, AccountTypeCode, AccountType)
    VALUES (source.AccountTypeIdPk, source.AccountTypeCode, source.AccountType);