# Proyecto DeRemate - Base de Datos

## Descripción
Este proyecto forma parte del trabajo final para la materia de Bases de Datos en la Maestría en Minería de Datos. El objetivo es diseñar, construir y analizar una base de datos que gestione la información de ventas y clientes de una empresa ficticia llamada `DeRemate`.

## Estructura del Proyecto
* **`documentacion/`**: Incluye la documentación del proyecto y el diagrama ER.
* **`scripts/`**: Contiene los scripts SQL utilizados para crear y poblar la base de datos, así como las consultas de análisis y procedimientos almacenados.
* **`power_bi/`**: Contiene el archivo del proyecto de Power BI y captura de pantalla en formato pdf del dashboard realizado.

## Uso del Proyecto
Este proyecto incluye varios scripts SQL que debes ejecutar en un orden específico para configurar y trabajar con la base de datos DeRemate. A continuación, se describe cada script y su propósito:

1. **Creación de la Base de Datos**
Utiliza el script `create_database.sql` para crear la base de datos y las tablas necesarias para almacenar la información de clientes, productos y ventas. Ejecuta este script primero para asegurarte de que la estructura de la base de datos esté lista para ser poblada con datos.

2. **Población de la Base de Datos**
Ejecuta el script `populate_data.sql` para insertar datos ficticios en las tablas. Estos datos son necesarios para realizar las consultas y análisis posteriores.

3. **Consultas de análisis**
El archivo `queries_analysis.sql` contiene una serie de consultas diseñadas para analizar los datos almacenados en la base de datos DeRemate. Las consultas extraen información clave, como los productos más vendidos, los clientes con mayor gasto, y el total de ventas por categoría.

4. **Procedimientos Almacenados**
El archivo `queries_store_procedures.sql` define varios procedimientos almacenados que permiten recuperar todas las compras de un cliente específico o calcular las ventas totales en un rango de fechas.

5. **Visualización en Power BI**
Abre el archivo `DeRemate.pbix` en Power BI para ver las visualizaciones de los datos.
