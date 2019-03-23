CREATE TABLE candidato
(
Id_candidato  int identity(1,1) primary key,
nombre varchar(60) NOT NULL,
apellidoP varchar(60) NOT NULL,
apellidoM varchar(60) NOT NULL,
Curp varchar(13) NOT NULL,
correo_electronico varchar(60),
fecha_nac date,
num_telefono int not null
) 

create table telefono
(
id_telefono int not null primary key,
num_telefono int not null
)

create table direccion
(
id_direccion int not null primary key,
calle varchar (60) not null,
ciudad varchar (60) not null,
pais varchar (40) not null
)

create table cv
(
id_cv int not null primary key,
id_candidato int not null
)

create table estudios
(
id_estudios int not null primary key,
nivel_es varchar(30) not null
)

create table tabajos_anteriores
(
id_tabajos_anteriores int not null primary key,
trabajo_anterior varchar (30) not null
)

create table capacitacion
(
id_capacitacion int not null primary key,
id_empleado_capacitado int not null,
id_empleado_capacitador int not null,
horas_capacitacion int not null
)

create table empleado_capacitado
(
id_empleado_capacitado int not null primary key,
id_empleado int not null
)

create table empleado
(
id_empleado int not null primary key,
id_candidato int not null
)

create table puesto
(
id_puesto int not null primary key,
id_candidato int not null,
sueldo int not null
)

create table contrato
(
id_contrato int not null primary key,
id_puesto int not null,
id_empleado int not null,
id_estatus int not null
)

create table estatus
(
id_estatus int not null primary key,
estatus varchar (15) not null
)

create table empleado_capacitador
(
id_empleado_capacitador int not null primary key,
id_empleado int not null
)

create table horario_entr
(
id_horario_entr int not null primary key,
dia int not null,
mes int not null,
anio int not null,
hora int not null
)

create table reclutador
(
id_reclutador int not null primary key,
id_empleado int not null
)

create table entrevista
(
id_entrevista int not null primary key,
id_horario_entr int not null,
id_candidato int not null,
id_estatus int not null,
id_reclutador int not null
)

alter table entrevista
add
constraint fk_entrevista_id_estatusr foreign key (id_estatus) references estatus(id_estatus)

alter table entrevista
add
id_estatus int not null;

insert into telefono(id_telefono, num_telefono) values(2, 6482100)
insert into telefono(id_telefono, num_telefono) values(3, 8175491)
insert into telefono(id_telefono, num_telefono) values(4, 8164519)
insert into telefono(id_telefono, num_telefono) values(5, 7851246)
insert into telefono(id_telefono, num_telefono) values(6, 1857158)
insert into telefono(id_telefono, num_telefono) values(7, 9648157)
insert into telefono(id_telefono, num_telefono) values(8, 8647595)
insert into telefono(id_telefono, num_telefono) values(9, 7281945)
insert into telefono(id_telefono, num_telefono) values(10, 3468087)
insert into telefono(id_telefono, num_telefono) values(11, 6891547)
insert into telefono(id_telefono, num_telefono) values(12, 8145281)
insert into telefono(id_telefono, num_telefono) values(13, 5418487)
insert into telefono(id_telefono, num_telefono) values(14, 1554544)
insert into telefono(id_telefono, num_telefono) values(15, 5556666)
insert into telefono(id_telefono, num_telefono) values(16, 5484141)
insert into telefono(id_telefono, num_telefono) values(17, 7178155)
insert into telefono(id_telefono, num_telefono) values(18, 9516654)
insert into telefono(id_telefono, num_telefono) values(19, 8455458)
insert into telefono(id_telefono, num_telefono) values(20, 5445441)

insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(2, 10, 09, 2007, 11)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(3, 23, 01, 2008, 10)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(4, 30, 10, 2008, 09)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(13, 02, 02, 2012, 08)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(14, 03, 05, 2012, 12)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(15, 11, 05, 2012, 12)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(16, 28, 06, 2012, 12)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(17, 22, 12, 2012, 12)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(19, 09, 02, 2013, 09)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(20, 20, 09, 2013, 12)
insert into horario_entr(id_horario_entr, dia, mes, anio, hora) values(18, 25, 10, 2013, 12)


insert into direccion values(3, 'villena', 'monterrey', 'mexico')
insert into direccion values(4, 'fuentes de juarez', 'monterrey', 'mexico')
insert into direccion values(5, 'paseo de la reforma', 'CDMX', 'mexico')
insert into direccion values(6, 'tacuba', 'CDMX', 'mexico')
insert into direccion values(7, 'mazatlan', 'CDMX', 'mexico')
insert into direccion values(8, 'Roma', 'CDMX', 'mexico')
insert into direccion values(9, 'Amsterdam', 'CDMX', 'mexico')
insert into direccion values(10, 'Barrio Regina', 'CDMX', 'mexico')
insert into direccion values(11, 'Mariano otero', 'guadalajara', 'mexico')
insert into direccion values(12, 'adolfo lopez mateos', 'guadalajara', 'mexico')
insert into direccion values(13, 'Revolucion', 'guadalajara', 'mexico')
insert into direccion values(14, 'Patria', 'guadalajara', 'mexico')
insert into direccion values(15, 'Enrique Diaz de Leon', 'guadalajara', 'mexico')
insert into direccion values(16, '1 avenida', 'monterrey', 'mexico')
insert into direccion values(17, 'allende', 'guadalajara', 'mexico')
insert into direccion values(18, 'abraham lincoln', 'monterrey', 'mexico')
insert into direccion values(19, 'bustamante', 'monterrey', 'mexico')
insert into direccion values(20, 'paseo de los leones', 'monterrey', 'mexico')
insert into direccion values(21, 'avendida madero', 'monterrey', 'mexico')
insert into direccion values(22, 'insurgentes', 'monterrey', 'mexico')
insert into direccion values(23, 'ayutla', 'monterrey', 'mexico')

