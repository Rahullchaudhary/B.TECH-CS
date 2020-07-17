CREATE TABLE ITEM 
(
    ItemId VARCHAR(6) PRIMARY KEY,
    ItemName VARCHAR(30) NOT NULL,
    QtyOnHand NUMBER(3),
    UnitPrice NUMBER(6,2) CHECK (UnitPrice > 0),
    Class CHAR(1),
    UnitOfMeasurement VARCHAR(12),
    ReOrderLevel NUMBER(3) CHECK (ReOrderLevel > 0),
    ReOrderQty NUMBER(3) CHECK (ReOrderQty > 0),
    Discount NUMBER(2),
    CHECK (QtyOnHand > ReOrderLevel)
);