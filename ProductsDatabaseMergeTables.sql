----Merging Tables----

----Create new database----

CREATE DATABASE Products

----Create two tables and populate them----

CREATE TABLE SourceProducts(
    ProductID		INT,
    ProductName		VARCHAR(50),
    Price			DECIMAL(9,2)
)
    
INSERT INTO SourceProducts VALUES
(1,'Table',100),
(2,'Desk',80),
(3,'Chair',50),
(4,'Computer',300)


CREATE TABLE TargetProducts(
    ProductID		INT,
    ProductName		VARCHAR(50),
    Price			DECIMAL(9,2)
)
    
INSERT INTO TargetProducts VALUES
(1,'Table',100),
(2,'Desk',180),
(5,'Bed',50),
(6,'Cupboard',300)

   
-----Merging Tables by the ID Column, adding only the rows with differing ID's.-----

MERGE TargetProducts AS Target
USING SourceProducts	AS Source
ON Source.ProductID = Target.ProductID
WHEN NOT MATCHED BY Target THEN
    INSERT (ProductID,ProductName, Price) 
    VALUES (Source.ProductID,Source.ProductName, Source.Price);

----Display updated table

SELECT * FROM TargetProducts ORDER BY productID ASC;