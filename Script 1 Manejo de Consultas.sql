#Se muestra una lista de las bases de datos disponibles
show databases;

#Se selecciona una base de datos para trabajar sobre ella (En MySQL se conocen como schemas)
use sakila;

#Se muestran las tablas de la base de datos seleccionada (En este caso, de la base de datos sakila, la cual tiene informacion sobre peliculas)
show tables;

#Se muestra la estructura y descripcion de los campos de una tabla dada (En este caso, de la tabla actor, la cual esta almacenada en la base de datos sakila)
describe actor;

#Se realiza una consulta en la cual se muestra toda la informacion de tabla actor
select * from actor;

#Se realiza una consulta en la cual se muestra toda la informacion de tabla actor pero proyectando solo la columna del primer nombre
select first_name from actor;

#Se crea una nueva base de datos (Esto se hace si no existe la base de datos db1)
create schema if not exists db1;

#Se selecciona una base de datos para trabajar sobre ella (En MySQL se conocen como schemas)
use db1;

#Se elimina una base de datos (Esto se hace si existe la base de datos db1)
drop schema if exists db1;