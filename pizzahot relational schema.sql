-- Relational Schema

CREATE TABLE Stores (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Location VARCHAR(25),
    ContactInfo VARCHAR(25)
);


CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    SSN VARCHAR(20),
    Name VARCHAR(25),
    Gender CHAR(1),
    DoB DATE,
    Position VARCHAR(100),
    Salary DECIMAL(10, 2),
    AffiliateStore INT,
    FOREIGN KEY (AffiliateStore) REFERENCES Stores(ID)
);


CREATE TABLE Vendors (
    Name VARCHAR(50) PRIMARY KEY,
    Address VARCHAR(25),
    ContactPerson VARCHAR(25)
);


CREATE TABLE Products (
    Name VARCHAR(50) PRIMARY KEY,
    Vendor VARCHAR(25),
    Price DECIMAL(10, 2),
    Quantity INT,
    FOREIGN KEY (Vendor) REFERENCES Vendors(Name)
);
