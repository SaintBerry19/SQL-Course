
CREATE TRIGGER `tr_add_new_ventas`
AFTER INSERT ON `ventas`
FOR EACH ROW
INSERT INTO `new_ventas`(venta_id, cliente_id, empleado_id,fecha) VALUES (NEW.venta_id, NEW.cliente_id, NEW.empleado_id,NEW.fecha);

CREATE TRIGGER `tr_add_new_compras`
AFTER INSERT ON `compras`
FOR EACH ROW
INSERT INTO `new_compras`(compra_id, trabajador_proveedor_id, empleado_id,fecha) VALUES (NEW.compra_id, NEW.trabajador_proveedor_id, NEW.empleado_id,NEW.fecha);


CREATE TRIGGER `tr_insert_compra_aud`
AFTER INSERT ON `compras`
FOR EACH ROW
INSERT INTO `audits_compras`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by,anio,mes,dia) 
VALUES ('compras', NEW.compra_id, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER(),YEAR(current_date()),MONTH(current_date()),DAY(current_date()));

CREATE TRIGGER `tr_update_compra_aud`
BEFORE UPDATE ON `compras`
FOR EACH ROW
UPDATE `audits_compras` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER(), anio=YEAR(current_date()),mes=MONTH(current_date()),dia=DAY(current_date())
WHERE entity_id = OLD.compra_id;

CREATE TRIGGER `tr_insert_venta_aud`
AFTER INSERT ON `ventas`
FOR EACH ROW
INSERT INTO `audits_ventas`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by,anio,mes,dia) 
VALUES ('ventas', NEW.venta_id, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER(),YEAR(current_date()),MONTH(current_date()),DAY(current_date()));

CREATE TRIGGER `tr_update_venta_aud`
BEFORE UPDATE ON `ventas`
FOR EACH ROW
UPDATE `audits_ventas` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER(), anio=YEAR(current_date()),mes=MONTH(current_date()),dia=DAY(current_date())
WHERE entity_id = OLD.venta_id;

DROP TRIGGER tr_update_venta_aud;
DROP TRIGGER tr_insert_venta_aud;
DROP TRIGGER tr_update_compra_aud;
DROP TRIGGER tr_insert_compra_aud;
