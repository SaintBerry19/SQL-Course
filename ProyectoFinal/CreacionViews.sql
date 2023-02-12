USE ecommerce_sql_course;
CREATE VIEW Ventas_Detalladas_Extendidas
AS
(SELECT vd.venta_id,m.nombre,m.precio,vd.cantidad,(m.precio*vd.cantidad) as "Total",v.fecha,T.Nombre_Cliente,T.Nombre_Empleado
FROM  ventas_detalladas vd JOIN materiales m
ON vd.material_id=m.material_id
JOIN ventas v ON v.venta_id=vd.venta_id
JOIN (SELECT v.venta_id,CONCAT(c.nombre, " ",c.apellido) AS "Nombre_Cliente",CONCAT(e.nombre, " ",e.apellido) AS "Nombre_Empleado"
FROM ventas v JOIN clientes c
ON v.cliente_id=c.cliente_id
JOIN empleados e
ON v.empleado_id=e.empleado_id) T
ON vd.venta_id=T.venta_id
ORDER BY venta_id);

CREATE VIEW Compras_Detalladas_Extendidas
AS
(SELECT cd.compra_id,m.nombre,m.precio,cd.cantidad,(m.precio*cd.cantidad) as "Total",c.fecha,T.Nombre_Trabajador_Proveedor,T.Nombre_Empleado
FROM  compras_detalladas cd JOIN materiales m
ON cd.material_id=m.material_id
JOIN compras c ON c.compra_id=cd.compra_id
JOIN (SELECT c.compra_id,CONCAT(p.nombre, " ",p.apellido) AS "Nombre_Trabajador_Proveedor",CONCAT(e.nombre, " ",e.apellido) AS "Nombre_Empleado"
FROM compras c JOIN trabajador_proveedores p
ON c.trabajador_proveedor_id=p.trabajador_proveedor_id
JOIN empleados e
ON c.empleado_id=e.empleado_id) T
ON cd.compra_id=T.compra_id
ORDER BY compra_id);

CREATE VIEW Mayores_Vendedores
AS 
(SELECT v.empleado_id,COUNT(v.empleado_id) AS "Ventas Totales",CONCAT(e.nombre, " ",e.apellido) AS "Nombre_Empleado",T.Area_de_Trabajo
FROM ventas v JOIN empleados e
ON v.empleado_id=e.empleado_id
JOIN (SELECT e.empleado_id,e.nombre,a.nombre AS "Area_de_Trabajo"
FROM empleados e JOIN areas a
ON e.area_id = a.area_id) T
ON T.empleado_id=v.empleado_id
GROUP BY empleado_id
ORDER BY COUNT(empleado_id) DESC);

CREATE VIEW Mayores_Compradores
AS 
(SELECT c.empleado_id,COUNT(c.empleado_id) AS "Compras Totales",CONCAT(e.nombre, " ",e.apellido) AS "Nombre_Empleado",T.Area_de_Trabajo
FROM compras c JOIN empleados e
ON c.empleado_id=e.empleado_id
JOIN (SELECT e.empleado_id,e.nombre,a.nombre AS "Area_de_Trabajo"
FROM empleados e JOIN areas a
ON e.area_id = a.area_id) T
ON T.empleado_id=c.empleado_id
GROUP BY empleado_id
ORDER BY COUNT(empleado_id) DESC);

CREATE VIEW Mayor_Ingreso_Material
AS
(SELECT vd.material_id,m.nombre, SUM(vd.cantidad) AS "Ventas Totales",m.precio, (SUM(vd.cantidad)*m.precio) AS "Total Generado"
FROM ventas_detalladas vd JOIN materiales m
ON vd.material_id=m.material_id
GROUP BY vd.material_id
ORDER BY (SUM(vd.cantidad)*m.precio) DESC);

CREATE VIEW Mayor_Egreso_Material
AS
(SELECT cd.material_id,m.nombre, SUM(cd.cantidad) AS "Compras Totales",m.precio, (SUM(cd.cantidad)*m.precio) AS "Total Gastado"
FROM compras_detalladas cd JOIN materiales m
ON cd.material_id=m.material_id
GROUP BY cd.material_id
ORDER BY (SUM(cd.cantidad)*m.precio) DESC);

