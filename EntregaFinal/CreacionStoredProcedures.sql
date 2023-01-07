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
