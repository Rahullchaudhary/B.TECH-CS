CREATE TABLE BILLING
(
    BillId FLOAT(4) PRIMARY KEY,
    AccountNo FLOAT(10),
    CustomerId VARCHAR(6),
    BillDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    PaymentType VARCHAR(12) CHECK (PaymentType IN ('Creditcard','Debitcard')),
    CONSTRAINT
		FOREIGN KEY (AccountNo,CustomerId) REFERENCES BANKINFO(AccountNo,CustomerId)
);