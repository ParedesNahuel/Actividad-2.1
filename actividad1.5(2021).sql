create database Bluesprint
go

use Bluesprint
go

create table tareas(
id bigint not null primary key identity (0,1),
idmodulo bigint foreign key references modulos(idmodulo),
tipo varchar(2) not null,
fechafin date,
fechacomienzo date,
estado bit not null,
)
go

ALTER TABLE colaboladores
add idtarea bigint not null foreign key references tareas(id)
go

create table colaboraciones(
idtarea  bigint not null foreign key references tareas(id),
idcolaboladores int not null foreign key references colabolares(idcolabolador),
horasDeTarea float not null,
estado bit not null
)