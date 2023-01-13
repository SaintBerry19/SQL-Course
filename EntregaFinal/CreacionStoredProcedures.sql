# Ver prodcutos de la tabla materiales

DELIMITER $$
CREATE PROCEDURE `sp_get_products`()
BEGIN
	SELECT * FROM materiales;
END
$$

CALL sp_get_products();

# Ver prodcutos de la tabla materiales, dando los parametros:
#1. Parametro para ordenar(columna de la tabla)
#2. Tipo de orden (ASC o DESC)

DELIMITER $$
CREATE PROCEDURE `sp_get_products_order`(IN field CHAR(20),IN input CHAR(20))
BEGIN
	IF field <> '' THEN
		SET @material_order = concat('ORDER BY ', field,' ',input);
	ELSE
		SET @material_order = '';
	END IF;
    
    SET @clausula = concat('SELECT * FROM materiales ', @material_order);
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

CALL sp_get_products_order('nombre','ASC');


# Insertar productos de la tabla materiales
# Escribir, nombre del producto, id del proveedor (numero del 1 al 200), precio y stock.

DELIMITER $$
CREATE PROCEDURE `sp_insert_product`(IN nombre CHAR(20), IN proveedor_id INT,IN precio INT,IN stock INT,OUT output VARCHAR(50))
BEGIN
	IF  nombre <> '' AND proveedor_id BETWEEN 1 AND 200 THEN
		INSERT INTO materiales (proveedor_id,nombre,precio,stock) VALUES (proveedor_id,(nombre),precio,stock);
        SET output = 'Inserción exitosa';
	ELSE
		SET output = 'ERROR: no se pudo crear el producto indicado';
	END IF;
    
    SET @clausula = 'SELECT * FROM materiales ORDER BY material_id DESC ';
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

CALL sp_insert_product('Garmin forerunner',201,1,1, @result);
SELECT @result as result_insert_product

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `sp_insert_ventas_detalladas`(IN venta_id INT,IN material_id INT,IN cantidad INT,OUT output VARCHAR(50))
BEGIN
	IF material_id BETWEEN 1 AND (SELECT COUNT(1) FROM materiales) AND venta_id BETWEEN 1 AND (SELECT COUNT(1) FROM ventas) THEN
		INSERT INTO venta_detallada (venta_id,material_id,cantidad) VALUES (venta_id,material_id,cantidad);
		SET output = 'Inserción exitosa';
	ELSE
		SET output = 'Problema al generar venta';
	END IF;
    SET @clausula = ('SELECT * FROM venta_detallada ');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `sp_insert_ventas`(IN cliente_id INT,IN empleado_id INT,OUT output VARCHAR(50))
BEGIN
	IF cliente_id BETWEEN 1 AND (SELECT COUNT(1) FROM clientes) AND empleado_id BETWEEN 1 AND (SELECT COUNT(1) FROM empleados) THEN
		INSERT INTO ventas (cliente_id,empleado_id,fecha) VALUES (cliente_id,empleado_id,CURRENT_DATE());
        SET output = 'Inserción exitosa';
	ELSE
		SET output = 'Problema al generar venta, cliente_id o empleado_id erroneo';
	END IF;
    
    SET @clausula = ('SELECT * FROM ventas ');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$


DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `sp_insert_compras_detalladas`(IN compra_id INT,IN material_id INT,IN cantidad INT,OUT output VARCHAR(50))
BEGIN
	IF material_id BETWEEN 1 AND (SELECT COUNT(1) FROM materiales) AND compra_id BETWEEN 1 AND (SELECT COUNT(1) FROM compras) THEN
		INSERT INTO compra_detallada (compra_id,material_id,cantidad) VALUES (compra_id,material_id,cantidad);
		SET output = 'Inserción exitosa';
	ELSE
		SET output = 'Problema al generar compra';
	END IF;
    SET @clausula = ('SELECT * FROM compra_detallada ');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `sp_insert_compras`(IN trabajador_proveedor_id INT,IN empleado_id INT,OUT output VARCHAR(150))
BEGIN
	IF trabajador_proveedor_id BETWEEN 1 AND (SELECT COUNT(1) FROM trabajador_proveedor) AND empleado_id BETWEEN 1 AND (SELECT COUNT(1) FROM empleados) THEN
		INSERT INTO compras (trabajador_proveedor_id,empleado_id,fecha) VALUES (trabajador_proveedor_id,empleado_id,CURRENT_DATE());
        SET output = 'Inserción exitosa';
	ELSE
		SET output = 'Problema al generar compra, trabajador_proveedor_id o empleado_id erroneo';
	END IF;
    
    SET @clausula = ('SELECT * FROM compras ');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$


DELIMITER ;

