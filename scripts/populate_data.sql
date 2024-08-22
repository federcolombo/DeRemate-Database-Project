-- Seleccionar la base de datos "DeRemate"
USE DeRemate;

-- Insertar datos en la tabla Customers
INSERT INTO Customers (ID, Nombre, Apellido, Email, FechaRegistro) VALUES
(1, 'Juan', 'Perez', 'juan.perez@gmail.com', '2023-01-15'),
(2, 'Ana', 'Gomez', 'ana.gomez@gmail.com', '2023-02-20'),
(3, 'Luis', 'Martinez', 'luis.martinez@outlook.com', '2023-03-10'),
(4, 'Maria', 'Lopez', 'maria.lopez@gmail.com', '2023-04-05'),
(5, 'Carlos', 'Fernandez', 'carlos.fernandez@hotmail.com', '2023-05-22'),
(6, 'Sofia', 'Ramirez', 'sofia.ramirez@outlook.com', '2023-06-15'),
(7, 'Miguel', 'Suarez', 'miguel.suarez@fibertel.com', '2023-07-01'),
(8, 'Laura', 'Gonzalez', 'laura.gonzalez@argentina.com', '2023-07-20'),
(9, 'Javier', 'Rodriguez', 'javier.rodriguez@yahoo.com', '2023-08-05'),
(10, 'Lucia', 'Diaz', 'lucia.diaz@facebook.com', '2023-08-15');

SELECT * FROM Customers;

-- Insertar datos en la tabla Products
INSERT INTO Products (ID, Nombre, Categoria, Precio) VALUES
(1, 'Laptop', 'Electronica', 1200.00),
(2, 'Smartphone', 'Electronica', 800.00),
(3, 'Tablet', 'Electronica', 500.00),
(4, 'Monitor', 'Electronica', 300.00),
(5, 'Teclado', 'Accesorios', 50.00),
(6, 'Mouse', 'Accesorios', 30.00),
(7, 'Impresora', 'Electronica', 200.00),
(8, 'Camara', 'Fotografia', 450.00),
(9, 'Auriculares', 'Accesorios', 100.00),
(10, 'Smartwatch', 'Electronica', 250.00),
(11, 'Parlante Bluetooth', 'Accesorios', 150.00),
(12, 'Powerbank', 'Accesorios', 75.00),
(13, 'Televisor', 'Electronica', 1000.00),
(14, 'Microondas', 'Electrodomesticos', 200.00),
(15, 'Heladera', 'Electrodomesticos', 1200.00),
(16, 'Lavarropas', 'Electrodomesticos', 800.00),
(17, 'AirFryer', 'Electrodomesticos', 700.00),
(18, 'Cafetera', 'Electrodomesticos', 150.00),
(19, 'Ventilador', 'Electrodomesticos', 100.00),
(20, 'Licuadora', 'Electrodomesticos', 80.00);

SELECT * FROM Products;

-- Insertar datos en la tabla Sales
INSERT INTO Sales (ID, CustomerID, ProductID, Fecha, Cantidad, Total) VALUES
(1, 1, 1, '2023-06-01', 1, 1200.00),
(2, 1, 5, '2023-06-01', 2, 100.00),
(3, 2, 2, '2023-06-05', 1, 800.00),
(4, 2, 6, '2023-06-05', 1, 30.00),
(5, 3, 3, '2023-06-10', 1, 500.00),
(6, 3, 7, '2023-06-12', 1, 200.00),
(7, 4, 4, '2023-06-15', 2, 600.00),
(8, 4, 9, '2023-06-15', 1, 100.00),
(9, 5, 8, '2023-06-20', 1, 450.00),
(10, 5, 10, '2023-06-22', 1, 250.00),
(11, 1, 3, '2023-07-01', 1, 500.00),
(12, 2, 9, '2023-07-03', 1, 100.00),
(13, 3, 10, '2023-07-05', 1, 250.00),
(14, 4, 2, '2023-07-07', 1, 800.00),
(15, 5, 1, '2023-07-10', 1, 1200.00),
(16, 6, 4, '2023-07-15', 1, 300.00),
(17, 6, 11, '2023-07-15', 2, 300.00),
(18, 7, 12, '2023-07-20', 1, 75.00),
(19, 7, 13, '2023-07-21', 1, 1000.00),
(20, 8, 14, '2023-07-25', 1, 200.00),
(21, 8, 15, '2023-07-25', 1, 1200.00),
(22, 9, 16, '2023-08-01', 1, 800.00),
(23, 9, 17, '2023-08-01', 1, 700.00),
(24, 10, 18, '2023-08-05', 1, 150.00),
(25, 10, 19, '2023-08-06', 2, 200.00),
(26, 1, 20, '2023-08-10', 1, 80.00),
(27, 2, 12, '2023-08-12', 1, 75.00),
(28, 3, 18, '2023-08-15', 1, 150.00),
(29, 4, 19, '2023-08-18', 1, 100.00),
(30, 5, 14, '2023-08-20', 1, 200.00);

SELECT * FROM Sales;