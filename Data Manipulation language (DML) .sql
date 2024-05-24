CREATE TABLE Customer (
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel NUMBER
);

-- Create Product Table
CREATE TABLE Product (
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_name VARCHAR(20) NOT NULL,
    category VARCHAR(20),
    Price NUMBER 
);

-- Create Order Table
CREATE TABLE Orders (
    Customer_id VARCHAR(20),
    Product_id VARCHAR(20),
    OrderDate DATE ,
    Quantity NUMBER,
    Total_amount NUMBER,
    PRIMARY KEY (Customer_id, Product_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);



INSERT INTO Customer (Customer_id, Customer_Name, Customer_Tel) VALUES ('C01', 'ALI', 71321009);
INSERT INTO Customer (Customer_id, Customer_Name, Customer_Tel) VALUES ('C02', 'ASMA', 77345823);



INSERT INTO Product (Product_id, Product_name, category, Price) VALUES ('P01', 'Samsung Galaxy S20', 'Smartphone', 3299);
INSERT INTO Product (Product_id, Product_name, category, Price) VALUES ('P02', 'ASUS Notebook', 'PC', 4599);


INSERT INTO Orders (Customer_id, Product_id, OrderDate, Quantity, Total_amount) VALUES ('C01', 'P01', NULL, 2, 9189);
INSERT INTO Orders (Customer_id, Product_id, OrderDate, Quantity, Total_amount) VALUES ('C02', 'P02', TO_DATE('28/05/2020', 'DD/MM/YYYY'), 1, 3299);








