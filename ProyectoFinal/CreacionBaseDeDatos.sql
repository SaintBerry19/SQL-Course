CREATE SCHEMA IF NOT EXISTS ecommerce_sql_course ;
USE ecommerce_sql_course;

CREATE TABLE IF NOT EXISTS EMPRESAS(
    empresa_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    correo varchar(255) NOT NULL,
    telefono varchar(255) NOT NULL,
    PRIMARY KEY (empresa_id)
);

CREATE TABLE IF NOT EXISTS CLIENTES(
    cliente_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    apellido varchar(255) NOT NULL,
    edad int,
    empresa_id int,
    identificacion_nacional varchar(255) NOT NULL UNIQUE,
    PRIMARY KEY (cliente_id),
    FOREIGN KEY (empresa_id) REFERENCES EMPRESAS(empresa_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS  AREAS(
    area_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    PRIMARY KEY (area_id)
);

CREATE TABLE  IF NOT EXISTS EMPLEADOS(
    empleado_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    apellido varchar(255) NOT NULL,
    edad int,
    genero varchar(255),
    identificacion_nacional varchar(255) NOT NULL UNIQUE,
    area_id int NOT NULL,
    PRIMARY KEY (empleado_id),
    FOREIGN KEY (area_id) REFERENCES AREAS(area_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS PROVEEDORES(
    proveedor_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    correo varchar(255) NOT NULL,
    telefono varchar(255) NOT NULL,
    PRIMARY KEY (proveedor_id)
);

CREATE TABLE IF NOT EXISTS TRABAJADOR_PROVEEDORES(
    trabajador_proveedor_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    apellido varchar(255) NOT NULL,
    edad int,
    identificacion_nacional varchar(255) NOT NULL UNIQUE,
    proveedor_id int NOT NULL,
    PRIMARY KEY (trabajador_proveedor_id),
    FOREIGN KEY (proveedor_id) REFERENCES PROVEEDORES(proveedor_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS MATERIALES(
    material_id int NOT NULL AUTO_INCREMENT,	
    proveedor_id int NOT NULL,
    nombre varchar(255) NOT NULL,
    precio int,
    inventario int,
    PRIMARY KEY (material_id),
	FOREIGN KEY (proveedor_id) REFERENCES PROVEEDORES(proveedor_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS COMPRAS(
	compra_id int NOT NULL AUTO_INCREMENT,
    trabajador_proveedor_id int,
    empleado_id int,
    fecha date,
	PRIMARY KEY (compra_id),
	FOREIGN KEY (trabajador_proveedor_id) REFERENCES TRABAJADOR_PROVEEDORES(trabajador_proveedor_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
    FOREIGN KEY (empleado_id) REFERENCES EMPLEADOS(empleado_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS COMPRAS_DETALLADAS(
	compra_detallada_id int NOT NULL AUTO_INCREMENT,
    compra_id int NOT NULL,
    material_id int NOT NULL,
    cantidad int,
	PRIMARY KEY (compra_detallada_id),
	FOREIGN KEY (compra_id) REFERENCES COMPRAS(compra_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
    FOREIGN KEY (material_id) REFERENCES MATERIALES(material_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS FACTURAS_COMPRAS(
	factura_id int NOT NULL AUTO_INCREMENT,
    numero_factura int UNIQUE,
    compra_id int,
	PRIMARY KEY (factura_id),
    FOREIGN KEY (compra_id) REFERENCES COMPRAS(compra_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS VENTAS(
	venta_id int NOT NULL AUTO_INCREMENT,
    cliente_id int,
    empleado_id int,
    fecha date,
	PRIMARY KEY (venta_id),
	FOREIGN KEY (cliente_id) REFERENCES CLIENTES(cliente_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
    FOREIGN KEY (empleado_id) REFERENCES EMPLEADOS(empleado_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS VENTAS_DETALLADAS(
	venta_detallada_id int NOT NULL AUTO_INCREMENT,
    venta_id int NOT NULL,
    material_id int NOT NULL,
    cantidad int,
	PRIMARY KEY (venta_detallada_id),
	FOREIGN KEY (venta_id) REFERENCES VENTAS(venta_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
    FOREIGN KEY (material_id) REFERENCES MATERIALES(material_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS FACTURAS_VENTAS(
	factura_id int NOT NULL AUTO_INCREMENT,
    numero_factura int UNIQUE,
    venta_id int,
	PRIMARY KEY (factura_id),
    FOREIGN KEY (venta_id) REFERENCES VENTAS(venta_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS NUEVAS_VENTAS(
	venta_id int NOT NULL AUTO_INCREMENT,
    cliente_id int,
    empleado_id int,
    fecha date,
	PRIMARY KEY (venta_id)
);

CREATE TABLE REGISTRO_VENTAS (
	id_log INT PRIMARY KEY auto_increment,
    entity varchar(100),
    entity_id int,
    insert_dt datetime,
    created_by varchar(100),
    last_update_dt datetime,
    last_updated_by varchar(100)
);


CREATE TABLE IF NOT EXISTS NUEVAS_COMPRAS(
	compra_id int NOT NULL AUTO_INCREMENT,
    trabajador_proveedor_id int,
    empleado_id int,
    fecha date,
	PRIMARY KEY (compra_id)
);

CREATE TABLE REGISTRO_COMPRAS (
	id_log INT PRIMARY KEY auto_increment,
    entity varchar(100),
    entity_id int,
    insert_dt datetime,
    created_by varchar(100),
    last_update_dt datetime,
    last_updated_by varchar(100)
);