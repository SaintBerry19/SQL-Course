SELECT * FROM user;
# Create user+dominio
CREATE USER prueba@robertomora; 
CREATE USER permisos@robertomora; 

#Se observan los permisos actuales
SELECT * FROM mysql.user WHERE user LIKE 'prueba';
SELECT * FROM mysql.user WHERE user LIKE 'permisos';

#Se brinda permiso de lectura a prueba y de lectura, insercion y modificacion a permisos.
GRANT SELECT ON *.* TO prueba@robertomora;
GRANT SELECT, UPDATE,INSERT ON *.* TO permisos@robertomora;

