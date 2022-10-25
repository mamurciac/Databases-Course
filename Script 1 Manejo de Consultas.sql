#Se muestra una lista de las bases de datos disponibles
show databases;

#Se selecciona una base de datos para trabajar sobre ella (En MySQL se conocen como schemas)
use sakila;

#Se muestran las tablas de la base de datos seleccionada (En este caso, de la base de datos sakila, la cual tiene informacion sobre peliculas)
show tables;

#Se muestra la estructura y descripcion de los campos de una tabla dada (En este caso, de la tabla actor, la cual esta almacenada en la base de datos sakila)
describe actor;