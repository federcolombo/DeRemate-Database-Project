-- Crear la base de datos llamada "DeRemate"
CREATE DATABASE DeRemate;

-- Seleccionar la base de datos "DeRemate"
USE DeRemate;

-- Crear tabla Customers para almacenar los datos de los clientes
CREATE TABLE Customers (
    ID INT PRIMARY KEY,                
    Nombre NVARCHAR(50),               
    Apellido NVARCHAR(50),             
    Email NVARCHAR(100),               
    FechaRegistro DATE                 
);

SELECT * FROM Customers;

-- Crear tabla Products para almacenar los datos de los productos
CREATE TABLE Products (
    ID INT PRIMARY KEY,                
    Nombre NVARCHAR(100),              
    Categoria NVARCHAR(50),            
    Precio DECIMAL(10, 2)              
);

SELECT * FROM Products;

-- Crear tabla Sales para registrar las ventas, relacionando productos y clientes
CREATE TABLE Sales (
    ID INT PRIMARY KEY,                
    CustomerID INT,                    
    ProductID INT,                     
    Fecha DATE,                        
    Cantidad INT,                      
    Total DECIMAL(10, 2),              
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID),  
    FOREIGN KEY (ProductID) REFERENCES Products(ID)     
);

SELECT * FROM Sales;