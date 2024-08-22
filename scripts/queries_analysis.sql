-- Seleccionar la base de datos "DeRemate"
USE DeRemate;

-- Listar los 5 productos mas vendidos por cantidad total
SELECT TOP 5 
    Products.Nombre AS NombreProducto, 
    SUM(Sales.Cantidad) AS TotalVendido
FROM 
    Sales
JOIN 
    Products ON Sales.ProductID = Products.ID
GROUP BY 
    Products.Nombre
ORDER BY 
    TotalVendido DESC;

-- Encontrar los 5 clientes que han gastado mas en total
SELECT TOP 5 
    Customers.Nombre AS Nombre, 
    Customers.Apellido AS Apellido, 
    SUM(Sales.Total) AS GastoTotal
FROM 
    Sales
JOIN 
    Customers ON Sales.CustomerID = Customers.ID
GROUP BY 
    Customers.Nombre, Customers.Apellido
ORDER BY 
    GastoTotal DESC;

-- Obtener el ingreso total por categoria de producto
SELECT 
    Products.Categoria AS Categoria, 
    SUM(Sales.Total) AS IngresoTotal
FROM 
    Sales
JOIN 
    Products ON Sales.ProductID = Products.ID
GROUP BY 
    Products.Categoria
ORDER BY 
    IngresoTotal DESC;

-- Calcular el promedio de ventas diarias (alternativa 1)
SELECT 
    AVG(DailySales) AS PromedioVentasDiarias
FROM (
    SELECT 
        Fecha, 
        SUM(Total) AS DailySales
    FROM 
        Sales
    GROUP BY 
        Fecha
) AS DailyTotals;

-- Calcular el promedio de ventas diarias (alternativa 2)
SELECT 
    SUM(Total) / COUNT(DISTINCT Fecha) AS PromedioVentasDiarias
FROM 
    Sales;