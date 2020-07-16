CREATE TABLE BANKINFO
(
    AccountNo NUMBER(10),
    CustomerId VARCHAR(6),
    CONSTRAINT CustomerId_PK 
                            PRIMARY KEY (AccountNo, CustomerId),
    CONSTRAINT CustomerID_FK
                            FOREIGN KEY (CustomerId) 
                            REFERENCES CUSTOMER(CustomerId) 
                            ON DELETE  CASCADE
);
