#Add on delete to FK

ALTER TABLE CLIENTES
DROP FOREIGN KEY clientes_ibfk_1;
ALTER TABLE CLIENTES
ADD CONSTRAINT clientes_ibfk_1
	FOREIGN KEY (empresa_id) REFERENCES EMPRESA(empresa_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE compra_detallada
DROP FOREIGN KEY compra_detallada_ibfk_1;
ALTER TABLE compra_detallada
DROP FOREIGN KEY compra_detallada_ibfk_2;
ALTER TABLE compra_detallada
ADD CONSTRAINT compra_detallada_ibfk_1
	FOREIGN KEY (compra_id) REFERENCES COMPRAS(compra_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE compra_detallada
ADD CONSTRAINT compra_detallada_ibfk_2
    FOREIGN KEY (material_id) REFERENCES MATERIALES(material_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE compras
DROP FOREIGN KEY compras_ibfk_1;

ALTER TABLE compras
DROP FOREIGN KEY compras_ibfk_2;

ALTER TABLE compras
ADD CONSTRAINT compras_ibfk_1
	FOREIGN KEY (trabajador_proveedor_id) REFERENCES TRABAJADOR_PROVEEDOR(trabajador_proveedor_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE compras
ADD CONSTRAINT compras_ibfk_2
    FOREIGN KEY (empleado_id) REFERENCES EMPLEADOS(empleado_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
  
  
ALTER TABLE empleados
DROP FOREIGN KEY empleados_ibfk_1;

ALTER TABLE empleados
ADD CONSTRAINT empleados_ibfk_1
    FOREIGN KEY (area_id) REFERENCES AREAS(area_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
ALTER TABLE facturas_compras
DROP FOREIGN KEY facturas_compras_ibfk_1;

ALTER TABLE facturas_compras
ADD CONSTRAINT facturas_compras_ibfk_1
    FOREIGN KEY (compra_id) REFERENCES COMPRAS(compra_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
ALTER TABLE facturas_ventas
DROP FOREIGN KEY facturas_ventas_ibfk_1;

ALTER TABLE facturas_ventas
ADD CONSTRAINT facturas_ventas_ibfk_1
    FOREIGN KEY (venta_id) REFERENCES VENTAS(venta_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE materiales
DROP FOREIGN KEY materiales_ibfk_1;

ALTER TABLE materiales
ADD CONSTRAINT materiales_ibfk_1
	FOREIGN KEY (proveedor_id) REFERENCES PROVEEDOR(proveedor_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE trabajador_proveedor
DROP FOREIGN KEY trabajador_proveedor_ibfk_1;

ALTER TABLE trabajador_proveedor
ADD CONSTRAINT trabajador_proveedor_ibfk_1
    FOREIGN KEY (proveedor_id) REFERENCES PROVEEDOR(proveedor_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE venta_detallada
DROP FOREIGN KEY venta_detallada_ibfk_1;
ALTER TABLE venta_detallada
DROP FOREIGN KEY venta_detallada_ibfk_2;
ALTER TABLE venta_detallada
ADD CONSTRAINT venta_detallada_ibfk_1
	FOREIGN KEY (venta_id) REFERENCES VENTAS(venta_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE venta_detallada
ADD CONSTRAINT venta_detallada_ibfk_2
    FOREIGN KEY (material_id) REFERENCES MATERIALES(material_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE ventas
DROP FOREIGN KEY ventas_ibfk_1;

ALTER TABLE ventas
DROP FOREIGN KEY ventas_ibfk_2;

ALTER TABLE ventas
ADD CONSTRAINT ventas_ibfk_1
	FOREIGN KEY (cliente_id) REFERENCES CLIENTES(cliente_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE ventas
ADD CONSTRAINT ventas_ibfk_2
    FOREIGN KEY (empleado_id) REFERENCES EMPLEADOS(empleado_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
