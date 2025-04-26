# infotienda
Práctica de base de datos con MySQL y phpMyAdmin

Este proyecto es una práctica simple de base de datos que hice usando MySQL y phpMyAdmin desde WampServer. Se trata de una pequeña tienda ficticia con productos y fabricantes.

# Tablas:
productos: tiene un código, nombre, precio y un ID que lo relaciona con un fabricante.
fabricantes: tiene un código, nombre y dirección. Un fabricante puede tener varios productos.

# Qué hice:
- Creé la base de datos infotienda
- Armé las tablas con claves foráneas
- Agregué algunos registros de prueba
- Hice algunas consultas SQL para practicar

# Algunas consultas que probé en sql:
Lista de productos ordenados por precio (de menor a mayor)
SELECT * FROM productos ORDER BY precio ASC;

Lista de fabricantes ordenados por nombre
SELECT * FROM fabricantes ORDER BY nombre ASC;

Productos que valen más de 10.000
SELECT nombre, precio FROM productos WHERE precio > 10000;

Producto más barato
SELECT nombre, precio FROM productos ORDER BY precio ASC LIMIT 1;




