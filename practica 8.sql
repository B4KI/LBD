select id_puesto, pago from puesto
where pago >(select avg(pago) from puesto)

declare @ConsultaSQL VARCHAR(500)
declare @Tabla VARCHAR(25)

set @Tabla = 'puesto'
set @ConsultaSQL = 'SELECT * FROM ' + @Tabla

exec(@ConsultaSQL)

create trigger tr_seguridad
on database for drop_table, alter_table
as
begin
raiserror ('No esta permitido borrar ni modificar tablas !' , 16, 1)
rollback transaction
end

create procedure id_puesto
as
select * from puesto
go
exec id_puesto

create procedure sp_ciudad @ciudad varchar(60),@id_direccion int
as
select * from direccion where ciudad = @ciudad and id_direccion = @id_direccion
go
exec sp_ciudad 'guadalajara' , 2

create procedure sp_colonias
as
select ciudad, colonia from direccion
go
exec sp_colonias 

create procedure sp_consulta @id_puesto int, @id_candidato int
as begin
select * from puesto where id_candidato = @id_puesto and id_candidato = @id_candidato;
print 'consulta';
end

exec sp_consulta 1, 1

create procedure sp_consuta_direccion @id_direcion int
as begin
select * from direccion where id_direccion = @id_direcion
print  'consulta completa'
end

exec sp_consuta_direccion 10

create procedure sp_sueldo @id_candidato int
as begin
select pago, id_candidato from puesto where id_candidato = @id_candidato
print 'consulta completa'
end

exec sp_sueldo 2

create procedure sp_contacto @id_telefono int
as begin
select num_telefono from telefono where id_telefono = @id_telefono
print 'telefono de empleado'
end

exec sp_contacto 8

create procedure sp_empleado @id_empleado int
as begin 
select * from empleado where id_empleado = @id_empleado
print 'informacion de empleado'
end

exec sp_empleado 1 

create procedure sp_candidato @id_candidato int
as begin
select * from candidato where Id_candidato = @id_candidato
print 'informacion de candidato'
end

exec sp_candidato 1

create procedure sp_info @nombre varchar(60)
as begin
select * from candidato where nombre = @nombre
print 'informacion de candidato'
end

exec sp_info "juanito"
