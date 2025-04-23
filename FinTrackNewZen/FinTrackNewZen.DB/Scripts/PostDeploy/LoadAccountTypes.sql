MERGE INTO AccountTypeMaster AS target
USING (
    VALUES 
        (1, 'SAVINGS', 'Savings Account'),
        (2, 'CURRENT', 'Current Account'),
        (3, 'BUSINESS', 'Business Account'),
        (4, 'SALARY', 'Salary Account'),
        (5, 'JOINT', 'Joint Account'),
        (6, 'FIXEDDEPOSIT', 'Fixed Deposit Account'),
        (7, 'NRI', 'NRI Account'),
        (8, 'LOAN', 'Loan Account'),
        (9, 'CREDITCARD', 'Credit Card Account'),
        (10, 'WAL', 'Digital Wallet'),
        (11, 'CHQ', 'Checking Account'),
        (12, 'INV', 'Investment Account'),
        (13, 'GST', 'GST Account'),
        (14, 'TRST', 'Trust Account'),
        (15, 'ESC', 'Escrow Account')
) AS source (AccountTypeIdPk, AccountTypeCode, AccountType)
ON target.AccountTypeIdPk = source.AccountTypeIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.AccountTypeCode = source.AccountTypeCode,
        target.AccountType = source.AccountType
WHEN NOT MATCHED THEN
    INSERT (AccountTypeIdPk, AccountTypeCode, AccountType)
    VALUES (source.AccountTypeIdPk, source.AccountTypeCode, source.AccountType);