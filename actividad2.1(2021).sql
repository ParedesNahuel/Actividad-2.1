--1)
SELECT * FROM Clientes
go
--2)
SELECT * FROM Proyectos
go
--3)
SELECT Nombre,Descripcion,Costo,FechaInicio,FechaFin FROM proyectos
go
--4)
SELECT Nombre,Descripcion,Costo,FechaInicio FROM Proyectos
WHERE Costo>100000
go
--5)
SELECT Nombre,Descripcion,Costo,FechaInicio FROM Proyectos
WHERE Costo<50000
GO
--6)
SELECT * FROM Proyectos
WHERE YEAR(FechaInicio)=2020
go
--7)
SELECT nombre,Descripcion,Costo FROM Proyectos
WHERE YEAR(fechainicio) =2020 AND Costo>100000
GO
--8)
SELECT nombre as Nombre, Costo,YEAR(FechaInicio)AS Año FROM Proyectos
GO
--9)
SELECT Nombre,Costo,FechaInicio,FechaFin,DATEDIFF(DAY,FechaInicio,FechaFin) as 'Dias De Trabajo' FROM proyectos
go
--10) 
SELECT RazonSocial AS 'Razon Social',cuit AS CUIT,TelefonoFijo AS'Telefono Fijo',TelefonoMovil AS 'Telefono Movil' FROM Clientes
WHERE IDTipoCliente=1 OR IDTipoCliente=3 OR IDTipoCliente=5 OR IDTipoCliente=6
GO

--11)
SELECT Nombre,Costo,FORMAT(FechaInicio,'dd/MM/yyyy') as 'Fecha Inicio',FORMAT(FechaFin,'dd/MM/yyyy')as 'Fecha Fin' FROM Proyectos
WHERE IDCliente != 1 OR IDCliente!= 5 OR IDCliente != 10
GO
--FORMATO DE FECHA ES YYYYMMDD
--12)
SELECT Nombre,COSTO,Descripcion FROM Proyectos
WHERE FechaInicio> '20180101' and FechaInicio<'20180624'
go

--13)
SELECT nombre,Costo,Descripcion FROM Proyectos
WHERE FechaFin> '20200101' AND FechaFin< '20201212'
GO

--14)
SELECT Nombre,DESCRIPCION FROM Proyectos
WHERE estado= 1 AND FechaFIN>GETDATE()
go

--15)
SELECT NOMBRE,DESCRIPCION FROM Proyectos
WHERE ESTADO=1 AND FECHAINICIO<GETDATE()
GO

--16)
SELECT * FROM CLIENTES
WHERE RazonSocial like '[aeiou]%'
go
--17)
SELECT * FROM CLIENTES
WHERE RazonSocial like '%[aeiou]'
go
--18)
SELECT * FROM CLIENTES
WHERE RazonSocial like '%inc'
go
--19)
SELECT * FROM Clientes
WHERE RAZONSOCIAL NOT LIKE '%[AEIOU]'
GO
--20)
SELECT * FROM Clientes
WHERE RAZONSOCIAL NOT LIKE '% %'
GO
--21)
SELECT * FROM Clientes
WHERE RAZONSOCIAL LIKE '% %% %'
GO

--22)
SELECT RazonSocial,Cuit,Email,TelefonoMovil FROM Clientes
WHERE Email IS NOT NULL AND TelefonoFijo IS NULL
GO
--23)
SELECT RazonSocial,Cuit,Email,TelefonoMovil FROM Clientes
WHERE Email IS NULL AND TelefonoFijo IS NOT NULL
GO
--24)
SELECT RAZONSOCIAL, CUIT, EMAIL,TelefonoFijo FROM Clientes
WHERE EMAIL IS NOT NULL OR TelefonoFijo IS NOT NULL OR TelefonoMovil IS NOT NULL
GO
--26)
SELECT RazonSocial,Cuit, email + ' ' + TelefonoMovil AS Contacto FROM Clientes
WHERE TelefonoMovil IS NOT NULL--FALTA TERMINAR
GO