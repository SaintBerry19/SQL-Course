CREATE SCHEMA ecommerce_sql_course;
USE ecommerce_sql_course;

CREATE TABLE EMPRESA(
    empresa_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    correo varchar(255) NOT NULL,
    telefono varchar(255) NOT NULL,
    PRIMARY KEY (empresa_id)
);

CREATE TABLE CLIENTES(
    cliente_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    apellido varchar(255) NOT NULL,
    edad int,
    empresa_id int,
    identificacion_nacional varchar(255) NOT NULL UNIQUE,
    PRIMARY KEY (cliente_id),
    FOREIGN KEY (empresa_id) REFERENCES EMPRESA(empresa_id)
);

CREATE TABLE AREAS(
    area_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    descripcion varchar(255) NOT NULL,
    PRIMARY KEY (area_id)
);

CREATE TABLE EMPLEADOS(
    empleado_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    apelliido varchar(255) NOT NULL,
    edad int,
    genero varchar(255),
    identificacion_nacional varchar(255) NOT NULL UNIQUE,
    area_id int NOT NULL,
    PRIMARY KEY (empleado_id),
    FOREIGN KEY (area_id) REFERENCES AREAS(area_id)
);

CREATE TABLE PROVEEDOR(
    proveedor_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    correo varchar(255) NOT NULL,
    telefono varchar(255) NOT NULL,
    PRIMARY KEY (proveedor_id)
);

CREATE TABLE TRABAJADOR_PROVEEDOR(
    trabajador_proveedor_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    apellido varchar(255) NOT NULL,
    edad int,
    identificacion_nacional varchar(255) NOT NULL UNIQUE,
    proveedor_id int NOT NULL,
    PRIMARY KEY (trabajador_proveedor_id),
    FOREIGN KEY (proveedor_id) REFERENCES PROVEEDOR(proveedor_id)
);

CREATE TABLE MATERIALES(
    material_id int NOT NULL AUTO_INCREMENT,	
    proveedor_id int NOT NULL,
    nombre varchar(255) NOT NULL,
    descripcion varchar(255) NOT NULL,
    precio int,
    stock int,
    PRIMARY KEY (material_id),
	FOREIGN KEY (proveedor_id) REFERENCES PROVEEDOR(proveedor_id)
);

CREATE TABLE COMPRAS(
	compra_id int NOT NULL AUTO_INCREMENT,
    trabajador_proveedor_id int,
    empleado_id int,
    fecha date,
	PRIMARY KEY (compra_id),
	FOREIGN KEY (trabajador_proveedor_id) REFERENCES TRABAJADOR_PROVEEDOR(trabajador_proveedor_id),
    FOREIGN KEY (empleado_id) REFERENCES EMPLEADOS(empleado_id)
);

CREATE TABLE COMPRA_DETALLADA(
	compra_detallada_id int NOT NULL AUTO_INCREMENT,
    compra_id int NOT NULL,
    material_id int NOT NULL,
    cantidad int,
	PRIMARY KEY (compra_detallada_id),
	FOREIGN KEY (compra_id) REFERENCES COMPRAS(compra_id),
    FOREIGN KEY (material_id) REFERENCES MATERIALES(material_id)
);

CREATE TABLE FACTURAS_COMPRAS(
	factura_id int NOT NULL AUTO_INCREMENT,
    numero_factura int UNIQUE,
    compra_id int,
	PRIMARY KEY (factura_id),
    FOREIGN KEY (compra_id) REFERENCES COMPRAS(compra_id)
);

CREATE TABLE VENTAS(
	venta_id int NOT NULL AUTO_INCREMENT,
    cliente_id int,
    empleado_id int,
    fecha date,
	PRIMARY KEY (venta_id),
	FOREIGN KEY (cliente_id) REFERENCES CLIENTES(cliente_id),
    FOREIGN KEY (empleado_id) REFERENCES EMPLEADOS(empleado_id)
);

CREATE TABLE VENTA_DETALLADA(
	venta_detallada_id int NOT NULL AUTO_INCREMENT,
    venta_id int NOT NULL,
    material_id int NOT NULL,
    cantidad int,
	PRIMARY KEY (venta_detallada_id),
	FOREIGN KEY (venta_id) REFERENCES VENTAS(venta_id),
    FOREIGN KEY (material_id) REFERENCES MATERIALES(material_id)
);

CREATE TABLE FACTURAS_VENTAS(
	factura_id int NOT NULL AUTO_INCREMENT,
    numero_factura int UNIQUE,
    venta_id int,
	PRIMARY KEY (factura_id),
    FOREIGN KEY (venta_id) REFERENCES VENTAS(venta_id)
);