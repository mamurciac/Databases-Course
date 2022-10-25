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

#Se realiza una consulta en la cual se muestra toda la informacion de tabla actor pero proyectando solo las columna del id, primer y segundo nombre del actor
select actor_id, first_name, last_name from actor;

#Se crea una nueva base de datos (Esto se hace si no existe la base de datos db1)
create schema if not exists db1;

#Se selecciona una base de datos para trabajar sobre ella (En MySQL se conocen como schemas)
use db1;

create table if not exists agenda(
	nombre text,
    apellido text,
    telefono integer,
    nacimiento integer,
    estatura float
);

#Se muestran las tablas de la base de datos seleccionada (En este caso, de la base de datos db1)
show tables;

show columns from agenda;

insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Juan', 'Ríos', 2309876, 1990, 1.70);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Ana', 'Suárez', 2456876, 1983, 1.60);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Luis', 'Contreras', 3456876, 1985, 1.60);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Ana', 'Castro', 2459576, 1984, 1.65);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('José', 'Pérez', 2498776, 1982, 1.69);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Andrés', 'López', 2456877, 1983, 1.80);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Andrea', 'Prieto', 2456879, 1983, 1.75);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Camilo', 'Jiménez', 2490876, 1991, 1.77);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Óscar', 'González', 2489876, 1980, 1.79);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Cristian', 'Hernández', 2456872, 1983, 1.80);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('María', 'Contreras', 2456871, 1982, 1.70);
insert into agenda(nombre, apellido, telefono, nacimiento, estatura) values ('Marta', 'Suárez', 2956870, 1987, 1.65);

delete from agenda where nacimiento < 1980;

delete from agenda where estatura <= 1.70;

drop table if exists agenda;

#Se elimina una base de datos (Esto se hace si existe la base de datos db1)
drop schema if exists db1;