USE lab_mysql;
CREATE TABLE car (Car_ID int NOT NULL AUTO_INCREMENT, 
	VIN CHAR(17) NOT NULL, 
    Manufacturer VARCHAR(20), 
    Model VARCHAR(20), 
    Year INT, 
    Color VARCHAR(10), 
    PRIMARY KEY (Car_ID));

CREATE TABLE Customer (Customer_ID int NOT NULL AUTO_INCREMENT, 
	Customer_number INT NOT NULL, 
    Name VARCHAR(30) NOT NULL, 
    Phone VARCHAR(20) NOT NULL, 
    Email VARCHAR(30), 
    Address VARCHAR(30), 
    City VARCHAR(20), 
    State VARCHAR(20), 
    Country VARCHAR(25), 
    Postal VARCHAR(7), 
    PRIMARY KEY (Customer_ID));
    
CREATE TABLE Salesperson (Staff_ID int NOT NULL AUTO_INCREMENT, 
	Staff_number CHAR(5) NOT NULL, 
    Name VARCHAR(30) NOT NULL, 
    Store VARCHAR(20) NOT NULL, 
    PRIMARY KEY (Staff_ID));     

CREATE TABLE Invoice(Invoice_ID int NOT NULL AUTO_INCREMENT, 
	Invoice_number CHAR(9) NOT NULL, 
    Date DATE NOT NULL, 
    Car INT NOT NULL, 
    FOREIGN KEY (Customer) REFERENCES Customer(Custmer_ID), 
    FOREIGN KEY (Salesperson) REFERENCES Salesperson(Staff_ID), 
    PRIMARY KEY (Invoice_ID));
    
