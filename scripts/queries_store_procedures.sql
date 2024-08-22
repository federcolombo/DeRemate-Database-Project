-- Seleccionar la base de datos "DeRemate"
USE DeRemate;

-- Crear un procedimiento almacenado que devuelva todas las compras de un cliente especifico
CREATE PROCEDURE ObtenerComprasPorCliente
    @CustomerID INT
AS
BEGIN
    SELECT 
        Sales.ID AS IDVenta,
        Products.Nombre AS NombreProducto,
        Sales.Fecha,
        Sales.Cantidad,
        Sales.Total
    FROM 
        Sales
    JOIN 
        Products ON Sales.ProductID = Products.ID
    WHERE 
        Sales.CustomerID = @CustomerID;
END;

-- Ejecutar el procedimiento almacenado para obtener las compras del cliente con ID 1
EXEC ObtenerComprasPorCliente @CustomerID = 1;

-- Crear un procedimiento almacenado que devuelva las ventas totales en un rango de fechas
CREATE PROCEDURE ObtenerVentasPorRangoDeFechas
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    SELECT 
        SUM(Total) AS VentasTotales
    FROM 
        Sales
    WHERE 
        Fecha BETWEEN @FechaInicio AND @FechaFin;
END;

-- Ejecutar el procedimiento almacenado para obtener las ventas totales entre 1 de junio y 1 de julio de 2023
EXEC ObtenerVentasPorRangoDeFechas @FechaInicio = '2023-06-01', @FechaFin = '2023-07-01';