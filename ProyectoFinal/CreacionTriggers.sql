
CREATE TRIGGER `tr_add_new_ventas`
AFTER INSERT ON `ventas`
FOR EACH ROW
INSERT INTO `nuevas_ventas`(venta_id, cliente_id, empleado_id,fecha) VALUES (NEW.venta_id, NEW.cliente_id, NEW.empleado_id,NEW.fecha);

CREATE TRIGGER `tr_add_new_compras`
AFTER INSERT ON `compras`
FOR EACH ROW
INSERT INTO `nuevas_compras`(compra_id, trabajador_proveedor_id, empleado_id,fecha) VALUES (NEW.compra_id, NEW.trabajador_proveedor_id, NEW.empleado_id,NEW.fecha);


CREATE TRIGGER `tr_insert_compra_aud`
AFTER INSERT ON `compras`
FOR EACH ROW
INSERT INTO `registro_compras`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('compras', NEW.compra_id, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());

CREATE TRIGGER `tr_update_compra_aud`
BEFORE UPDATE ON `compras`
FOR EACH ROW
UPDATE `registro_compras` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER()
WHERE entity_id = OLD.compra_id;

CREATE TRIGGER `tr_insert_venta_aud`
AFTER INSERT ON `ventas`
FOR EACH ROW
INSERT INTO `registro_ventas`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('ventas', NEW.venta_id, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());

CREATE TRIGGER `tr_update_venta_aud`
BEFORE UPDATE ON `ventas`
FOR EACH ROW
UPDATE `registro_ventas` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER()
WHERE entity_id = OLD.venta_id;