insert into estatus values(1, 'aceptado')
insert into estatus values(2, 'rechazado')
insert into estatus values(3, 'aceptado')
insert into estatus values(4, 'rechazado')
insert into estatus values(5, 'aceptado')
insert into estatus values(6, 'rechazado')
insert into estatus values(7, 'aceptado')
insert into estatus values(8, 'rechazado')
insert into estatus values(9, 'aceptado')
insert into estatus values(10, 'rechazado')
insert into estatus values(11, 'aceptado')
insert into estatus values(12, 'rechazado')
insert into estatus values(13, 'aceptado')
insert into estatus values(14, 'rechazado')
insert into estatus values(15, 'aceptado')
insert into estatus values(16, 'rechazado')
insert into estatus values(17, 'aceptado')
insert into estatus values(18, 'rechazado')
insert into estatus values(19, 'aceptado')
insert into estatus values(20, 'rechazado')


insert into tabajos_anteriores values(1, 'medico')
insert into tabajos_anteriores values(2, 'ingeniero en sistemas')
insert into tabajos_anteriores values(3, 'bombero')
insert into tabajos_anteriores values(4, 'policia')
insert into tabajos_anteriores values(5, 'taxista')
insert into tabajos_anteriores values(6, 'repartidor')
insert into tabajos_anteriores values(7, 'secretaria')
insert into tabajos_anteriores values(8, 'contador')
insert into tabajos_anteriores values(9, 'estilista')
insert into tabajos_anteriores values(10, 'plomero')
insert into tabajos_anteriores values(11, 'tesorera')
insert into tabajos_anteriores values(12, 'consultor')
insert into tabajos_anteriores values(13, 'diseñador grafico')
insert into tabajos_anteriores values(14, 'desarrollador web')
insert into tabajos_anteriores values(15, 'psicologo')
insert into tabajos_anteriores values(16, 'desempleado')
insert into tabajos_anteriores values(17, 'cobrador')
insert into tabajos_anteriores values(18, 'encargado de almacen')
insert into tabajos_anteriores values(19, 'consejero laboral')
insert into tabajos_anteriores values(20, 'marketing')

insert into estudios values(1, 'educacion basica')
insert into estudios values(2, 'educacion media superior')
insert into estudios values(3, 'educacion basica')
insert into estudios values(4, 'educacion basica')
insert into estudios values(5, 'educacion superior')
insert into estudios values(6, 'educacion basica')
insert into estudios values(7, 'educacion media superior')
insert into estudios values(8, 'educacion basica')
insert into estudios values(9, 'educacion basica')
insert into estudios values(10, 'educacion superior')
insert into estudios values(11, 'educacion basica')
insert into estudios values(12, 'educacion media superior')
insert into estudios values(13, 'educacion basica')
insert into estudios values(14, 'educacion basica')
insert into estudios values(15, 'educacion superior')
insert into estudios values(16, 'educacion basica')
insert into estudios values(17, 'educacion media superior')
insert into estudios values(18, 'educacion basica')
insert into estudios values(19, 'educacion basica')
insert into estudios values(20, 'educacion superior')

update estudios set 
nivel_es= 'sin estudios'
where id_estudios = 16

update estudios set 
nivel_es= 'educacion basica'
where id_estudios = 1

update estudios set 
nivel_es= 'sin estudios'
where id_estudios = 1

update estudios set 
nivel_es= 'sin estudios'
where id_estudios = 6

update telefono set 
num_telefono= '0'
where id_telefono = 1

update telefono set 
num_telefono= '0'
where id_telefono = 5

update telefono set 
num_telefono= '0'
where id_telefono = 10

update direccion set 
ciudad= 'monterrey'
where id_direccion = 17

update direccion set 
ciudad= 'tijuana'
where id_direccion = 3

update direccion set 
ciudad= 'veracruz'
where id_direccion = 20

delete from direccion
where id_direccion = 21

delete from direccion
where id_direccion = 22

delete from direccion
where id_direccion = 23

delete from horario_entr
where id_horario_entr = 2

delete from horario_entr
where id_horario_entr = 4

delete from horario_entr
where id_horario_entr = 8

delete from direccion
where calle = 'patria'

delete from direccion
where calle = '1 avenida'

delete from direccion
where calle = 'allende'

delete from direccion
where calle = 'ayutla'

select * from candidato
select * from capacitacion
select * from contrato
select * from cv
select * from direccion
select * from empleado
select * from empleado_capacitado
select * from empleado_capacitador
select * from entrevista
select * from estatus
select * from estudios
select * from horario_entr
select * from puesto
select * from reclutador
select * from tabajos_anteriores
select * from telefono
