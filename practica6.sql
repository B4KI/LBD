/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id_puesto]
      ,[id_candidato]
      ,[sueldo]
  FROM [Proyecto].[dbo].[puesto]

  insert into puesto (id_puesto, id_candidato, sueldo)
  values (4, 6, 4900.00)
  insert into puesto (id_puesto, id_candidato, sueldo)
  values (5, 2, 2900.00)
  insert into puesto (id_puesto, id_candidato, sueldo)
  values (7, 3, 1900.00)
  insert into puesto (id_puesto, id_candidato, sueldo)
  values (8, 4, 900.00)
  insert into puesto (id_puesto, id_candidato, sueldo)
  values (9, 5, 2900.00)
    insert into puesto (id_puesto, id_candidato, sueldo)
  values (10, 7, 1900.00)
  insert into puesto (id_puesto, id_candidato, sueldo)
  values (11, 8, 4900.00)
  insert into puesto (id_puesto, id_candidato, sueldo)
  values (12, 9, 2900.00)
  insert into puesto (id_puesto, id_candidato, sueldo)
  values (13, 10, 6500.00)
  insert into puesto (id_puesto, id_candidato, sueldo)
  values (14, 11, 2900.00)
  

  select id_puesto, sum (sueldo) sueldo
  from puesto
  group by id_puesto
  having sum(sueldo) > 1900

  select id_puesto, sum (sueldo) sueldo
  from puesto
  group by id_puesto
  having sum(sueldo) < 1900

  select id_puesto, sum(sueldo) sueldo
  from puesto
  group by id_puesto
  having sum(sueldo) = 2900

  select Al.id_puesto, sum(Al.sueldo) "Sueldo"
  from puesto Al
  group by id_puesto

   select count (calle) "calles"
 from direccion

 select A1.ciudad ciudad, sum(A2.sueldo) sueldo
 from direccion A1, puesto A2
 group by A1.ciudad

 select id_puesto, sum(sueldo) sueldo
 from puesto
 group by id_puesto

 select *
 from puesto
 order by sueldo desc

 select stdev(sueldo) desviacion
 from puesto

 select min(sueldo) sueldo_min
 from puesto

 select max (sueldo) sueeldo_max
 from puesto

 select sum(sueldo)sueldo_total from puesto

 nombre de columnas

 select sueldo as "pago" from puesto order by id_puesto

 exec sp_rename 'puesto.sueldo', 'pago', 'column'

 select calle as "Colonia" from direccion order by ciudad

 select calle + ', ' + ciudad + ', ' + pais direccion from direccion
 
 exec sp_rename 'direccion.calle', 'colonia', 'column' 

 select ciudad as "estado" from direccion group by ciudad
 
 exec sp_rename 'horario_entr.anio', 'año', 'column'

 select avg(año) promedio
 from horario_entr

 select count(colonia) num_colonias
 from direccion

 select count (id_horario_entr) cantidad_horarios
 from horario_entr

 select *
 into puesto_repuesto
 from puesto

 alter table puesto
 drop constraint PK_puesto

 drop table puesto

 create table puesto(
 id_puesto int not null primary key,
 id_candidato int not null,
 pago int not null
 )

 insert into puesto
 select * from puesto_repuesto