Create table ProductDetails (ProductId INT, ProductName VARCHAR(30),SupplierID VARCHAR(10))

Create table Supplierinfo (SupplierId VARCHAR(10),SupplierName VARCHAR(50),Address VARCHAR(255),City VARCHAR(30),ContactNumber VARCHAR(15),Email VARCHAR(30))


Create table ProductDetails (ProductId, ProductName,SupplierID )

Supplierinfo (Supplier_ID ,Supplier_Name ,Address ,City,ContactNumber,Email 


@Supplier_ID ,@Supplier_Name ,@Address ,@City,@ContactNumber,@Email 

SELECT * FROM Supplierinfo


Create table Category (
CategoryCode VARCHAR(20),CategoryName VARCHAR(50),Division VARCHAR(10),Region VARCHAR(20),SupplierId VARCHAR(10),SupplierName VARCHAR(50))

INSERT INTO Category (CategoryCode,CategoryName,Division,Region,SupplierId,SupplierName)
VALUES ('1','Healthcare','MDU','South','1','Hindustan')

CREATE TABLE Customers (CustomerId INT Identity(1,1),CustomerName VARCHAR(50),CustomerAddress VARCHAR(255),DOB DATETIME
,Salary decimal(15,2))
ALTER TABLE CUSTOMERS ADD CONSTRAINT PRIMARY_LCUSTOMER PRIMARY KEY(CustomerID)

Select * from Customers
CREATE PROCEDURE InsertCustomer

@CustName VARCHAR(50),
@CustAddress VARCHAR(255),
@DOB DATE,
@Salary decimal(15,2)
AS
BEGIN
INSERT INTO Customers (CustomerName,CustomerAddress,DOB,SALARY) VALUES (@CustName,@CustAddress,@DOB,@Salary);

END

Create procedure GetAllCustomers
AS
BEGIN
SELECT * FROM Customers;
END

Create procedure GetCustomers
@CustId INT
AS
BEGIN
SELECT * FROM Customers WHERE CustomerId=@CustId;
END
 
Create procedure DeleteCustomers
@CustID INT
AS
BEGIN
Delete FROM Customers where CustomerId=@CustID;
END


Create procedure UpdateCustomer
@CustId int,
@CustName VArchar(50),
@CustAddress Varchar(255),
@DOB Datetime,
@Salary decimal(15,2)
AS
BEGIN
Update Customers SET CustomerName=@CustName , CustomerAddress=@CustAddress , DOB= @DOB , Salary= @Salary WHERE CustomerId=@CustID;
END



Create procedure GetCustomerAfterGivenDate
@DOB DATE
AS
BEGIN
SELECT *FROM Customers where DOB>@DOB;
END
EXEC GetAllCustomers