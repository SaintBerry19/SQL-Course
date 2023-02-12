SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;

#Tabla compras ejercicio 1
SELECT * FROM compras;
# Start transaction
START TRANSACTION;
DELETE FROM compras
WHERE compra_id = 201;
# Rollback transaction
ROLLBACK;
SELECT * FROM compras;
# commit transaction
COMMIT;
SELECT * FROM compras;

#Tabla ventas ejercicio 2
SELECT * FROM ventas;

# Savepoint
START TRANSACTION;
INSERT INTO VENTAS (cliente_id, empleado_id,fecha) VALUES (2,3,CURRENT_DATE());
INSERT INTO VENTAS (cliente_id, empleado_id,fecha) VALUES (3,4,CURRENT_DATE());
INSERT INTO VENTAS (cliente_id, empleado_id,fecha) VALUES (4,5,CURRENT_DATE());
INSERT INTO VENTAS (cliente_id, empleado_id,fecha) VALUES (5,6,CURRENT_DATE());
savepoint lote_1;
INSERT INTO VENTAS (cliente_id, empleado_id,fecha) VALUES (6,7,CURRENT_DATE());
INSERT INTO VENTAS (cliente_id, empleado_id,fecha) VALUES (7,8,CURRENT_DATE());
INSERT INTO VENTAS (cliente_id, empleado_id,fecha) VALUES (8,9,CURRENT_DATE());
INSERT INTO VENTAS (cliente_id, empleado_id,fecha) VALUES (9,10,CURRENT_DATE());
savepoint lote_2;

SELECT * FROM ventas;
ROLLBACK TO lote_1;
SELECT * FROM ventas;
RELEASE SAVEPOINT lote_1;
SELECT * FROM ventas;
#Regresar sin inserciones
ROLLBACK;
#Confirmar inserciones
COMMIT;
