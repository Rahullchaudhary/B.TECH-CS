CREATE TABLE BILLING
(
    BillId NUMBER(4) PRIMARY KEY,
    AccountNo NUMBER(10),
    CustomerId VARCHAR(6),
    BillDate DATE DEFAULT CURRENT_TIMESTAMP,   # SYSDATE MEANS CURRENT SYSTEM DATE
    PaymentType VARCHAR(12) 
                CHECK (PaymentType IN ('Creditcard' , 'Debitcard)')),
    CONSTRAINT AccountNo_FK 
                FOREIGN KEY (AccountNo, CustomerId) REFERENCES BANKINFO(AccountNo,CustomerId)
);




