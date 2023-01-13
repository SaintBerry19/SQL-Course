USE `ecommerce_sql_course`;
DROP function IF EXISTS `total_compras`;

DELIMITER $$
USE `ecommerce_sql_course`$$
CREATE FUNCTION `total_compras`(numero_compra INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE resultado integer;
SET resultado = (SELECT T.Total_de_compra
FROM (SELECT c.compra_id, SUM((m.precio*c.cantidad)) as 'Total_de_compra'
FROM compra_detallada c JOIN materiales m
ON c.material_id = m.material_id
GROUP BY compra_id
ORDER BY compra_id ASC) T
WHERE T.compra_id = numero_compra);
RETURN resultado;
END$$

DELIMITER ;

USE `ecommerce_sql_course`;
DROP function IF EXISTS `total_venta`;

DELIMITER $$
USE `ecommerce_sql_course`$$
CREATE FUNCTION `total_venta`(numero_venta INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE resultado integer;
SET resultado = (SELECT T.Total_de_venta 
FROM (SELECT v.venta_id, SUM((m.precio*v.cantidad)) as 'Total_de_venta'
FROM venta_detallada v JOIN materiales m
ON v.material_id = m.material_id
GROUP BY venta_id
ORDER BY venta_id ASC) T
WHERE T.venta_id = numero_venta);
RETURN resultado;
END$$

DELIMITER ;

DELIMITER $$
USE `ecommerce_sql_course`$$
CREATE FUNCTION `seleccionar_ventaid`(venta_id INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE resultado integer;
SET resultado = venta_id;
RETURN resultado;
END$$

DELIMITER ;
