MERGE INTO StatusMaster AS target
USING (
    VALUES 
        (1, 'ACTIVE', 'Active'),
        (2, 'INACTIVE', 'Inactive'),
        (3, 'PENDING', 'Pending'),
        (4, 'DELETED', 'Deleted'),
        (5, 'APPLICATION_SUBMITTED', 'Application Submitted'),
        (6, 'DOCUMENT_UPLOAD_PENDING', 'Document Collection / Upload Pending'),
        (7, 'DOCUMENTS_RECEIVED', 'Documents Received'),
        (8, 'UNDER_REVIEW', 'Application Under Review'),
        (9, 'KYC_IN_PROGRESS', 'KYC / Personal Verification in Progress'),
        (10, 'CREDIT_EVALUATION', 'Credit Evaluation / CIBIL Check'),
        (11, 'APPROVED_IN_PRINCIPLE', 'Application Approved (In Principle)'),
        (12, 'SANCTIONED', 'Loan Sanctioned'),
        (13, 'AGREEMENT_SIGNED', 'Loan Agreement Signed'),
        (14, 'DISBURSEMENT_IN_PROGRESS', 'Disbursement in Progress'),
        (15, 'DISBURSED', 'Loan Disbursed'),
        (16, 'EMI_SCHEDULED', 'EMI Schedule Generated'),
        (17, 'CLOSED', 'Closed / Pre-Closed'),
        (18, 'REJECTED', 'Rejected / Declined')
) AS source (StatusIdPk, StatusCode, Status)
ON target.StatusIdPk = source.StatusIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.StatusCode = source.StatusCode,
        target.Status = source.Status
WHEN NOT MATCHED THEN
    INSERT (StatusIdPk, StatusCode, Status)
    VALUES (source.StatusIdPk, source.StatusCode, source.Status);
