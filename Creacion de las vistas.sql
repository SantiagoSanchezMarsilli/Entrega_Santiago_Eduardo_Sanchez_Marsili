USE cuchuflito_sa;

CREATE VIEW vista_ventas_detalladas AS
SELECT 
    v.ID_Ventas,
    v.Fecha,
    p.Nombre AS Producto,
    vp.Cantidad,
    vp.Precio_Unitario,
    mp.Medio_de_Pago,
    c.Nombre AS Cliente,
    c.Apellido AS Apellido_Cliente
FROM 
    ventas v
JOIN 
    ventas_productos vp ON v.ID_Ventas = vp.ID_Ventas
JOIN 
    productos p ON vp.ID_Producto = p.ID_Producto
JOIN 
    medios_de_pago mp ON v.Medio_de_pago = mp.ID_Medio
JOIN 
    clientes c ON v.ID_Cliente = c.ID_Cliente;
    
CREATE VIEW vista_compras_detalladas AS
SELECT 
    c.ID_Compras,
    c.Fecha,
    pr.Nombre AS Producto,
    cp.Cantidad,
    cp.Precio_Unitario,
    prov.Nombre AS Proveedor,
    prov.Email AS Email
FROM 
    compras c
JOIN 
    compras_productos cp ON c.ID_Compras = cp.ID_Compras
JOIN 
    productos pr ON cp.ID_Producto = pr.ID_Producto
JOIN 
    proveedores prov ON c.ID_Proveedor = prov.ID_Proveedor;

CREATE VIEW vista_productos_agrupados AS
SELECT 
    Nombre,
    SUM(Stock) AS stock_total,
    GROUP_CONCAT(DISTINCT Descripcion SEPARATOR '; ') AS descripciones,
    GROUP_CONCAT(DISTINCT Precio SEPARATOR '; ') AS costos
FROM productos
GROUP BY Nombre;

SELECT * FROM vista_productos_agrupados;

SELECT * FROM vista_ventas_detalladas;

SELECT * FROM vista_compras_detalladas;

SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';
