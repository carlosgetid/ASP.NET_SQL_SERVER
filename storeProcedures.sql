select * from Ventas.Clientes
go

create procedure sp_buscar_clientes
@nombre varchar(40)
as
	select c.Nombre, Direccion, p.IdPais, Telefono, IdCliente
	from Ventas.Clientes c
	inner join Ventas.Paises p on c.IdPais = p.IdPais
	where c.Nombre like '%' + @nombre + '%'
go

exec sp_buscar_clientes 'co'
go