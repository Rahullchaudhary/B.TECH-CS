CREATE TABLE ITEM
(
    ItemId VARCHAR(6) PRIMARY KEY,
    ItemName VARCHAR(30) NOT NULL,
    QtyOnHand FLOAT(3),
    UnitPrice FLOAT(6,2) CHECK(UnitPrice > 0),
    Class CHAR(1),
    UnitOfMeasurement VARCHAR(12),
    ReOrderLevel FLOAT(3) CHECK(ReOrderLevel > 0),
    ReorderQty FLOAT(3) CHECK(ReorderQty > 0),
    Discount FLOAT(2),
    CONSTRAINT CHECK (QtyOnHand > ReOrderLevel)
);  