CREATE DATABASE  [POOII]
GO

USE [POOII]
GO
/****** Object:  Schema [Compras]    Script Date: 15/05/2020 23:57:07 ******/
CREATE SCHEMA [Compras]
GO
/****** Object:  Schema [RRHH]    Script Date: 15/05/2020 23:57:07 ******/
CREATE SCHEMA [RRHH]
GO
/****** Object:  Schema [Ventas]    Script Date: 15/05/2020 23:57:07 ******/
CREATE SCHEMA [Ventas]
GO
/****** Object:  Table [Compras].[Categorias]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Compras].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Descripcion] [varchar](150) NULL,
	[Foto] [varchar](255) NULL,
 CONSTRAINT [PK_categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Compras].[Productos]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Compras].[Productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](40) NOT NULL,
	[IdProveedor] [int] NULL,
	[IdCategoria] [int] NULL,
	[CantXUnidad] [varchar](20) NOT NULL,
	[PrecioUnitario] [decimal](10, 0) NOT NULL,
	[UnidadesEnExistencia] [int] NOT NULL,
	[UnidadesEnPedido] [int] NOT NULL,
	[Foto] [varchar](255) NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Compras].[Proveedores]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Compras].[Proveedores](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](40) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[NombreContacto] [varchar](100) NOT NULL,
	[CargoContacto] [varchar](50) NOT NULL,
	[IdPais] [int] NOT NULL,
	[Telefono] [varchar](15) NOT NULL,
	[Fax] [varchar](15) NOT NULL,
 CONSTRAINT [PK_proveedores] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RRHH].[Cargos]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RRHH].[Cargos](
	[IdCargo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Cargos] PRIMARY KEY CLUSTERED 
(
	[IdCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RRHH].[Distritos]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RRHH].[Distritos](
	[IdDistrito] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Distritos] PRIMARY KEY CLUSTERED 
(
	[IdDistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RRHH].[Empleados]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RRHH].[Empleados](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Direccion] [varchar](60) NOT NULL,
	[IdDistrito] [int] NULL,
	[Telefono] [varchar](15) NULL,
	[IdCargo] [int] NULL,
	[FechaContratacion] [datetime] NOT NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ventas].[Clientes]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ventas].[Clientes](
	[Nombre] [varchar](40) NOT NULL,
	[Direccion] [varchar](60) NOT NULL,
	[IdPais] [int] NULL,
	[Telefono] [varchar](25) NOT NULL,
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ventas].[Paises]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ventas].[Paises](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ventas].[PedidosCabecera]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ventas].[PedidosCabecera](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NULL,
	[FechaPedido] [datetime] NOT NULL,
	[FechaEntrega] [datetime] NULL,
	[FechaEnvio] [datetime] NULL,
	[EnvioPedido] [char](1) NULL,
	[CantidadPedido] [int] NULL,
	[Destinatario] [varchar](40) NULL,
	[DireccionDestinatario] [varchar](60) NULL,
	[CiudadDestinatario] [varchar](60) NULL,
	[ReferenciaDestnatario] [varchar](60) NULL,
	[DepartamentoDestinatario] [varchar](60) NULL,
	[IdCliente] [int] NOT NULL,
	[IdPaisDestinatario] [int] NULL,
 CONSTRAINT [PK_pedidoscabe] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ventas].[PedidosDetalle]    Script Date: 15/05/2020 23:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ventas].[PedidosDetalle](
	[IdPedido] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[PrecioUnidad] [decimal](10, 0) NOT NULL,
	[Cantidad] [smallint] NOT NULL,
	[Descuento] [float] NOT NULL,
	[IdDetalle] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_pedidosdeta] PRIMARY KEY CLUSTERED 
(
	[IdDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Compras].[Categorias] ON 
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (1, N'Bebidas', N'Gaseosas, cafe, te, cervezas y maltas', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (2, N'Condimentos', N'Salsas dulces y picantes, delicias, comida para untar y aderezos', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (3, N'Reposteria', N'Postres, dulces y pan dulce', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (4, N'Lacteos', N'Quesos', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (5, N'Granos/Cereales', N'Pan, galletas, pasta y cereales', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (6, N'Carnes', N'Carnes preparadas', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (7, N'Frutas/Verduras', N'Frutas secas y queso de soja', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (8, N'Pescado/Marisco', N'Pescados, mariscos y algas', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (9, N'Comida Vegana', N'Algo...', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (10, N'Comida nipona', N'Comida basada en la cultura japonesa', NULL)
GO
INSERT [Compras].[Categorias] ([IdCategoria], [Nombre], [Descripcion], [Foto]) VALUES (11, N'Test', N'Prueba', N'WhatsApp Image 2020-04-27 at 22.17.57.jpg')
GO
SET IDENTITY_INSERT [Compras].[Categorias] OFF
GO
SET IDENTITY_INSERT [Compras].[Productos] ON 
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (1, N'Te Dharamsala', 1, 1, N'10 cajas x 20 bolsas', CAST(18 AS Decimal(10, 0)), 39, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (2, N'Cerveza tibetana Barley', 1, 1, N'24 - bot. 12 l', CAST(19 AS Decimal(10, 0)), 17, 40, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (3, N'Sirope de regaliz', 1, 2, N'12 - bot. 550 ml', CAST(10 AS Decimal(10, 0)), 13, 70, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (4, N'Especias Cajun del chef Anton', 2, 2, N'48 - frascos 6 l', CAST(22 AS Decimal(10, 0)), 53, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (5, N'Mezcla Gumbo del chef Anton', 2, 2, N'36 cajas', CAST(21 AS Decimal(10, 0)), 0, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (6, N'Mermelada de grosellas de la abuela', 3, 2, N'12 - frascos 8 l', CAST(25 AS Decimal(10, 0)), 120, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (7, N'Peras secas organicas del tio Bob', 3, 7, N'12 - paq. 1 kg', CAST(30 AS Decimal(10, 0)), 15, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (8, N'Salsa de arandanos Northwoods', 3, 2, N'12 - frascos 12 l', CAST(40 AS Decimal(10, 0)), 6, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (9, N'Buey Mishi Kobe', 4, 6, N'18 - paq. 500 g', CAST(97 AS Decimal(10, 0)), 29, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (10, N'Pez espada', 4, 8, N'12 - frascos 200 ml', CAST(31 AS Decimal(10, 0)), 31, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (11, N'Queso Cabrales', 5, 4, N'paq. 1 kg', CAST(21 AS Decimal(10, 0)), 22, 30, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (12, N'Queso Manchego La Pastora', 5, 4, N'10 - paq. 500 g', CAST(38 AS Decimal(10, 0)), 86, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (13, N'Algas Konbu', 6, 8, N'caja 2 kg', CAST(6 AS Decimal(10, 0)), 24, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (14, N'Cuajada de judias', 6, 7, N'40 - paq. 100 g', CAST(23 AS Decimal(10, 0)), 35, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (15, N'Salsa de soja baja en sodio', 6, 2, N'24 - bot. 250 ml', CAST(15 AS Decimal(10, 0)), 39, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (16, N'Postre de merengue Pavlova', 7, 3, N'32 - cajas 500 g', CAST(17 AS Decimal(10, 0)), 29, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (17, N'Cordero Alice Springs', 7, 6, N'20 - latas 1 kg', CAST(39 AS Decimal(10, 0)), 0, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (18, N'Langostinos tigre Carnarvon', 7, 8, N'paq. 16 kg', CAST(62 AS Decimal(10, 0)), 42, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (19, N'Pastas de te de chocolate', 8, 3, N'10 cajas x 12 piezas', CAST(9 AS Decimal(10, 0)), 25, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (20, N'Mermelada de Sir Rodneys', 8, 3, N'30 cajas regalo', CAST(81 AS Decimal(10, 0)), 40, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (21, N'Bollos de Sir Rodneys', 8, 3, N'24 paq. x 4 piezas', CAST(10 AS Decimal(10, 0)), 3, 40, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (22, N'Pan de centeno crujiente estilo Gustafs', 9, 5, N'24 - paq. 500 g', CAST(21 AS Decimal(10, 0)), 104, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (23, N'Pan fino', 9, 5, N'12 - paq. 250 g', CAST(9 AS Decimal(10, 0)), 61, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (24, N'Refresco Guarana Fantastica', 10, 1, N'12 - latas 355 ml', CAST(4 AS Decimal(10, 0)), 20, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (25, N'Crema de chocolate y nueces NuNuCa', 11, 3, N'20 - vasos  450 g', CAST(14 AS Decimal(10, 0)), 76, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (26, N'Ositos de goma Gumbär', 11, 3, N'100 - bolsas 250 g', CAST(31 AS Decimal(10, 0)), 15, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (27, N'Chocolate Schoggi', 11, 3, N'100 - piezas 100 g', CAST(43 AS Decimal(10, 0)), 49, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (28, N'Col fermentada Rössle', 12, 7, N'25 - latas 825 g', CAST(45 AS Decimal(10, 0)), 26, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (29, N'Salchicha Thüringer', 12, 6, N'50 bolsas x 30 salch', CAST(123 AS Decimal(10, 0)), 0, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (30, N'Arenque blanco del noroeste', 13, 8, N'10 - vasos 200 g', CAST(25 AS Decimal(10, 0)), 10, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (31, N'Queso gorgonzola Telino', 14, 4, N'12 - paq. 100 g', CAST(12 AS Decimal(10, 0)), 0, 70, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (32, N'Queso Mascarpone Fabioli', 14, 4, N'24 - paq. 200 g', CAST(32 AS Decimal(10, 0)), 9, 40, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (33, N'Queso de cabra', 15, 4, N'500 g', CAST(2 AS Decimal(10, 0)), 112, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (34, N'Cerveza Sasquatch', 16, 1, N'24 - bot. 12 l', CAST(14 AS Decimal(10, 0)), 111, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (35, N'Cerveza negra Steeleye', 16, 1, N'24 - bot. 12 l', CAST(18 AS Decimal(10, 0)), 20, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (36, N'Escabeche de arenque', 17, 8, N'24 - frascos 250 g', CAST(19 AS Decimal(10, 0)), 112, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (37, N'Salmon ahumado Gravad', 17, 8, N'12 - paq. 500 g', CAST(26 AS Decimal(10, 0)), 11, 50, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (38, N'Vino Côte de Blaye', 18, 1, N'12 - bot. 75 cl', CAST(263 AS Decimal(10, 0)), 17, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (39, N'Licor verde Chartreuse', 18, 1, N'750 cc por bot.', CAST(18 AS Decimal(10, 0)), 69, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (40, N'Carne de cangrejo de Boston', 19, 8, N'24 - latas 4 l', CAST(18 AS Decimal(10, 0)), 123, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (41, N'Crema de almejas estilo Nueva Inglaterra', 19, 8, N'12 - latas 12 l', CAST(9 AS Decimal(10, 0)), 85, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (42, N'Tallarines de Singapur', 20, 5, N'32 - 1 kg paq.', CAST(14 AS Decimal(10, 0)), 26, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (43, N'Cafe de Malasia', 20, 1, N'16 - latas 500 g', CAST(46 AS Decimal(10, 0)), 17, 10, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (44, N'Azúcar negra Malacca', 20, 2, N'20 - bolsas 2 kg', CAST(19 AS Decimal(10, 0)), 27, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (45, N'Arenque ahumado', 21, 8, N'paq. 1k', CAST(9 AS Decimal(10, 0)), 5, 70, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (46, N'Arenque salado', 21, 8, N'4 - vasos 450 g', CAST(12 AS Decimal(10, 0)), 95, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (47, N'Galletas Zaanse', 22, 3, N'10 - cajas 4 l', CAST(9 AS Decimal(10, 0)), 36, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (48, N'Chocolate holandes', 22, 3, N'10 paq.', CAST(12 AS Decimal(10, 0)), 15, 70, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (49, N'Regaliz', 23, 3, N'24 - paq. 50 g', CAST(20 AS Decimal(10, 0)), 10, 60, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (50, N'Chocolate blanco', 23, 3, N'12 - barras 100 g', CAST(16 AS Decimal(10, 0)), 65, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (51, N'Manzanas secas Manjimup', 24, 7, N'50 - paq. 300 g', CAST(53 AS Decimal(10, 0)), 20, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (52, N'Cereales para Filo', 24, 5, N'16 - cajas 2 kg', CAST(7 AS Decimal(10, 0)), 38, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (53, N'Empanada de carne', 24, 6, N'48 porc.', CAST(32 AS Decimal(10, 0)), 0, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (54, N'Empanada de cerdo', 25, 6, N'16 tartas', CAST(7 AS Decimal(10, 0)), 21, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (55, N'Pate chino', 25, 6, N'24 cajas x 2 tartas', CAST(24 AS Decimal(10, 0)), 115, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (56, N'Gnocchi de la abuela Alicia', 26, 5, N'24 - paq. 250 g', CAST(38 AS Decimal(10, 0)), 21, 10, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (57, N'Raviolis Angelo', 26, 5, N'24 - paq. 250 g', CAST(19 AS Decimal(10, 0)), 36, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (58, N'Caracoles de Borgoña', 27, 8, N'24 porc.', CAST(13 AS Decimal(10, 0)), 62, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (59, N'Raclet de queso Courdavault', 28, 4, N'paq. 5 kg', CAST(55 AS Decimal(10, 0)), 79, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (60, N'Camembert Pierrot', 28, 4, N'15 - paq. 300 g', CAST(34 AS Decimal(10, 0)), 19, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (61, N'Sirope de arce', 29, 2, N'24 - bot. 500 ml', CAST(28 AS Decimal(10, 0)), 113, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (62, N'Tarta de azúcar', 29, 3, N'48 tartas', CAST(49 AS Decimal(10, 0)), 17, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (63, N'Sandwich de vegetales', 7, 2, N'15 - frascos 625 g', CAST(43 AS Decimal(10, 0)), 24, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (64, N'Bollos de pan de Wimmer', 12, 5, N'20 bolsas x 4 porc.', CAST(33 AS Decimal(10, 0)), 22, 80, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (65, N'Salsa de pimiento picante de Luisiana', 2, 2, N'32 - bot. 8 l', CAST(21 AS Decimal(10, 0)), 76, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (66, N'Especias picantes de Luisiana', 2, 2, N'24 - frascos 8 l', CAST(17 AS Decimal(10, 0)), 4, 100, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (67, N'Cerveza Laughing Lumberjack', 16, 1, N'24 - bot. 12 l', CAST(14 AS Decimal(10, 0)), 52, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (68, N'Barras de pan de Escocia', 8, 3, N'10 cajas x 8 porc.', CAST(12 AS Decimal(10, 0)), 6, 10, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (69, N'Queso Gudbrandsdals', 15, 4, N'paq. 10 kg', CAST(36 AS Decimal(10, 0)), 26, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (70, N'Cerveza Outback', 7, 1, N'24 - bot. 355 ml', CAST(15 AS Decimal(10, 0)), 15, 10, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (71, N'Crema de queso Fløtemys', 15, 4, N'10 - paq. 500 g', CAST(21 AS Decimal(10, 0)), 26, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (72, N'Queso Mozzarella Giovanni', 14, 4, N'24 - paq. 200 g', CAST(34 AS Decimal(10, 0)), 14, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (73, N'Caviar rojo', 17, 8, N'24 - frascos150 g', CAST(15 AS Decimal(10, 0)), 101, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (74, N'Queso de soja Longlife', 4, 7, N'paq. 5 kg', CAST(10 AS Decimal(10, 0)), 4, 20, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (75, N'Cerveza Klosterbier Rhönbräu', 12, 1, N'24 - bot. 0,5 l', CAST(7 AS Decimal(10, 0)), 125, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (76, N'Licor Cloudberry', 23, 1, N'500 ml', CAST(18 AS Decimal(10, 0)), 57, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (77, N'Salsa verde original Frankfurter', 12, 2, N'12 cajas', CAST(13 AS Decimal(10, 0)), 32, 0, NULL)
GO
INSERT [Compras].[Productos] ([IdProducto], [Nombre], [IdProveedor], [IdCategoria], [CantXUnidad], [PrecioUnitario], [UnidadesEnExistencia], [UnidadesEnPedido], [Foto]) VALUES (79, N'Tofy', 3, 9, N'15', CAST(18 AS Decimal(10, 0)), 25, 10, N'tofu.jpg')
GO
SET IDENTITY_INSERT [Compras].[Productos] OFF
GO
SET IDENTITY_INSERT [Compras].[Proveedores] ON 
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (1, N'Exotic Liquids', N'Charlotte Cooper', N'Gerente de compras', N'49 Gilbert St.', 3, N'(171) 555-2222', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (2, N'New Orleans Cajun Delights', N'Shelley Burke', N'Administrador de pedidos', N'P.O. Box 78934', 8, N'(100) 555-4822', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (3, N'Grandma Kellys Homestead', N'Regina Murphy', N'Representante de ventas', N'707 Oxford Rd.', 1, N'(313) 555-5735', N'(313) 555-3349')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (4, N'Tokyo Traders', N'Yoshi Nagase', N'Gerente de marketing', N'9-8 Sekimai\r\nMusashino-shi', 7, N'(03) 3555-5011', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (5, N'Cooperativa de Quesos Las Cabras', N'Antonio del Valle Saavedra', N'Administrador de exportaciones', N'Calle del Rosal 4', 7, N'(98) 598 76 54', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (6, N'Mayumis', N'Mayumi Ohno', N'Representante de marketing', N'92 Setsuko\r\nChuo-ku', 4, N'(06) 431-7877', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (7, N'Pavlova, Ltd.', N'Ian Devling', N'Gerente de marketing', N'74 Rose St.\r\nMoonie Ponds', 8, N'(03) 444-2343', N'(03) 444-6588')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (8, N'Specialty Biscuits, Ltd.', N'Peter Wilson', N'Representante de ventas', N'29 Kings Way', 3, N'(161) 555-4448', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (9, N'PB Knäckebröd AB', N'Lars Peterson', N'Agente de ventas', N'Kaloadagatan 13', 9, N'031-987 65 43', N'031-987 65 91')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (10, N'Refrescos Americanas LTDA', N'Carlos Diaz', N'Gerente de marketing', N'Av. das Americanas 12.890', 3, N'(11) 555 4640', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (11, N'Heli Süßwaren GmbH & Co. KG', N'Petra Winkler', N'Gerente de ventas', N'Tiergartenstraße 5', 2, N'(010) 9984510', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (12, N'Plutzer Lebensmittelgroßmärkte AG', N'Martin Bein', N'Ger. marketing internacional', N'Bogenallee 51', 7, N'(069) 992755', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (13, N'Nord-Ost-Fisch Handelsgesellschaft mbH', N'Sven Petersen', N'Coordinador de mercados', N'Frahmredder 112a', 2, N'(04721) 8714', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (14, N'Formaggi Fortini s.r.l.', N'Elio Rossi', N'Representante de ventas', N'Viale Dante, 75', 6, N'(0544) 60323', N'(0544) 60603')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (15, N'Norske Meierier', N'Beate Vileid', N'Gerente de marketing', N'Hatlevegen 5', 6, N'(0)2-953010', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (16, N'Bigfoot Breweries', N'Cheryl Saylor', N'Repr. de cuentas regional', N'3400 - 8th Avenue\r\nSuite 210', 9, N'(503) 555-9931', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (17, N'Svensk Sjöföda AB', N'Michael Björn', N'Representante de ventas', N'Brovallavägen 231', 5, N'08-123 45 67', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (18, N'Aux joyeux ecclesiastiques', N'Guylène Nodier', N'Gerente de ventas', N'203, Rue des Francs-Bourgeois', 8, N'(1) 03.83.00.68', N'(1) 03.83.00.62')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (19, N'New England Seafood Cannery', N'Robb Merchant', N'Agente de cuentas al por mayor', N'Order Processing Dept.\r\n2100 Paul Revere Blvd.', 4, N'(617) 555-3267', N'(617) 555-3389')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (20, N'Leka Trading', N'Chandra Leka', N'Propietario', N'471 Serangoon Loop, Suite #402', 1, N'555-8787', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (21, N'Lyngbysild', N'Niels Petersen', N'Gerente de ventas', N'Lyngbysild\r\nFiskebakken 10', 8, N'43844108', N'43844115')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (22, N'Zaanse Snoepfabriek', N'Dirk Luchte', N'Gerente de contabilidad', N'Verkoop\r\nRijnweg 22', 8, N'(12345) 1212', N'(12345) 1210')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (23, N'Karkki Oy', N'Anne Heikkonen', N'Gerente de produccion', N'Valtakatu 12', 1, N'(953) 10956', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (24, N'Gday, Mate', N'Wendy Mackenzie', N'Representante de ventas', N'170 Prince Edward Parade\r\nHunters Hill', 2, N'(02) 555-5914', N'(02) 555-4873')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (25, N'Ma Maison', N'Jean-Guy Lauzon', N'Gerente de marketing', N'2960 Rue St. Laurent', 4, N'(514) 555-9022', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (26, N'Pasta Buttini s.r.l.', N'Giovanni Giudici', N'Administrador de pedidos', N'Via dei Gelsomini, 153', 8, N'(089) 6547665', N'(089) 6547667')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (27, N'Escargots Nouveaux', N'Marie Delamare', N'Gerente de ventas', N'22, rue H. Voiron', 9, N'', N'')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (28, N'Gai pâturage', N'Eliane Noz', N'Representante de ventas', N'Bat. B\r\n3, rue des Alpes', 7, N'38.76.98.06', N'38.76.98.58')
GO
INSERT [Compras].[Proveedores] ([IdProveedor], [Nombre], [Direccion], [NombreContacto], [CargoContacto], [IdPais], [Telefono], [Fax]) VALUES (29, N'Forêts derables', N'Chantal Goulet', N'Gerente de contabilidad', N'148 rue Chasseur', 3, N'(514) 555-2955', N'(514) 555-2921')
GO
SET IDENTITY_INSERT [Compras].[Proveedores] OFF
GO
SET IDENTITY_INSERT [RRHH].[Cargos] ON 
GO
INSERT [RRHH].[Cargos] ([IdCargo], [Nombre]) VALUES (1, N'Representante de Ventas')
GO
INSERT [RRHH].[Cargos] ([IdCargo], [Nombre]) VALUES (2, N'Ejecutivo de Ventas')
GO
INSERT [RRHH].[Cargos] ([IdCargo], [Nombre]) VALUES (3, N'Supervisor de Ventas')
GO
INSERT [RRHH].[Cargos] ([IdCargo], [Nombre]) VALUES (4, N'Auxiliar de Ventas')
GO
SET IDENTITY_INSERT [RRHH].[Cargos] OFF
GO
SET IDENTITY_INSERT [RRHH].[Distritos] ON 
GO
INSERT [RRHH].[Distritos] ([IdDistrito], [Nombre]) VALUES (1, N'Lima')
GO
INSERT [RRHH].[Distritos] ([IdDistrito], [Nombre]) VALUES (2, N'Rimac')
GO
INSERT [RRHH].[Distritos] ([IdDistrito], [Nombre]) VALUES (3, N'Ate')
GO
INSERT [RRHH].[Distritos] ([IdDistrito], [Nombre]) VALUES (4, N'San Miguel')
GO
SET IDENTITY_INSERT [RRHH].[Distritos] OFF
GO
SET IDENTITY_INSERT [RRHH].[Empleados] ON 
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (1, N'Davolio', N'Nancy', CAST(N'1968-12-08T00:00:00.000' AS DateTime), N'Calle Las Magnolias 123', 2, N'6573344', 4, CAST(N'2010-02-10T00:00:00.000' AS DateTime))
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (2, N'Fuller', N'Andrew', CAST(N'1952-02-19T00:00:00.000' AS DateTime), N'Av Abancay 234', 1, N'98788766', 1, CAST(N'2011-02-09T00:00:00.000' AS DateTime))
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (3, N'Leverling', N'Janet', CAST(N'1963-08-30T00:00:00.000' AS DateTime), N'Av. Riva Aguero 233', 4, N'5664555', 3, CAST(N'2011-03-10T00:00:00.000' AS DateTime))
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (4, N'Peacock', N'Margaret', CAST(N'1958-09-19T00:00:00.000' AS DateTime), N'Calle las flores 411', 2, N'980523344', 1, CAST(N'2011-03-11T00:00:00.000' AS DateTime))
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (5, N'Buchanan', N'Steven', CAST(N'1955-03-04T00:00:00.000' AS DateTime), N'Av. Brasil 222', 3, N'6776566', 3, CAST(N'2011-04-05T00:00:00.000' AS DateTime))
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (6, N'Suyama', N'Michael', CAST(N'1963-07-02T00:00:00.000' AS DateTime), N'Calle Zafiro 344', 1, N'8997877', 4, CAST(N'2011-04-10T00:00:00.000' AS DateTime))
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (7, N'King', N'Robert', CAST(N'1960-05-29T00:00:00.000' AS DateTime), N'Jr Puni 322', 1, N'99876677', 2, CAST(N'2011-05-04T00:00:00.000' AS DateTime))
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (8, N'Callahan', N'Laura', CAST(N'1958-01-09T00:00:00.000' AS DateTime), N'Dinthilac 123', 2, N'90098999', 4, CAST(N'2011-06-10T00:00:00.000' AS DateTime))
GO
INSERT [RRHH].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [FechaNacimiento], [Direccion], [IdDistrito], [Telefono], [IdCargo], [FechaContratacion]) VALUES (9, N'Dodsworth', N'Anne', CAST(N'1969-07-02T00:00:00.000' AS DateTime), N'Av Los fresnos 2334', 3, N'98877888', 1, CAST(N'2011-07-10T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [RRHH].[Empleados] OFF
GO
SET IDENTITY_INSERT [Ventas].[Clientes] ON 
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Alfreds Futterkiste', N'Obere Str. 57', 2, N'030-0074321', 1)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Ana Trujillo Emparedados y helados', N'Avda. de la Constitucion 2222', 5, N'(5) 555-4729', 2)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Antonio Moreno Taqueria', N'Mataderos  2312', 7, N'(5) 555-3932', 3)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Around the Horn', N'120 Hanover Sq.', 4, N'(71) 555-7788', 4)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Berglunds snabbköp', N'Berguvsvägen  8', 6, N'0921-12 34 65', 5)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Blauer See Delikatessen', N'Forsterstr. 57', 1, N'0621-08460', 6)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Blondel père et fils', N'24, place Kleber Estrasburgo', 8, N'88.60.15.31', 7)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Bolido Comidas preparadas', N'C/ Araquil, 67', 9, N'(91) 555 91 99', 8)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Bon app', N'12, rue des Bouchers', 1, N'91.24.45.41', 9)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', 3, N'(604) 555-3745', 10)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'B\s Beverages', N'Fauntleroy Circus', 9, N'(71) 555-1212', 11)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Cactus Comidas para llevar', N'Cerrito 333', 2, N'(1) 135-4892', 12)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Centro comercial Moctezuma', N'Sierras de Granada 9993', 8, N'(5) 555-7293', 13)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Chop-suey Chinese', N'Hauptstr. 29', 1, N'', 14)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Comercio Mineiro', N'Av. dos Lusiadas, 23', 4, N'', 15)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Consolidated Holdings', N'Berkeley Gardens\r\n12  Brewery', 5, N'(71) 555-2282', 16)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Drachenblut Delikatessen', N'Walserweg 21', 6, N'0241-059428', 17)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Du monde entier', N'67, rue des Cinquante Otages', 7, N'40.67.89.89', 18)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Eastern Connection', N'35 King George', 5, N'(71) 555-3373', 19)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Ernst Handel', N'Kirchgasse 6', 1, N'7675-3426', 20)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Familia Arquibaldo', N'Rua Oros, 92', 4, N'(11) 555-9857', 21)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'FISSA Fabrica Inter. Salchichas S.A.', N'C/ Moralzarzal, 86', 3, N'(91) 555 55 93', 22)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Folies gourmandes', N'184, chaussee de Tournai', 9, N'20.16.10.17', 23)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Folk och fä HB', N'Åkergatan 24', 3, N'', 24)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Frankenversand', N'Berliner Platz 43', 1, N'089-0877451', 25)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'France restauration', N'54, rue Royale', 8, N'40.32.21.20', 26)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Franchi S.p.A.', N'Via Monte Bianco 34', 1, N'011-4988261', 27)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', 8, N'(1) 354-2535', 28)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Galeria del gastronomo', N'Rambla de Cataluña, 23', 4, N'(93) 203 4561', 29)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Godos Cocina Tipica', N'C/ Romero, 33', 7, N'', 30)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Gourmet Lanchonetes', N'Av. Brasil, 442', 8, N'(11) 555-9482', 31)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Great Lakes Food Market', N'2732 Baker Blvd.', 1, N'(503) 555-7555', 32)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'GROSELLA-Restaurante', N'5ª Ave. Los Palos Grandes', 2, N'(2) 283-3397', 33)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Hanari Carnes', N'Rua do Paço, 67', 1, N'(21) 555-8765', 34)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', 8, N'(5) 555-1948', 35)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Hungry Coyote Import Store', N'City Center Plaza\r\n516 Main St.', 9, N'(503) 555-2376', 36)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', 5, N'2967 3333', 37)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Island Trading', N'Garden House\r\nCrowther Way', 3, N'', 38)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Königlich Essen', N'Maubelstr. 90', 7, N'0555-09876', 39)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'La corne deabondance', N'67, avenue de Europe', 9, N'30.59.84.10', 40)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'La maison de Asie', N'1 rue Alsace-Lorraine', 2, N'61.77.61.11', 41)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Laughing Bacchus Wine Cellars', N'1900 Oak St.', 7, N'(604) 555-7293', 42)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Lazy K Kountry Store', N'12 Orchestra Terrace', 5, N'(509) 555-6221', 43)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Lehmanns Marktstand', N'Magazinweg 7', 4, N'069-0245874', 44)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Lets Stop N Shop', N'87 Polk St.\r\nSuite 5', 1, N'', 45)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', 8, N'(9) 331-7256', 46)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', 2, N'(8) 34-93-93', 47)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', 1, N'(503) 555-9646', 48)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', 7, N'035-640231', 49)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Maison Dewey', N'Rue Joseph-Bens 532', 3, N'(02) 201 24 68', 50)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Mère Paillarde', N'43 rue St. Laurent', 6, N'(514) 555-8055', 51)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Morgenstern Gesundkost', N'Heerstr. 22', 9, N'', 52)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'North/South', N'South House\r\n300 Queensbridge', 5, N'(71) 555-2530', 53)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Oceano Atlantico Ltda.', N'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 1, N'(1) 135-5535', 54)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Old World Delicatessen', N'2743 Bering St.', 4, N'(907) 555-2880', 55)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Ottilies Käseladen', N'Mehrheimerstr. 369', 3, N'0221-0765721', 56)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Paris specialites', N'265, boulevard Charonne', 8, N'(1) 42.34.22.77', 57)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Pericles Comidas clasicas', N'Calle Dr. Jorge Cash 321', 3, N'(5) 545-3745', 58)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Piccolo und mehr', N'Geislweg 14', 2, N'6562-9723', 59)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Princesa Isabel Vinhos', N'Estrada da saúde n. 58', 4, N'', 60)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Que Delicia', N'Rua da Panificadora, 12', 4, N'(21) 555-4545', 61)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Queen Cozinha', N'Alameda dos Canàrios, 891', 9, N'', 62)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'QUICK-Stop', N'Taucherstraße 10', 6, N'', 63)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Rancho grande', N'Av. del Libertador 900', 1, N'(1) 123-5556', 64)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', 1, N'(505) 555-3620', 65)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Reggiani Caseifici', N'Strada Provinciale 124', 3, N'0522-556722', 66)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Ricardo Adocicados', N'Av. Copacabana, 267', 7, N'', 67)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Richter Supermarkt', N'Grenzacherweg 237', 3, N'', 68)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Romero y tomillo', N'Gran Via, 1', 9, N'(91) 745 6210', 69)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Sante Gourmet', N'Erling Skakkes gate 78', 2, N'07-98 92 47', 70)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Save-a-lot Markets', N'187 Suffolk Ln.', 5, N'(208) 555-8097', 71)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Seven Seas Imports', N'90 Wadhurst Rd.', 8, N'(71) 555-5646', 72)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Simons bistro', N'Vinbæltet 34', 6, N'31 13 35 57', 73)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Specialites du monde', N'25, rue Lauriston', 3, N'(1) 47.55.60.20', 74)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Split Rail Beer & Ale', N'P.O. Box 555', 4, N'(307) 555-6525', 75)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Suprêmes delices', N'Boulevard Tirou, 255', 9, N'(071) 23 67 22 21', 76)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'The Big Cheese', N'89 Jefferson Way\r\nSuite 2', 3, N'', 77)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'The Cracker Box', N'55 Grizzly Peak Rd.', 7, N'(406) 555-8083', 78)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Toms Spezialitäten', N'Luisenstr. 48', 4, N'0251-035695', 79)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Tortuga Restaurante', N'Avda. Azteca 123', 6, N'', 80)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Tradição Hipermercados', N'Av. Inês de Castro, 414', 9, N'(11) 555-2168', 81)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Trails Head Gourmet Provisioners', N'722 DaVinci Blvd.', 1, N'(206) 555-2174', 82)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Vaffeljernet', N'Smagsløget 45', 3, N'86 22 33 44', 83)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Victuailles en stock', N'2, rue du Commerce', 7, N'78.32.54.87', 84)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Vins et alcools Chevalier', N'59 rue de lAbbaye', 5, N'26.47.15.11', 85)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Die Wandernde Kuh', N'Adenauerallee 900', 8, N'0711-035428', 86)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Wartian Herkku', N'Torikatu 38', 2, N'981-443655', 87)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Wellington Importadora', N'Rua do Mercado, 12', 5, N'', 88)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'White Clover Markets', N'305 - 14th Ave. S.\r\nSuite 3B', 3, N'(206) 555-4115', 89)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Wilman Kala', N'Keskuskatu 45', 7, N'90-224 8858', 90)
GO
INSERT [Ventas].[Clientes] ([Nombre], [Direccion], [IdPais], [Telefono], [IdCliente]) VALUES (N'Wolski  Zajazd', N'ul. Filtrowa 68', 2, N'(26) 642-7012', 91)
GO
SET IDENTITY_INSERT [Ventas].[Clientes] OFF
GO
SET IDENTITY_INSERT [Ventas].[Paises] ON 
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (1, N'Peru')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (2, N'Argentina')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (3, N'Chile')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (4, N'Estados Unidos')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (5, N'España')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (6, N'Francia')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (7, N'Colombia')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (8, N'Canada')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (9, N'China')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (10, N'Alemania')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (11, N'Austria')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (12, N'Belgica')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (13, N'Brasil')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (14, N'Dinamarca')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (15, N'Finlandia')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (16, N'Irlanda')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (17, N'Italia')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (18, N'Mexico')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (19, N'Noruega')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (20, N'Polonia')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (21, N'Portugal')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (22, N'Reino Unido')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (23, N'Suecia')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (24, N'Suiza')
GO
INSERT [Ventas].[Paises] ([IdPais], [Nombre]) VALUES (25, N'Venezuela')
GO
SET IDENTITY_INSERT [Ventas].[Paises] OFF
GO
SET IDENTITY_INSERT [Ventas].[PedidosCabecera] ON 
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (1, 5, CAST(N'1996-07-04T00:00:00.000' AS DateTime), CAST(N'1996-08-01T00:00:00.000' AS DateTime), CAST(N'1996-07-16T00:00:00.000' AS DateTime), N'1', 32, N'Wilman Kala', N'Keskuskatu 45', N'Helsinki', N'', N'21240', 90, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (2, 6, CAST(N'1996-07-05T00:00:00.000' AS DateTime), CAST(N'1996-08-16T00:00:00.000' AS DateTime), CAST(N'1996-07-10T00:00:00.000' AS DateTime), N'1', 11, N'Toms Spezialitäten', N'Luisenstr. 48', N'Münster', N'', N'44087', 79, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (3, 4, CAST(N'1996-07-08T00:00:00.000' AS DateTime), CAST(N'1996-08-05T00:00:00.000' AS DateTime), CAST(N'1996-07-12T00:00:00.000' AS DateTime), N'1', 65, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (4, 3, CAST(N'1996-07-08T00:00:00.000' AS DateTime), CAST(N'1996-08-05T00:00:00.000' AS DateTime), CAST(N'1996-07-15T00:00:00.000' AS DateTime), N'1', 41, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (5, 4, CAST(N'1996-07-09T00:00:00.000' AS DateTime), CAST(N'1996-08-06T00:00:00.000' AS DateTime), CAST(N'1996-07-11T00:00:00.000' AS DateTime), N'1', 51, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (6, 3, CAST(N'1996-07-10T00:00:00.000' AS DateTime), CAST(N'1996-07-24T00:00:00.000' AS DateTime), CAST(N'1996-07-16T00:00:00.000' AS DateTime), N'1', 58, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (7, 5, CAST(N'1996-07-11T00:00:00.000' AS DateTime), CAST(N'1996-08-08T00:00:00.000' AS DateTime), CAST(N'1996-07-23T00:00:00.000' AS DateTime), N'1', 22, N'Chop-suey Chinese', N'Hauptstr. 31', N'Bern', N'', N'3012', 14, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (8, 9, CAST(N'1996-07-12T00:00:00.000' AS DateTime), CAST(N'1996-08-09T00:00:00.000' AS DateTime), CAST(N'1996-07-15T00:00:00.000' AS DateTime), N'1', 148, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (9, 3, CAST(N'1996-07-15T00:00:00.000' AS DateTime), CAST(N'1996-08-12T00:00:00.000' AS DateTime), CAST(N'1996-07-17T00:00:00.000' AS DateTime), N'1', 13, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (10, 4, CAST(N'1996-07-16T00:00:00.000' AS DateTime), CAST(N'1996-08-13T00:00:00.000' AS DateTime), CAST(N'1996-07-22T00:00:00.000' AS DateTime), N'1', 81, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (11, 1, CAST(N'1996-07-17T00:00:00.000' AS DateTime), CAST(N'1996-08-14T00:00:00.000' AS DateTime), CAST(N'1996-07-23T00:00:00.000' AS DateTime), N'1', 140, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (12, 4, CAST(N'1996-07-18T00:00:00.000' AS DateTime), CAST(N'1996-08-15T00:00:00.000' AS DateTime), CAST(N'1996-07-25T00:00:00.000' AS DateTime), N'1', 3, N'Centro comercial Moctezuma', N'Sierras de Granada 9993', N'Mexico D.F.', N'', N'05022', 13, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (13, 4, CAST(N'1996-07-19T00:00:00.000' AS DateTime), CAST(N'1996-08-16T00:00:00.000' AS DateTime), CAST(N'1996-07-29T00:00:00.000' AS DateTime), N'1', 55, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (14, 4, CAST(N'1996-07-19T00:00:00.000' AS DateTime), CAST(N'1996-08-16T00:00:00.000' AS DateTime), CAST(N'1996-07-30T00:00:00.000' AS DateTime), N'1', 3, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (15, 8, CAST(N'1996-07-22T00:00:00.000' AS DateTime), CAST(N'1996-08-19T00:00:00.000' AS DateTime), CAST(N'1996-07-25T00:00:00.000' AS DateTime), N'1', 48, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (16, 9, CAST(N'1996-07-23T00:00:00.000' AS DateTime), CAST(N'1996-08-20T00:00:00.000' AS DateTime), CAST(N'1996-07-31T00:00:00.000' AS DateTime), N'1', 146, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (17, 6, CAST(N'1996-07-24T00:00:00.000' AS DateTime), CAST(N'1996-08-21T00:00:00.000' AS DateTime), CAST(N'1996-08-23T00:00:00.000' AS DateTime), N'1', 3, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (18, 2, CAST(N'1996-07-25T00:00:00.000' AS DateTime), CAST(N'1996-08-22T00:00:00.000' AS DateTime), CAST(N'1996-08-12T00:00:00.000' AS DateTime), N'1', 55, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (19, 3, CAST(N'1996-07-26T00:00:00.000' AS DateTime), CAST(N'1996-09-06T00:00:00.000' AS DateTime), CAST(N'1996-07-31T00:00:00.000' AS DateTime), N'1', 25, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (20, 4, CAST(N'1996-07-29T00:00:00.000' AS DateTime), CAST(N'1996-08-26T00:00:00.000' AS DateTime), CAST(N'1996-08-06T00:00:00.000' AS DateTime), N'1', 208, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (21, 8, CAST(N'1996-07-30T00:00:00.000' AS DateTime), CAST(N'1996-08-27T00:00:00.000' AS DateTime), CAST(N'1996-08-02T00:00:00.000' AS DateTime), N'1', 66, N'GROSELLA-Restaurante', N'5ª Ave. Los Palos Grandes', N'Caracas', N'DF', N'1081', 33, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (22, 5, CAST(N'1996-07-31T00:00:00.000' AS DateTime), CAST(N'1996-08-14T00:00:00.000' AS DateTime), CAST(N'1996-08-09T00:00:00.000' AS DateTime), N'1', 4, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (23, 1, CAST(N'1996-08-01T00:00:00.000' AS DateTime), CAST(N'1996-08-29T00:00:00.000' AS DateTime), CAST(N'1996-08-02T00:00:00.000' AS DateTime), N'1', 136, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (24, 6, CAST(N'1996-08-01T00:00:00.000' AS DateTime), CAST(N'1996-08-29T00:00:00.000' AS DateTime), CAST(N'1996-08-30T00:00:00.000' AS DateTime), N'1', 4, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (25, 6, CAST(N'1996-08-02T00:00:00.000' AS DateTime), CAST(N'1996-08-30T00:00:00.000' AS DateTime), CAST(N'1996-08-06T00:00:00.000' AS DateTime), N'1', 98, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (26, 3, CAST(N'1996-08-05T00:00:00.000' AS DateTime), CAST(N'1996-09-02T00:00:00.000' AS DateTime), CAST(N'1996-08-12T00:00:00.000' AS DateTime), N'1', 76, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (27, 6, CAST(N'1996-08-06T00:00:00.000' AS DateTime), CAST(N'1996-09-03T00:00:00.000' AS DateTime), CAST(N'1996-08-16T00:00:00.000' AS DateTime), N'1', 6, N'Vins et alcools Chevalier', N'59 rue de lAbbaye', N'Reims', N'', N'51100', 85, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (28, 1, CAST(N'1996-08-07T00:00:00.000' AS DateTime), CAST(N'1996-09-04T00:00:00.000' AS DateTime), CAST(N'1996-08-09T00:00:00.000' AS DateTime), N'1', 26, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (29, 8, CAST(N'1996-08-08T00:00:00.000' AS DateTime), CAST(N'1996-08-22T00:00:00.000' AS DateTime), CAST(N'1996-08-14T00:00:00.000' AS DateTime), N'1', 13, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (30, 2, CAST(N'1996-08-09T00:00:00.000' AS DateTime), CAST(N'1996-09-06T00:00:00.000' AS DateTime), CAST(N'1996-08-13T00:00:00.000' AS DateTime), N'1', 125, N'Morgenstern Gesundkost', N'Heerstr. 22', N'Leipzig', N'', N'04179', 52, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (31, 8, CAST(N'1996-08-12T00:00:00.000' AS DateTime), CAST(N'1996-09-09T00:00:00.000' AS DateTime), CAST(N'1996-08-16T00:00:00.000' AS DateTime), N'1', 92, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (32, 8, CAST(N'1996-08-13T00:00:00.000' AS DateTime), CAST(N'1996-09-10T00:00:00.000' AS DateTime), CAST(N'1996-08-16T00:00:00.000' AS DateTime), N'1', 25, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (33, 2, CAST(N'1996-08-14T00:00:00.000' AS DateTime), CAST(N'1996-09-11T00:00:00.000' AS DateTime), CAST(N'1996-09-12T00:00:00.000' AS DateTime), N'1', 8, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (34, 4, CAST(N'1996-08-14T00:00:00.000' AS DateTime), CAST(N'1996-08-28T00:00:00.000' AS DateTime), CAST(N'1996-08-21T00:00:00.000' AS DateTime), N'1', 2, N'Romero y tomillo', N'Gran Via, 1', N'Madrid', N'', N'28001', 69, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (35, 4, CAST(N'1996-08-15T00:00:00.000' AS DateTime), CAST(N'1996-09-12T00:00:00.000' AS DateTime), CAST(N'1996-08-21T00:00:00.000' AS DateTime), N'1', 12, N'Romero y tomillo', N'Gran Via, 1', N'Madrid', N'', N'28001', 69, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (36, 3, CAST(N'1996-08-16T00:00:00.000' AS DateTime), CAST(N'1996-09-13T00:00:00.000' AS DateTime), CAST(N'1996-08-23T00:00:00.000' AS DateTime), N'1', 84, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (37, 4, CAST(N'1996-08-19T00:00:00.000' AS DateTime), CAST(N'1996-09-16T00:00:00.000' AS DateTime), CAST(N'1996-08-27T00:00:00.000' AS DateTime), N'1', 76, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (38, 1, CAST(N'1996-08-20T00:00:00.000' AS DateTime), CAST(N'1996-09-17T00:00:00.000' AS DateTime), CAST(N'1996-08-26T00:00:00.000' AS DateTime), N'1', 76, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (39, 8, CAST(N'1996-08-21T00:00:00.000' AS DateTime), CAST(N'1996-09-18T00:00:00.000' AS DateTime), CAST(N'1996-08-30T00:00:00.000' AS DateTime), N'1', 229, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (40, 8, CAST(N'1996-08-22T00:00:00.000' AS DateTime), CAST(N'1996-09-19T00:00:00.000' AS DateTime), CAST(N'1996-08-28T00:00:00.000' AS DateTime), N'1', 12, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (41, 4, CAST(N'1996-08-23T00:00:00.000' AS DateTime), CAST(N'1996-09-20T00:00:00.000' AS DateTime), CAST(N'1996-09-03T00:00:00.000' AS DateTime), N'1', 7, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (42, 7, CAST(N'1996-08-26T00:00:00.000' AS DateTime), CAST(N'1996-09-23T00:00:00.000' AS DateTime), CAST(N'1996-08-28T00:00:00.000' AS DateTime), N'1', 22, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (43, 8, CAST(N'1996-08-27T00:00:00.000' AS DateTime), CAST(N'1996-09-24T00:00:00.000' AS DateTime), CAST(N'1996-09-03T00:00:00.000' AS DateTime), N'1', 79, N'Comercio Mineiro', N'Av. dos Lusiadas, 23', N'São Paulo', N'SP', N'05432-043', 15, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (44, 6, CAST(N'1996-08-27T00:00:00.000' AS DateTime), CAST(N'1996-09-24T00:00:00.000' AS DateTime), CAST(N'1996-09-04T00:00:00.000' AS DateTime), N'1', 6, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (45, 1, CAST(N'1996-08-28T00:00:00.000' AS DateTime), CAST(N'1996-09-25T00:00:00.000' AS DateTime), CAST(N'1996-09-02T00:00:00.000' AS DateTime), N'1', 1, N'Tradição Hipermercados', N'Av. Inês de Castro, 414', N'São Paulo', N'SP', N'05634-030', 81, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (46, 1, CAST(N'1996-08-29T00:00:00.000' AS DateTime), CAST(N'1996-09-26T00:00:00.000' AS DateTime), CAST(N'1996-09-11T00:00:00.000' AS DateTime), N'1', 21, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (47, 4, CAST(N'1996-08-30T00:00:00.000' AS DateTime), CAST(N'1996-09-27T00:00:00.000' AS DateTime), CAST(N'1996-09-05T00:00:00.000' AS DateTime), N'1', 147, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (48, 2, CAST(N'1996-09-02T00:00:00.000' AS DateTime), CAST(N'1996-09-30T00:00:00.000' AS DateTime), CAST(N'1996-09-10T00:00:00.000' AS DateTime), N'1', 1, N'Vins et alcools Chevalier', N'59 rue de lAbbaye', N'Reims', N'', N'51100', 85, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (49, 6, CAST(N'1996-09-03T00:00:00.000' AS DateTime), CAST(N'1996-10-01T00:00:00.000' AS DateTime), CAST(N'1996-09-11T00:00:00.000' AS DateTime), N'1', 0, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (50, 5, CAST(N'1996-09-04T00:00:00.000' AS DateTime), CAST(N'1996-10-16T00:00:00.000' AS DateTime), CAST(N'1996-09-10T00:00:00.000' AS DateTime), N'1', 5, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (51, 6, CAST(N'1996-09-05T00:00:00.000' AS DateTime), CAST(N'1996-10-03T00:00:00.000' AS DateTime), CAST(N'1996-09-11T00:00:00.000' AS DateTime), N'1', 168, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (52, 4, CAST(N'1996-09-06T00:00:00.000' AS DateTime), CAST(N'1996-10-04T00:00:00.000' AS DateTime), CAST(N'1996-09-13T00:00:00.000' AS DateTime), N'1', 29, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (53, 2, CAST(N'1996-09-09T00:00:00.000' AS DateTime), CAST(N'1996-10-07T00:00:00.000' AS DateTime), CAST(N'1996-09-18T00:00:00.000' AS DateTime), N'1', 17, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (54, 8, CAST(N'1996-09-09T00:00:00.000' AS DateTime), CAST(N'1996-10-07T00:00:00.000' AS DateTime), CAST(N'1996-09-17T00:00:00.000' AS DateTime), N'1', 45, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (55, 4, CAST(N'1996-09-10T00:00:00.000' AS DateTime), CAST(N'1996-10-08T00:00:00.000' AS DateTime), CAST(N'1996-10-09T00:00:00.000' AS DateTime), N'1', 6, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (56, 7, CAST(N'1996-09-11T00:00:00.000' AS DateTime), CAST(N'1996-10-09T00:00:00.000' AS DateTime), CAST(N'1996-09-18T00:00:00.000' AS DateTime), N'1', 107, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (57, 1, CAST(N'1996-09-12T00:00:00.000' AS DateTime), CAST(N'1996-10-10T00:00:00.000' AS DateTime), CAST(N'1996-09-17T00:00:00.000' AS DateTime), N'1', 63, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (58, 8, CAST(N'1996-09-13T00:00:00.000' AS DateTime), CAST(N'1996-10-11T00:00:00.000' AS DateTime), CAST(N'1996-10-09T00:00:00.000' AS DateTime), N'1', 257, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (59, 1, CAST(N'1996-09-16T00:00:00.000' AS DateTime), CAST(N'1996-10-14T00:00:00.000' AS DateTime), CAST(N'1996-09-23T00:00:00.000' AS DateTime), N'1', 7, N'Romero y tomillo', N'Gran Via, 1', N'Madrid', N'', N'28001', 69, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (60, 2, CAST(N'1996-09-17T00:00:00.000' AS DateTime), CAST(N'1996-10-15T00:00:00.000' AS DateTime), CAST(N'1996-09-25T00:00:00.000' AS DateTime), N'1', 0, N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', 48, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (61, 7, CAST(N'1996-09-18T00:00:00.000' AS DateTime), CAST(N'1996-10-16T00:00:00.000' AS DateTime), CAST(N'1996-09-24T00:00:00.000' AS DateTime), N'1', 1, N'Ana Trujillo Emparedados y helados', N'Avda. de la Constitucion 2222', N'Mexico D.F.', N'', N'05021', 2, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (62, 3, CAST(N'1996-09-19T00:00:00.000' AS DateTime), CAST(N'1996-10-17T00:00:00.000' AS DateTime), CAST(N'1996-10-23T00:00:00.000' AS DateTime), N'1', 47, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (63, 8, CAST(N'1996-09-20T00:00:00.000' AS DateTime), CAST(N'1996-10-18T00:00:00.000' AS DateTime), CAST(N'1996-09-27T00:00:00.000' AS DateTime), N'1', 17, N'The Big Cheese', N'89 Jefferson Way\r\nSuite 2', N'Portland', N'OR', N'97201', 77, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (64, 1, CAST(N'1996-09-20T00:00:00.000' AS DateTime), CAST(N'1996-10-04T00:00:00.000' AS DateTime), CAST(N'1996-09-26T00:00:00.000' AS DateTime), N'1', 24, N'Du monde entier', N'67, rue des Cinquante Otages', N'Nantes', N'', N'44000', 18, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (65, 2, CAST(N'1996-09-23T00:00:00.000' AS DateTime), CAST(N'1996-10-21T00:00:00.000' AS DateTime), CAST(N'1996-10-03T00:00:00.000' AS DateTime), N'1', 40, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (66, 2, CAST(N'1996-09-24T00:00:00.000' AS DateTime), CAST(N'1996-10-22T00:00:00.000' AS DateTime), CAST(N'1996-10-04T00:00:00.000' AS DateTime), N'1', 1, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (67, 1, CAST(N'1996-09-25T00:00:00.000' AS DateTime), CAST(N'1996-10-23T00:00:00.000' AS DateTime), CAST(N'1996-10-04T00:00:00.000' AS DateTime), N'1', 74, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (68, 4, CAST(N'1996-09-26T00:00:00.000' AS DateTime), CAST(N'1996-10-24T00:00:00.000' AS DateTime), CAST(N'1996-10-03T00:00:00.000' AS DateTime), N'1', 41, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (69, 1, CAST(N'1996-09-27T00:00:00.000' AS DateTime), CAST(N'1996-10-25T00:00:00.000' AS DateTime), CAST(N'1996-10-08T00:00:00.000' AS DateTime), N'1', 150, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (70, 6, CAST(N'1996-09-30T00:00:00.000' AS DateTime), CAST(N'1996-10-28T00:00:00.000' AS DateTime), CAST(N'1996-10-10T00:00:00.000' AS DateTime), N'1', 12, N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', 48, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (71, 8, CAST(N'1996-10-01T00:00:00.000' AS DateTime), CAST(N'1996-10-29T00:00:00.000' AS DateTime), CAST(N'1996-10-04T00:00:00.000' AS DateTime), N'1', 4, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (72, 7, CAST(N'1996-10-02T00:00:00.000' AS DateTime), CAST(N'1996-10-30T00:00:00.000' AS DateTime), CAST(N'1996-10-11T00:00:00.000' AS DateTime), N'1', 64, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (73, 5, CAST(N'1996-10-03T00:00:00.000' AS DateTime), CAST(N'1996-10-17T00:00:00.000' AS DateTime), CAST(N'1996-10-18T00:00:00.000' AS DateTime), N'1', 34, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (74, 3, CAST(N'1996-10-03T00:00:00.000' AS DateTime), CAST(N'1996-10-31T00:00:00.000' AS DateTime), CAST(N'1996-10-11T00:00:00.000' AS DateTime), N'1', 3, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (75, 7, CAST(N'1996-10-04T00:00:00.000' AS DateTime), CAST(N'1996-11-01T00:00:00.000' AS DateTime), CAST(N'1996-10-23T00:00:00.000' AS DateTime), N'1', 0, N'Pericles Comidas clasicas', N'Calle Dr. Jorge Cash 321', N'Mexico D.F.', N'', N'05033', 58, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (76, 4, CAST(N'1996-10-07T00:00:00.000' AS DateTime), CAST(N'1996-11-04T00:00:00.000' AS DateTime), CAST(N'1996-10-14T00:00:00.000' AS DateTime), N'1', 4, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (77, 9, CAST(N'1996-10-08T00:00:00.000' AS DateTime), CAST(N'1996-11-05T00:00:00.000' AS DateTime), CAST(N'1996-10-10T00:00:00.000' AS DateTime), N'1', 214, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (78, 1, CAST(N'1996-10-09T00:00:00.000' AS DateTime), CAST(N'1996-10-23T00:00:00.000' AS DateTime), CAST(N'1996-10-14T00:00:00.000' AS DateTime), N'1', 64, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (79, 4, CAST(N'1996-10-10T00:00:00.000' AS DateTime), CAST(N'1996-11-07T00:00:00.000' AS DateTime), CAST(N'1996-10-14T00:00:00.000' AS DateTime), N'1', 77, N'Bolido Comidas preparadas', N'C/ Araquil, 67', N'Madrid', N'', N'28023', 8, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (80, 2, CAST(N'1996-10-11T00:00:00.000' AS DateTime), CAST(N'1996-11-08T00:00:00.000' AS DateTime), CAST(N'1996-10-14T00:00:00.000' AS DateTime), N'1', 63, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (81, 4, CAST(N'1996-10-14T00:00:00.000' AS DateTime), CAST(N'1996-11-11T00:00:00.000' AS DateTime), CAST(N'1996-10-17T00:00:00.000' AS DateTime), N'1', 87, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', N'', N'1675', 28, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (82, 4, CAST(N'1996-10-15T00:00:00.000' AS DateTime), CAST(N'1996-11-26T00:00:00.000' AS DateTime), CAST(N'1996-10-23T00:00:00.000' AS DateTime), N'1', 191, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (83, 3, CAST(N'1996-10-16T00:00:00.000' AS DateTime), CAST(N'1996-11-13T00:00:00.000' AS DateTime), CAST(N'1996-10-28T00:00:00.000' AS DateTime), N'1', 12, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (84, 9, CAST(N'1996-10-16T00:00:00.000' AS DateTime), CAST(N'1996-11-27T00:00:00.000' AS DateTime), CAST(N'1996-10-21T00:00:00.000' AS DateTime), N'1', 10, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (85, 3, CAST(N'1996-10-17T00:00:00.000' AS DateTime), CAST(N'1996-11-28T00:00:00.000' AS DateTime), CAST(N'1996-10-21T00:00:00.000' AS DateTime), N'1', 52, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (86, 5, CAST(N'1996-10-18T00:00:00.000' AS DateTime), CAST(N'1996-11-15T00:00:00.000' AS DateTime), CAST(N'1996-10-25T00:00:00.000' AS DateTime), N'1', 0, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (87, 8, CAST(N'1996-10-21T00:00:00.000' AS DateTime), CAST(N'1996-11-18T00:00:00.000' AS DateTime), CAST(N'1996-10-28T00:00:00.000' AS DateTime), N'1', 8, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (88, 7, CAST(N'1996-10-22T00:00:00.000' AS DateTime), CAST(N'1996-11-19T00:00:00.000' AS DateTime), CAST(N'1996-10-24T00:00:00.000' AS DateTime), N'1', 42, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (89, 7, CAST(N'1996-10-23T00:00:00.000' AS DateTime), CAST(N'1996-11-20T00:00:00.000' AS DateTime), CAST(N'1996-10-25T00:00:00.000' AS DateTime), N'1', 15, N'Princesa Isabel Vinhos', N'Estrada da saúde n. 58', N'Lisboa', N'', N'1756', 60, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (90, 4, CAST(N'1996-10-24T00:00:00.000' AS DateTime), CAST(N'1996-11-21T00:00:00.000' AS DateTime), CAST(N'1996-10-29T00:00:00.000' AS DateTime), N'1', 108, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (91, 4, CAST(N'1996-10-25T00:00:00.000' AS DateTime), CAST(N'1996-11-22T00:00:00.000' AS DateTime), CAST(N'1996-10-29T00:00:00.000' AS DateTime), N'1', 84, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (92, 2, CAST(N'1996-10-28T00:00:00.000' AS DateTime), CAST(N'1996-11-25T00:00:00.000' AS DateTime), CAST(N'1996-11-04T00:00:00.000' AS DateTime), N'1', 15, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (93, 1, CAST(N'1996-10-29T00:00:00.000' AS DateTime), CAST(N'1996-11-26T00:00:00.000' AS DateTime), CAST(N'1996-11-08T00:00:00.000' AS DateTime), N'1', 166, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (94, 7, CAST(N'1996-10-29T00:00:00.000' AS DateTime), CAST(N'1996-11-26T00:00:00.000' AS DateTime), CAST(N'1996-11-05T00:00:00.000' AS DateTime), N'1', 26, N'Simons bistro', N'Vinbæltet 34', N'København', N'', N'1734', 73, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (95, 4, CAST(N'1996-10-30T00:00:00.000' AS DateTime), CAST(N'1996-11-13T00:00:00.000' AS DateTime), CAST(N'1996-11-04T00:00:00.000' AS DateTime), N'1', 54, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (96, 4, CAST(N'1996-10-31T00:00:00.000' AS DateTime), CAST(N'1996-11-28T00:00:00.000' AS DateTime), CAST(N'1996-11-06T00:00:00.000' AS DateTime), N'1', 110, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (97, 4, CAST(N'1996-11-01T00:00:00.000' AS DateTime), CAST(N'1996-11-29T00:00:00.000' AS DateTime), CAST(N'1996-11-05T00:00:00.000' AS DateTime), N'1', 23, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (98, 2, CAST(N'1996-11-04T00:00:00.000' AS DateTime), CAST(N'1996-12-02T00:00:00.000' AS DateTime), CAST(N'1996-11-11T00:00:00.000' AS DateTime), N'1', 249, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (99, 3, CAST(N'1996-11-05T00:00:00.000' AS DateTime), CAST(N'1996-12-17T00:00:00.000' AS DateTime), CAST(N'1996-11-08T00:00:00.000' AS DateTime), N'1', 142, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (100, 4, CAST(N'1996-11-06T00:00:00.000' AS DateTime), CAST(N'1996-12-04T00:00:00.000' AS DateTime), CAST(N'1996-11-08T00:00:00.000' AS DateTime), N'1', 3, N'Familia Arquibaldo', N'Rua Oros, 92', N'São Paulo', N'SP', N'05442-030', 21, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (101, 4, CAST(N'1996-11-07T00:00:00.000' AS DateTime), CAST(N'1996-12-05T00:00:00.000' AS DateTime), CAST(N'1996-11-15T00:00:00.000' AS DateTime), N'1', 0, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (102, 7, CAST(N'1996-11-08T00:00:00.000' AS DateTime), CAST(N'1996-12-06T00:00:00.000' AS DateTime), CAST(N'1996-11-15T00:00:00.000' AS DateTime), N'1', 8, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (103, 6, CAST(N'1996-11-11T00:00:00.000' AS DateTime), CAST(N'1996-12-09T00:00:00.000' AS DateTime), CAST(N'1996-12-03T00:00:00.000' AS DateTime), N'1', 64, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (104, 1, CAST(N'1996-11-11T00:00:00.000' AS DateTime), CAST(N'1996-12-09T00:00:00.000' AS DateTime), CAST(N'1996-11-20T00:00:00.000' AS DateTime), N'1', 162, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (105, 3, CAST(N'1996-11-12T00:00:00.000' AS DateTime), CAST(N'1996-11-26T00:00:00.000' AS DateTime), CAST(N'1996-11-18T00:00:00.000' AS DateTime), N'1', 1, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', N'', N'1675', 28, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (106, 7, CAST(N'1996-11-13T00:00:00.000' AS DateTime), CAST(N'1996-12-11T00:00:00.000' AS DateTime), CAST(N'1996-11-25T00:00:00.000' AS DateTime), N'1', 360, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (107, 8, CAST(N'1996-11-14T00:00:00.000' AS DateTime), CAST(N'1996-12-12T00:00:00.000' AS DateTime), CAST(N'1996-11-20T00:00:00.000' AS DateTime), N'1', 53, N'Pericles Comidas clasicas', N'Calle Dr. Jorge Cash 321', N'Mexico D.F.', N'', N'05033', 58, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (108, 6, CAST(N'1996-11-15T00:00:00.000' AS DateTime), CAST(N'1996-12-13T00:00:00.000' AS DateTime), CAST(N'1996-11-20T00:00:00.000' AS DateTime), N'1', 41, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (109, 6, CAST(N'1996-11-18T00:00:00.000' AS DateTime), CAST(N'1996-12-16T00:00:00.000' AS DateTime), CAST(N'1996-11-27T00:00:00.000' AS DateTime), N'1', 36, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (110, 1, CAST(N'1996-11-19T00:00:00.000' AS DateTime), CAST(N'1996-12-17T00:00:00.000' AS DateTime), CAST(N'1996-12-02T00:00:00.000' AS DateTime), N'1', 34, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (111, 5, CAST(N'1996-11-20T00:00:00.000' AS DateTime), CAST(N'1996-12-18T00:00:00.000' AS DateTime), CAST(N'1996-11-27T00:00:00.000' AS DateTime), N'1', 19, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (112, 5, CAST(N'1996-11-21T00:00:00.000' AS DateTime), CAST(N'1996-12-19T00:00:00.000' AS DateTime), CAST(N'1996-11-26T00:00:00.000' AS DateTime), N'1', 288, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (113, 4, CAST(N'1996-11-22T00:00:00.000' AS DateTime), CAST(N'1996-12-20T00:00:00.000' AS DateTime), CAST(N'1996-12-02T00:00:00.000' AS DateTime), N'1', 131, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (114, 1, CAST(N'1996-11-22T00:00:00.000' AS DateTime), CAST(N'1996-12-20T00:00:00.000' AS DateTime), CAST(N'1996-12-03T00:00:00.000' AS DateTime), N'1', 183, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (115, 3, CAST(N'1996-11-25T00:00:00.000' AS DateTime), CAST(N'1996-12-23T00:00:00.000' AS DateTime), CAST(N'1996-11-28T00:00:00.000' AS DateTime), N'1', 96, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (116, 4, CAST(N'1996-11-26T00:00:00.000' AS DateTime), CAST(N'1996-12-24T00:00:00.000' AS DateTime), CAST(N'1996-12-04T00:00:00.000' AS DateTime), N'1', 30, N'Drachenblut Delikatessen', N'Walserweg 21', N'Aachen', N'', N'52066', 17, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (117, 1, CAST(N'1996-11-26T00:00:00.000' AS DateTime), CAST(N'1997-01-07T00:00:00.000' AS DateTime), CAST(N'1996-12-04T00:00:00.000' AS DateTime), N'1', 71, N'Eastern Connection', N'35 King George', N'London', N'', N'WX3 6FW', 19, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (118, 3, CAST(N'1996-11-27T00:00:00.000' AS DateTime), CAST(N'1996-12-25T00:00:00.000' AS DateTime), CAST(N'1996-12-02T00:00:00.000' AS DateTime), N'1', 22, N'Antonio Moreno Taqueria', N'Mataderos  2312', N'Mexico D.F.', N'', N'05023', 3, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (119, 8, CAST(N'1996-11-28T00:00:00.000' AS DateTime), CAST(N'1997-01-09T00:00:00.000' AS DateTime), CAST(N'1996-12-30T00:00:00.000' AS DateTime), N'1', 10, N'Galeria del gastronomo', N'Rambla de Cataluña, 23', N'Barcelona', N'', N'8022', 29, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (120, 7, CAST(N'1996-11-28T00:00:00.000' AS DateTime), CAST(N'1996-12-26T00:00:00.000' AS DateTime), CAST(N'1996-12-02T00:00:00.000' AS DateTime), N'1', 13, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (121, 2, CAST(N'1996-11-29T00:00:00.000' AS DateTime), CAST(N'1996-12-27T00:00:00.000' AS DateTime), CAST(N'1996-12-02T00:00:00.000' AS DateTime), N'1', 101, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (122, 8, CAST(N'1996-12-02T00:00:00.000' AS DateTime), CAST(N'1996-12-30T00:00:00.000' AS DateTime), CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'1', 195, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (123, 6, CAST(N'1996-12-03T00:00:00.000' AS DateTime), CAST(N'1996-12-31T00:00:00.000' AS DateTime), CAST(N'1996-12-27T00:00:00.000' AS DateTime), N'1', 1, N'Chop-suey Chinese', N'Hauptstr. 31', N'Bern', N'', N'3012', 14, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (124, 1, CAST(N'1996-12-03T00:00:00.000' AS DateTime), CAST(N'1996-12-31T00:00:00.000' AS DateTime), CAST(N'1996-12-24T00:00:00.000' AS DateTime), N'1', 0, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (125, 5, CAST(N'1996-12-04T00:00:00.000' AS DateTime), CAST(N'1997-01-01T00:00:00.000' AS DateTime), CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'1', 890, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (126, 4, CAST(N'1996-12-05T00:00:00.000' AS DateTime), CAST(N'1997-01-02T00:00:00.000' AS DateTime), CAST(N'1996-12-11T00:00:00.000' AS DateTime), N'1', 124, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (127, 1, CAST(N'1996-12-05T00:00:00.000' AS DateTime), CAST(N'1997-01-02T00:00:00.000' AS DateTime), CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'1', 3, N'Wolski Zajazd', N'ul. Filtrowa 68', N'Warszawa', N'', N'01-012', 91, 20)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (128, 3, CAST(N'1996-12-06T00:00:00.000' AS DateTime), CAST(N'1997-01-03T00:00:00.000' AS DateTime), CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'1', 20, N'Hungry Coyote Import Store', N'City Center Plaza\r\n516 Main St.', N'Elgin', N'OR', N'97827', 36, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (129, 1, CAST(N'1996-12-09T00:00:00.000' AS DateTime), CAST(N'1997-01-06T00:00:00.000' AS DateTime), CAST(N'1996-12-13T00:00:00.000' AS DateTime), N'1', 20, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (130, 1, CAST(N'1996-12-09T00:00:00.000' AS DateTime), CAST(N'1997-01-06T00:00:00.000' AS DateTime), CAST(N'1996-12-13T00:00:00.000' AS DateTime), N'1', 22, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (131, 5, CAST(N'1996-12-10T00:00:00.000' AS DateTime), CAST(N'1997-01-07T00:00:00.000' AS DateTime), CAST(N'1996-12-19T00:00:00.000' AS DateTime), N'1', 5, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (132, 2, CAST(N'1996-12-11T00:00:00.000' AS DateTime), CAST(N'1997-01-08T00:00:00.000' AS DateTime), CAST(N'1996-12-13T00:00:00.000' AS DateTime), N'1', 45, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (133, 8, CAST(N'1996-12-12T00:00:00.000' AS DateTime), CAST(N'1997-01-09T00:00:00.000' AS DateTime), CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'1', 35, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (134, 3, CAST(N'1996-12-12T00:00:00.000' AS DateTime), CAST(N'1997-01-09T00:00:00.000' AS DateTime), CAST(N'1996-12-13T00:00:00.000' AS DateTime), N'1', 7, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (135, 4, CAST(N'1996-12-13T00:00:00.000' AS DateTime), CAST(N'1997-01-10T00:00:00.000' AS DateTime), CAST(N'1996-12-16T00:00:00.000' AS DateTime), N'1', 94, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (136, 8, CAST(N'1996-12-16T00:00:00.000' AS DateTime), CAST(N'1997-01-13T00:00:00.000' AS DateTime), CAST(N'1996-12-18T00:00:00.000' AS DateTime), N'1', 34, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (137, 3, CAST(N'1996-12-16T00:00:00.000' AS DateTime), CAST(N'1997-01-13T00:00:00.000' AS DateTime), CAST(N'1996-12-20T00:00:00.000' AS DateTime), N'1', 168, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (138, 1, CAST(N'1996-12-17T00:00:00.000' AS DateTime), CAST(N'1997-01-14T00:00:00.000' AS DateTime), CAST(N'1996-12-23T00:00:00.000' AS DateTime), N'1', 30, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (139, 9, CAST(N'1996-12-18T00:00:00.000' AS DateTime), CAST(N'1997-01-01T00:00:00.000' AS DateTime), CAST(N'1996-12-25T00:00:00.000' AS DateTime), N'1', 13, N'Familia Arquibaldo', N'Rua Oros, 92', N'São Paulo', N'SP', N'05442-030', 21, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (140, 1, CAST(N'1996-12-18T00:00:00.000' AS DateTime), CAST(N'1997-01-15T00:00:00.000' AS DateTime), CAST(N'1996-12-20T00:00:00.000' AS DateTime), N'1', 93, N'Sante Gourmet', N'Erling Skakkes gate 78', N'Stavern', N'', N'4110', 70, 19)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (141, 2, CAST(N'1996-12-19T00:00:00.000' AS DateTime), CAST(N'1997-01-16T00:00:00.000' AS DateTime), CAST(N'1996-12-20T00:00:00.000' AS DateTime), N'1', 34, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (142, 4, CAST(N'1996-12-20T00:00:00.000' AS DateTime), CAST(N'1997-01-17T00:00:00.000' AS DateTime), CAST(N'1996-12-24T00:00:00.000' AS DateTime), N'1', 47, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (143, 6, CAST(N'1996-12-23T00:00:00.000' AS DateTime), CAST(N'1997-01-20T00:00:00.000' AS DateTime), CAST(N'1996-12-26T00:00:00.000' AS DateTime), N'1', 126, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (144, 3, CAST(N'1996-12-23T00:00:00.000' AS DateTime), CAST(N'1997-01-20T00:00:00.000' AS DateTime), CAST(N'1996-12-31T00:00:00.000' AS DateTime), N'1', 5, N'Drachenblut Delikatessen', N'Walserweg 21', N'Aachen', N'', N'52066', 17, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (145, 2, CAST(N'1996-12-24T00:00:00.000' AS DateTime), CAST(N'1997-01-21T00:00:00.000' AS DateTime), CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'1', 122, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (146, 1, CAST(N'1996-12-25T00:00:00.000' AS DateTime), CAST(N'1997-01-22T00:00:00.000' AS DateTime), CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'1', 126, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (147, 1, CAST(N'1996-12-25T00:00:00.000' AS DateTime), CAST(N'1997-01-22T00:00:00.000' AS DateTime), CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'1', 30, N'Hungry Coyote Import Store', N'City Center Plaza\r\n516 Main St.', N'Elgin', N'OR', N'97827', 36, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (148, 6, CAST(N'1996-12-26T00:00:00.000' AS DateTime), CAST(N'1997-01-23T00:00:00.000' AS DateTime), CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'1', 184, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (149, 1, CAST(N'1996-12-27T00:00:00.000' AS DateTime), CAST(N'1997-01-10T00:00:00.000' AS DateTime), CAST(N'1997-01-06T00:00:00.000' AS DateTime), N'1', 135, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (150, 5, CAST(N'1996-12-27T00:00:00.000' AS DateTime), CAST(N'1997-01-24T00:00:00.000' AS DateTime), CAST(N'1997-01-02T00:00:00.000' AS DateTime), N'1', 60, N'Princesa Isabel Vinhos', N'Estrada da saúde n. 58', N'Lisboa', N'', N'1756', 60, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (151, 2, CAST(N'1996-12-30T00:00:00.000' AS DateTime), CAST(N'1997-01-27T00:00:00.000' AS DateTime), CAST(N'1997-01-09T00:00:00.000' AS DateTime), N'1', 89, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (152, 8, CAST(N'1996-12-31T00:00:00.000' AS DateTime), CAST(N'1997-01-14T00:00:00.000' AS DateTime), CAST(N'1997-01-08T00:00:00.000' AS DateTime), N'1', 27, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (153, 1, CAST(N'1997-01-01T00:00:00.000' AS DateTime), CAST(N'1997-01-29T00:00:00.000' AS DateTime), CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'1', 83, N'Eastern Connection', N'35 King George', N'London', N'', N'WX3 6FW', 19, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (154, 1, CAST(N'1997-01-01T00:00:00.000' AS DateTime), CAST(N'1997-01-29T00:00:00.000' AS DateTime), CAST(N'1997-01-10T00:00:00.000' AS DateTime), N'1', 12, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (155, 8, CAST(N'1997-01-02T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), CAST(N'1997-01-10T00:00:00.000' AS DateTime), N'1', 67, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (156, 4, CAST(N'1997-01-03T00:00:00.000' AS DateTime), CAST(N'1997-01-31T00:00:00.000' AS DateTime), CAST(N'1997-01-09T00:00:00.000' AS DateTime), N'1', 73, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (157, 2, CAST(N'1997-01-03T00:00:00.000' AS DateTime), CAST(N'1997-01-31T00:00:00.000' AS DateTime), CAST(N'1997-01-08T00:00:00.000' AS DateTime), N'1', 155, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (158, 1, CAST(N'1997-01-06T00:00:00.000' AS DateTime), CAST(N'1997-02-03T00:00:00.000' AS DateTime), CAST(N'1997-01-22T00:00:00.000' AS DateTime), N'1', 34, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (159, 7, CAST(N'1997-01-07T00:00:00.000' AS DateTime), CAST(N'1997-02-18T00:00:00.000' AS DateTime), CAST(N'1997-01-13T00:00:00.000' AS DateTime), N'1', 108, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (160, 2, CAST(N'1997-01-07T00:00:00.000' AS DateTime), CAST(N'1997-02-04T00:00:00.000' AS DateTime), CAST(N'1997-01-30T00:00:00.000' AS DateTime), N'1', 91, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (161, 8, CAST(N'1997-01-08T00:00:00.000' AS DateTime), CAST(N'1997-02-05T00:00:00.000' AS DateTime), CAST(N'1997-01-14T00:00:00.000' AS DateTime), N'1', 11, N'Folies gourmandes', N'184, chaussee de Tournai', N'Lille', N'', N'59000', 23, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (162, 3, CAST(N'1997-01-09T00:00:00.000' AS DateTime), CAST(N'1997-02-06T00:00:00.000' AS DateTime), CAST(N'1997-01-14T00:00:00.000' AS DateTime), N'1', 29, N'Oceano Atlantico Ltda.', N'Ing. Gustavo Moncada 8585\r\nPiso 20-A', N'Buenos Aires', N'', N'1010', 54, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (163, 3, CAST(N'1997-01-10T00:00:00.000' AS DateTime), CAST(N'1997-02-07T00:00:00.000' AS DateTime), CAST(N'1997-01-15T00:00:00.000' AS DateTime), N'1', 2, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (164, 9, CAST(N'1997-01-10T00:00:00.000' AS DateTime), CAST(N'1997-02-07T00:00:00.000' AS DateTime), CAST(N'1997-01-21T00:00:00.000' AS DateTime), N'1', 23, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (165, 8, CAST(N'1997-01-13T00:00:00.000' AS DateTime), CAST(N'1997-02-10T00:00:00.000' AS DateTime), CAST(N'1997-01-15T00:00:00.000' AS DateTime), N'1', 3, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (166, 3, CAST(N'1997-01-14T00:00:00.000' AS DateTime), CAST(N'1997-02-11T00:00:00.000' AS DateTime), CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'1', 95, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (167, 2, CAST(N'1997-01-14T00:00:00.000' AS DateTime), CAST(N'1997-02-11T00:00:00.000' AS DateTime), CAST(N'1997-01-17T00:00:00.000' AS DateTime), N'1', 21, N'Familia Arquibaldo', N'Rua Oros, 92', N'São Paulo', N'SP', N'05442-030', 21, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (168, 3, CAST(N'1997-01-15T00:00:00.000' AS DateTime), CAST(N'1997-02-12T00:00:00.000' AS DateTime), CAST(N'1997-01-24T00:00:00.000' AS DateTime), N'1', 0, N'Hungry Coyote Import Store', N'City Center Plaza\r\n516 Main St.', N'Elgin', N'OR', N'97827', 36, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (169, 8, CAST(N'1997-01-16T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'1', 22, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (170, 4, CAST(N'1997-01-16T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), CAST(N'1997-01-28T00:00:00.000' AS DateTime), N'1', 70, N'Simons bistro', N'Vinbæltet 34', N'København', N'', N'1734', 73, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (171, 4, CAST(N'1997-01-17T00:00:00.000' AS DateTime), CAST(N'1997-02-14T00:00:00.000' AS DateTime), CAST(N'1997-01-24T00:00:00.000' AS DateTime), N'1', 17, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (172, 4, CAST(N'1997-01-20T00:00:00.000' AS DateTime), CAST(N'1997-02-17T00:00:00.000' AS DateTime), CAST(N'1997-01-30T00:00:00.000' AS DateTime), N'1', 137, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (173, 3, CAST(N'1997-01-21T00:00:00.000' AS DateTime), CAST(N'1997-02-18T00:00:00.000' AS DateTime), CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'1', 44, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (174, 8, CAST(N'1997-01-21T00:00:00.000' AS DateTime), CAST(N'1997-03-04T00:00:00.000' AS DateTime), CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'1', 99, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (175, 2, CAST(N'1997-01-22T00:00:00.000' AS DateTime), CAST(N'1997-02-19T00:00:00.000' AS DateTime), CAST(N'1997-01-31T00:00:00.000' AS DateTime), N'1', 3, N'Franchi S.p.A.', N'Via Monte Bianco 34', N'Torino', N'', N'10100', 27, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (176, 6, CAST(N'1997-01-23T00:00:00.000' AS DateTime), CAST(N'1997-02-06T00:00:00.000' AS DateTime), CAST(N'1997-02-24T00:00:00.000' AS DateTime), N'1', 24, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (177, 7, CAST(N'1997-01-23T00:00:00.000' AS DateTime), CAST(N'1997-02-20T00:00:00.000' AS DateTime), CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'1', 370, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (178, 6, CAST(N'1997-01-24T00:00:00.000' AS DateTime), CAST(N'1997-02-21T00:00:00.000' AS DateTime), CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'1', 7, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (179, 4, CAST(N'1997-01-27T00:00:00.000' AS DateTime), CAST(N'1997-02-24T00:00:00.000' AS DateTime), CAST(N'1997-02-06T00:00:00.000' AS DateTime), N'1', 18, N'Galeria del gastronomo', N'Rambla de Cataluña, 23', N'Barcelona', N'', N'8022', 29, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (180, 4, CAST(N'1997-01-27T00:00:00.000' AS DateTime), CAST(N'1997-02-24T00:00:00.000' AS DateTime), CAST(N'1997-03-03T00:00:00.000' AS DateTime), N'1', 31, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (181, 7, CAST(N'1997-01-28T00:00:00.000' AS DateTime), CAST(N'1997-02-25T00:00:00.000' AS DateTime), CAST(N'1997-02-04T00:00:00.000' AS DateTime), N'1', 11, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (182, 3, CAST(N'1997-01-29T00:00:00.000' AS DateTime), CAST(N'1997-03-12T00:00:00.000' AS DateTime), CAST(N'1997-02-07T00:00:00.000' AS DateTime), N'1', 56, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (183, 4, CAST(N'1997-01-30T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), CAST(N'1997-02-03T00:00:00.000' AS DateTime), N'1', 458, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (184, 4, CAST(N'1997-01-30T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), CAST(N'1997-02-07T00:00:00.000' AS DateTime), N'1', 44, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (185, 3, CAST(N'1997-01-31T00:00:00.000' AS DateTime), CAST(N'1997-02-14T00:00:00.000' AS DateTime), CAST(N'1997-02-07T00:00:00.000' AS DateTime), N'1', 4, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (186, 3, CAST(N'1997-02-03T00:00:00.000' AS DateTime), CAST(N'1997-03-03T00:00:00.000' AS DateTime), CAST(N'1997-03-04T00:00:00.000' AS DateTime), N'1', 73, N'Princesa Isabel Vinhos', N'Estrada da saúde n. 58', N'Lisboa', N'', N'1756', 60, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (187, 3, CAST(N'1997-02-03T00:00:00.000' AS DateTime), CAST(N'1997-03-03T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), N'1', 17, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (188, 8, CAST(N'1997-02-04T00:00:00.000' AS DateTime), CAST(N'1997-03-18T00:00:00.000' AS DateTime), CAST(N'1997-02-07T00:00:00.000' AS DateTime), N'1', 9, N'Consolidated Holdings', N'Berkeley Gardens\r\n12  Brewery', N'London', N'', N'WX1 6LT', 16, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (189, 3, CAST(N'1997-02-05T00:00:00.000' AS DateTime), CAST(N'1997-03-05T00:00:00.000' AS DateTime), CAST(N'1997-02-11T00:00:00.000' AS DateTime), N'1', 156, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (190, 8, CAST(N'1997-02-05T00:00:00.000' AS DateTime), CAST(N'1997-03-05T00:00:00.000' AS DateTime), CAST(N'1997-02-12T00:00:00.000' AS DateTime), N'1', 19, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (191, 3, CAST(N'1997-02-06T00:00:00.000' AS DateTime), CAST(N'1997-03-06T00:00:00.000' AS DateTime), CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'1', 8, N'Toms Spezialitäten', N'Luisenstr. 48', N'Münster', N'', N'44087', 79, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (192, 6, CAST(N'1997-02-07T00:00:00.000' AS DateTime), CAST(N'1997-03-07T00:00:00.000' AS DateTime), CAST(N'1997-02-10T00:00:00.000' AS DateTime), N'1', 4, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (193, 4, CAST(N'1997-02-10T00:00:00.000' AS DateTime), CAST(N'1997-03-10T00:00:00.000' AS DateTime), CAST(N'1997-02-28T00:00:00.000' AS DateTime), N'1', 86, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (194, 3, CAST(N'1997-02-10T00:00:00.000' AS DateTime), CAST(N'1997-03-24T00:00:00.000' AS DateTime), CAST(N'1997-03-14T00:00:00.000' AS DateTime), N'1', 73, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (195, 3, CAST(N'1997-02-11T00:00:00.000' AS DateTime), CAST(N'1997-03-11T00:00:00.000' AS DateTime), CAST(N'1997-02-18T00:00:00.000' AS DateTime), N'1', 47, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (196, 8, CAST(N'1997-02-12T00:00:00.000' AS DateTime), CAST(N'1997-03-12T00:00:00.000' AS DateTime), CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'1', 13, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (197, 3, CAST(N'1997-02-12T00:00:00.000' AS DateTime), CAST(N'1997-03-12T00:00:00.000' AS DateTime), CAST(N'1997-02-21T00:00:00.000' AS DateTime), N'1', 3, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (198, 3, CAST(N'1997-02-13T00:00:00.000' AS DateTime), CAST(N'1997-03-13T00:00:00.000' AS DateTime), CAST(N'1997-02-20T00:00:00.000' AS DateTime), N'1', 9, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (199, 6, CAST(N'1997-02-14T00:00:00.000' AS DateTime), CAST(N'1997-03-14T00:00:00.000' AS DateTime), CAST(N'1997-02-19T00:00:00.000' AS DateTime), N'1', 14, N'Toms Spezialitäten', N'Luisenstr. 48', N'Münster', N'', N'44087', 79, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (200, 4, CAST(N'1997-02-14T00:00:00.000' AS DateTime), CAST(N'1997-03-14T00:00:00.000' AS DateTime), CAST(N'1997-03-07T00:00:00.000' AS DateTime), N'1', 68, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (201, 4, CAST(N'1997-02-17T00:00:00.000' AS DateTime), CAST(N'1997-03-17T00:00:00.000' AS DateTime), CAST(N'1997-02-24T00:00:00.000' AS DateTime), N'1', 38, N'Rancho grande', N'Av. del Libertador 900', N'Buenos Aires', N'', N'1010', 64, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (202, 3, CAST(N'1997-02-18T00:00:00.000' AS DateTime), CAST(N'1997-03-18T00:00:00.000' AS DateTime), CAST(N'1997-02-27T00:00:00.000' AS DateTime), N'1', 53, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (203, 8, CAST(N'1997-02-19T00:00:00.000' AS DateTime), CAST(N'1997-03-19T00:00:00.000' AS DateTime), CAST(N'1997-03-11T00:00:00.000' AS DateTime), N'1', 7, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (204, 4, CAST(N'1997-02-19T00:00:00.000' AS DateTime), CAST(N'1997-03-05T00:00:00.000' AS DateTime), CAST(N'1997-03-12T00:00:00.000' AS DateTime), N'1', 189, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (205, 8, CAST(N'1997-02-20T00:00:00.000' AS DateTime), CAST(N'1997-03-20T00:00:00.000' AS DateTime), CAST(N'1997-02-26T00:00:00.000' AS DateTime), N'1', 140, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (206, 1, CAST(N'1997-02-21T00:00:00.000' AS DateTime), CAST(N'1997-03-21T00:00:00.000' AS DateTime), CAST(N'1997-02-26T00:00:00.000' AS DateTime), N'1', 25, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (207, 4, CAST(N'1997-02-21T00:00:00.000' AS DateTime), CAST(N'1997-03-21T00:00:00.000' AS DateTime), CAST(N'1997-02-25T00:00:00.000' AS DateTime), N'1', 2, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (208, 8, CAST(N'1997-02-24T00:00:00.000' AS DateTime), CAST(N'1997-04-07T00:00:00.000' AS DateTime), CAST(N'1997-03-03T00:00:00.000' AS DateTime), N'1', 180, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (209, 8, CAST(N'1997-02-25T00:00:00.000' AS DateTime), CAST(N'1997-04-08T00:00:00.000' AS DateTime), CAST(N'1997-02-28T00:00:00.000' AS DateTime), N'1', 8, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (210, 2, CAST(N'1997-02-25T00:00:00.000' AS DateTime), CAST(N'1997-03-25T00:00:00.000' AS DateTime), CAST(N'1997-03-03T00:00:00.000' AS DateTime), N'1', 11, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (211, 7, CAST(N'1997-02-26T00:00:00.000' AS DateTime), CAST(N'1997-03-26T00:00:00.000' AS DateTime), CAST(N'1997-03-04T00:00:00.000' AS DateTime), N'1', 147, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (212, 4, CAST(N'1997-02-27T00:00:00.000' AS DateTime), CAST(N'1997-03-27T00:00:00.000' AS DateTime), CAST(N'1997-02-28T00:00:00.000' AS DateTime), N'1', 25, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (213, 8, CAST(N'1997-02-28T00:00:00.000' AS DateTime), CAST(N'1997-03-28T00:00:00.000' AS DateTime), CAST(N'1997-03-03T00:00:00.000' AS DateTime), N'1', 16, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (214, 1, CAST(N'1997-02-28T00:00:00.000' AS DateTime), CAST(N'1997-03-28T00:00:00.000' AS DateTime), CAST(N'1997-03-05T00:00:00.000' AS DateTime), N'1', 148, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (215, 2, CAST(N'1997-03-03T00:00:00.000' AS DateTime), CAST(N'1997-03-31T00:00:00.000' AS DateTime), CAST(N'1997-03-18T00:00:00.000' AS DateTime), N'1', 6, N'Consolidated Holdings', N'Berkeley Gardens\r\n12  Brewery', N'London', N'', N'WX1 6LT', 16, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (216, 5, CAST(N'1997-03-04T00:00:00.000' AS DateTime), CAST(N'1997-04-01T00:00:00.000' AS DateTime), CAST(N'1997-03-06T00:00:00.000' AS DateTime), N'1', 14, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (217, 4, CAST(N'1997-03-04T00:00:00.000' AS DateTime), CAST(N'1997-04-01T00:00:00.000' AS DateTime), CAST(N'1997-03-14T00:00:00.000' AS DateTime), N'1', 89, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', N'', N'1675', 28, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (218, 1, CAST(N'1997-03-05T00:00:00.000' AS DateTime), CAST(N'1997-04-02T00:00:00.000' AS DateTime), CAST(N'1997-03-14T00:00:00.000' AS DateTime), N'1', 145, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (219, 4, CAST(N'1997-03-06T00:00:00.000' AS DateTime), CAST(N'1997-04-03T00:00:00.000' AS DateTime), CAST(N'1997-03-13T00:00:00.000' AS DateTime), N'1', 11, N'Comercio Mineiro', N'Av. dos Lusiadas, 23', N'São Paulo', N'SP', N'05432-043', 15, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (220, 8, CAST(N'1997-03-06T00:00:00.000' AS DateTime), CAST(N'1997-04-03T00:00:00.000' AS DateTime), CAST(N'1997-03-11T00:00:00.000' AS DateTime), N'1', 4, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (221, 3, CAST(N'1997-03-07T00:00:00.000' AS DateTime), CAST(N'1997-04-04T00:00:00.000' AS DateTime), CAST(N'1997-03-12T00:00:00.000' AS DateTime), N'1', 44, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (222, 1, CAST(N'1997-03-10T00:00:00.000' AS DateTime), CAST(N'1997-04-07T00:00:00.000' AS DateTime), CAST(N'1997-03-14T00:00:00.000' AS DateTime), N'1', 60, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (223, 4, CAST(N'1997-03-11T00:00:00.000' AS DateTime), CAST(N'1997-04-08T00:00:00.000' AS DateTime), CAST(N'1997-03-14T00:00:00.000' AS DateTime), N'1', 64, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (224, 2, CAST(N'1997-03-11T00:00:00.000' AS DateTime), CAST(N'1997-04-08T00:00:00.000' AS DateTime), CAST(N'1997-03-18T00:00:00.000' AS DateTime), N'1', 45, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (225, 8, CAST(N'1997-03-12T00:00:00.000' AS DateTime), CAST(N'1997-04-09T00:00:00.000' AS DateTime), CAST(N'1997-03-19T00:00:00.000' AS DateTime), N'1', 4, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (226, 1, CAST(N'1997-03-13T00:00:00.000' AS DateTime), CAST(N'1997-03-27T00:00:00.000' AS DateTime), CAST(N'1997-03-21T00:00:00.000' AS DateTime), N'1', 16, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (227, 5, CAST(N'1997-03-13T00:00:00.000' AS DateTime), CAST(N'1997-04-10T00:00:00.000' AS DateTime), CAST(N'1997-03-21T00:00:00.000' AS DateTime), N'1', 83, N'Pericles Comidas clasicas', N'Calle Dr. Jorge Cash 321', N'Mexico D.F.', N'', N'05033', 58, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (228, 9, CAST(N'1997-03-14T00:00:00.000' AS DateTime), CAST(N'1997-04-11T00:00:00.000' AS DateTime), CAST(N'1997-04-04T00:00:00.000' AS DateTime), N'1', 68, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (229, 8, CAST(N'1997-03-17T00:00:00.000' AS DateTime), CAST(N'1997-04-14T00:00:00.000' AS DateTime), CAST(N'1997-03-24T00:00:00.000' AS DateTime), N'1', 4, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (230, 5, CAST(N'1997-03-17T00:00:00.000' AS DateTime), CAST(N'1997-04-14T00:00:00.000' AS DateTime), CAST(N'1997-03-25T00:00:00.000' AS DateTime), N'1', 13, N'Princesa Isabel Vinhos', N'Estrada da saúde n. 58', N'Lisboa', N'', N'1756', 60, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (231, 2, CAST(N'1997-03-18T00:00:00.000' AS DateTime), CAST(N'1997-04-01T00:00:00.000' AS DateTime), CAST(N'1997-03-26T00:00:00.000' AS DateTime), N'1', 4, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (232, 3, CAST(N'1997-03-19T00:00:00.000' AS DateTime), CAST(N'1997-04-16T00:00:00.000' AS DateTime), CAST(N'1997-03-21T00:00:00.000' AS DateTime), N'1', 708, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (233, 6, CAST(N'1997-03-20T00:00:00.000' AS DateTime), CAST(N'1997-04-17T00:00:00.000' AS DateTime), CAST(N'1997-03-24T00:00:00.000' AS DateTime), N'1', 1, N'Folies gourmandes', N'184, chaussee de Tournai', N'Lille', N'', N'59000', 23, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (234, 8, CAST(N'1997-03-20T00:00:00.000' AS DateTime), CAST(N'1997-04-17T00:00:00.000' AS DateTime), CAST(N'1997-03-25T00:00:00.000' AS DateTime), N'1', 64, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (235, 1, CAST(N'1997-03-21T00:00:00.000' AS DateTime), CAST(N'1997-04-18T00:00:00.000' AS DateTime), CAST(N'1997-04-10T00:00:00.000' AS DateTime), N'1', 7, N'Lazy K Kountry Store', N'12 Orchestra Terrace', N'Walla Walla', N'WA', N'99362', 43, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (236, 7, CAST(N'1997-03-24T00:00:00.000' AS DateTime), CAST(N'1997-04-21T00:00:00.000' AS DateTime), CAST(N'1997-04-25T00:00:00.000' AS DateTime), N'1', 15, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (237, 3, CAST(N'1997-03-24T00:00:00.000' AS DateTime), CAST(N'1997-04-21T00:00:00.000' AS DateTime), CAST(N'1997-04-01T00:00:00.000' AS DateTime), N'1', 6, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (238, 4, CAST(N'1997-03-25T00:00:00.000' AS DateTime), CAST(N'1997-04-08T00:00:00.000' AS DateTime), CAST(N'1997-03-31T00:00:00.000' AS DateTime), N'1', 64, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (239, 1, CAST(N'1997-03-26T00:00:00.000' AS DateTime), CAST(N'1997-04-23T00:00:00.000' AS DateTime), CAST(N'1997-04-02T00:00:00.000' AS DateTime), N'1', 30, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (240, 2, CAST(N'1997-03-26T00:00:00.000' AS DateTime), CAST(N'1997-04-23T00:00:00.000' AS DateTime), CAST(N'1997-03-28T00:00:00.000' AS DateTime), N'1', 71, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (241, 8, CAST(N'1997-03-27T00:00:00.000' AS DateTime), CAST(N'1997-04-24T00:00:00.000' AS DateTime), CAST(N'1997-04-02T00:00:00.000' AS DateTime), N'1', 4, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (242, 6, CAST(N'1997-03-28T00:00:00.000' AS DateTime), CAST(N'1997-04-25T00:00:00.000' AS DateTime), CAST(N'1997-04-09T00:00:00.000' AS DateTime), N'1', 5, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (243, 7, CAST(N'1997-03-31T00:00:00.000' AS DateTime), CAST(N'1997-04-28T00:00:00.000' AS DateTime), CAST(N'1997-04-03T00:00:00.000' AS DateTime), N'1', 210, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (244, 8, CAST(N'1997-03-31T00:00:00.000' AS DateTime), CAST(N'1997-04-28T00:00:00.000' AS DateTime), CAST(N'1997-04-08T00:00:00.000' AS DateTime), N'1', 16, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', N'', N'1675', 28, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (245, 3, CAST(N'1997-04-01T00:00:00.000' AS DateTime), CAST(N'1997-04-29T00:00:00.000' AS DateTime), CAST(N'1997-04-11T00:00:00.000' AS DateTime), N'1', 62, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (246, 4, CAST(N'1997-04-02T00:00:00.000' AS DateTime), CAST(N'1997-04-30T00:00:00.000' AS DateTime), CAST(N'1997-04-10T00:00:00.000' AS DateTime), N'1', 10, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (247, 4, CAST(N'1997-04-02T00:00:00.000' AS DateTime), CAST(N'1997-04-30T00:00:00.000' AS DateTime), CAST(N'1997-04-09T00:00:00.000' AS DateTime), N'1', 65, N'Comercio Mineiro', N'Av. dos Lusiadas, 23', N'São Paulo', N'SP', N'05432-043', 15, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (248, 3, CAST(N'1997-04-03T00:00:00.000' AS DateTime), CAST(N'1997-05-01T00:00:00.000' AS DateTime), CAST(N'1997-04-11T00:00:00.000' AS DateTime), N'1', 4, N'Laughing Bacchus Wine Cellars', N'2319 Elm St.', N'Vancouver', N'BC', N'V3F 2K1', 42, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (249, 7, CAST(N'1997-04-04T00:00:00.000' AS DateTime), CAST(N'1997-05-02T00:00:00.000' AS DateTime), CAST(N'1997-04-07T00:00:00.000' AS DateTime), N'1', 46, N'Tradição Hipermercados', N'Av. Inês de Castro, 414', N'São Paulo', N'SP', N'05634-030', 81, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (250, 7, CAST(N'1997-04-04T00:00:00.000' AS DateTime), CAST(N'1997-05-02T00:00:00.000' AS DateTime), CAST(N'1997-04-07T00:00:00.000' AS DateTime), N'1', 36, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (251, 8, CAST(N'1997-04-07T00:00:00.000' AS DateTime), CAST(N'1997-05-05T00:00:00.000' AS DateTime), CAST(N'1997-04-11T00:00:00.000' AS DateTime), N'1', 29, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (252, 4, CAST(N'1997-04-08T00:00:00.000' AS DateTime), CAST(N'1997-05-06T00:00:00.000' AS DateTime), CAST(N'1997-04-16T00:00:00.000' AS DateTime), N'1', 102, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (253, 6, CAST(N'1997-04-09T00:00:00.000' AS DateTime), CAST(N'1997-05-07T00:00:00.000' AS DateTime), CAST(N'1997-04-17T00:00:00.000' AS DateTime), N'1', 42, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (254, 9, CAST(N'1997-04-09T00:00:00.000' AS DateTime), CAST(N'1997-05-07T00:00:00.000' AS DateTime), CAST(N'1997-04-16T00:00:00.000' AS DateTime), N'1', 8, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', N'', N'68306', 6, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (255, 2, CAST(N'1997-04-10T00:00:00.000' AS DateTime), CAST(N'1997-05-08T00:00:00.000' AS DateTime), CAST(N'1997-04-29T00:00:00.000' AS DateTime), N'1', 69, N'Pericles Comidas clasicas', N'Calle Dr. Jorge Cash 321', N'Mexico D.F.', N'', N'05033', 58, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (256, 6, CAST(N'1997-04-11T00:00:00.000' AS DateTime), CAST(N'1997-05-09T00:00:00.000' AS DateTime), CAST(N'1997-04-16T00:00:00.000' AS DateTime), N'1', 16, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (257, 4, CAST(N'1997-04-11T00:00:00.000' AS DateTime), CAST(N'1997-05-09T00:00:00.000' AS DateTime), CAST(N'1997-04-18T00:00:00.000' AS DateTime), N'1', 59, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (258, 3, CAST(N'1997-04-14T00:00:00.000' AS DateTime), CAST(N'1997-05-12T00:00:00.000' AS DateTime), CAST(N'1997-04-21T00:00:00.000' AS DateTime), N'1', 7, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (259, 9, CAST(N'1997-04-15T00:00:00.000' AS DateTime), CAST(N'1997-05-13T00:00:00.000' AS DateTime), CAST(N'1997-05-02T00:00:00.000' AS DateTime), N'1', 21, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (260, 7, CAST(N'1997-04-15T00:00:00.000' AS DateTime), CAST(N'1997-05-13T00:00:00.000' AS DateTime), CAST(N'1997-04-22T00:00:00.000' AS DateTime), N'1', 47, N'Antonio Moreno Taqueria', N'Mataderos  2312', N'Mexico D.F.', N'', N'05023', 3, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (261, 1, CAST(N'1997-04-16T00:00:00.000' AS DateTime), CAST(N'1997-05-14T00:00:00.000' AS DateTime), CAST(N'1997-05-13T00:00:00.000' AS DateTime), N'1', 4, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (262, 4, CAST(N'1997-04-17T00:00:00.000' AS DateTime), CAST(N'1997-05-15T00:00:00.000' AS DateTime), CAST(N'1997-04-29T00:00:00.000' AS DateTime), N'1', 0, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', N'', N'68306', 6, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (263, 6, CAST(N'1997-04-18T00:00:00.000' AS DateTime), CAST(N'1997-05-16T00:00:00.000' AS DateTime), CAST(N'1997-04-28T00:00:00.000' AS DateTime), N'1', 367, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (264, 4, CAST(N'1997-04-18T00:00:00.000' AS DateTime), CAST(N'1997-05-16T00:00:00.000' AS DateTime), CAST(N'1997-04-21T00:00:00.000' AS DateTime), N'1', 350, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (265, 7, CAST(N'1997-04-21T00:00:00.000' AS DateTime), CAST(N'1997-05-19T00:00:00.000' AS DateTime), CAST(N'1997-04-24T00:00:00.000' AS DateTime), N'1', 3, N'Familia Arquibaldo', N'Rua Oros, 92', N'São Paulo', N'SP', N'05442-030', 21, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (266, 7, CAST(N'1997-04-22T00:00:00.000' AS DateTime), CAST(N'1997-06-03T00:00:00.000' AS DateTime), CAST(N'1997-04-28T00:00:00.000' AS DateTime), N'1', 105, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (267, 3, CAST(N'1997-04-22T00:00:00.000' AS DateTime), CAST(N'1997-05-20T00:00:00.000' AS DateTime), CAST(N'1997-05-16T00:00:00.000' AS DateTime), N'1', 789, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (268, 2, CAST(N'1997-04-23T00:00:00.000' AS DateTime), CAST(N'1997-05-07T00:00:00.000' AS DateTime), CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'1', 204, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (269, 2, CAST(N'1997-04-24T00:00:00.000' AS DateTime), CAST(N'1997-05-22T00:00:00.000' AS DateTime), CAST(N'1997-05-01T00:00:00.000' AS DateTime), N'1', 62, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (270, 3, CAST(N'1997-04-24T00:00:00.000' AS DateTime), CAST(N'1997-05-22T00:00:00.000' AS DateTime), CAST(N'1997-04-29T00:00:00.000' AS DateTime), N'1', 32, N'North/South', N'South House\r\n300 Queensbridge', N'London', N'', N'SW7 1RZ', 53, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (271, 4, CAST(N'1997-04-25T00:00:00.000' AS DateTime), CAST(N'1997-05-09T00:00:00.000' AS DateTime), CAST(N'1997-05-05T00:00:00.000' AS DateTime), N'1', 218, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (272, 6, CAST(N'1997-04-28T00:00:00.000' AS DateTime), CAST(N'1997-05-26T00:00:00.000' AS DateTime), CAST(N'1997-05-01T00:00:00.000' AS DateTime), N'1', 91, N'Chop-suey Chinese', N'Hauptstr. 31', N'Bern', N'', N'3012', 14, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (273, 7, CAST(N'1997-04-29T00:00:00.000' AS DateTime), CAST(N'1997-05-27T00:00:00.000' AS DateTime), CAST(N'1997-05-01T00:00:00.000' AS DateTime), N'1', 13, N'Sante Gourmet', N'Erling Skakkes gate 78', N'Stavern', N'', N'4110', 70, 19)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (274, 8, CAST(N'1997-04-29T00:00:00.000' AS DateTime), CAST(N'1997-05-27T00:00:00.000' AS DateTime), CAST(N'1997-05-02T00:00:00.000' AS DateTime), N'1', 17, N'Cactus Comidas para llevar', N'Cerrito 333', N'Buenos Aires', N'', N'1010', 12, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (275, 4, CAST(N'1997-04-30T00:00:00.000' AS DateTime), CAST(N'1997-05-28T00:00:00.000' AS DateTime), CAST(N'1997-05-06T00:00:00.000' AS DateTime), N'1', 45, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (276, 7, CAST(N'1997-05-01T00:00:00.000' AS DateTime), CAST(N'1997-05-29T00:00:00.000' AS DateTime), CAST(N'1997-05-30T00:00:00.000' AS DateTime), N'1', 77, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (277, 1, CAST(N'1997-05-01T00:00:00.000' AS DateTime), CAST(N'1997-05-29T00:00:00.000' AS DateTime), CAST(N'1997-05-07T00:00:00.000' AS DateTime), N'1', 244, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (278, 1, CAST(N'1997-05-02T00:00:00.000' AS DateTime), CAST(N'1997-05-30T00:00:00.000' AS DateTime), CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'1', 11, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (279, 4, CAST(N'1997-05-05T00:00:00.000' AS DateTime), CAST(N'1997-06-02T00:00:00.000' AS DateTime), CAST(N'1997-05-15T00:00:00.000' AS DateTime), N'1', 58, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (280, 7, CAST(N'1997-05-05T00:00:00.000' AS DateTime), CAST(N'1997-06-02T00:00:00.000' AS DateTime), CAST(N'1997-05-07T00:00:00.000' AS DateTime), N'1', 41, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (281, 6, CAST(N'1997-05-06T00:00:00.000' AS DateTime), CAST(N'1997-05-20T00:00:00.000' AS DateTime), CAST(N'1997-05-09T00:00:00.000' AS DateTime), N'1', 3, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (282, 5, CAST(N'1997-05-07T00:00:00.000' AS DateTime), CAST(N'1997-06-04T00:00:00.000' AS DateTime), CAST(N'1997-05-09T00:00:00.000' AS DateTime), N'1', 66, N'Maison Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'', N'B-1180', 50, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (283, 3, CAST(N'1997-05-08T00:00:00.000' AS DateTime), CAST(N'1997-06-05T00:00:00.000' AS DateTime), CAST(N'1997-05-12T00:00:00.000' AS DateTime), N'1', 339, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (284, 7, CAST(N'1997-05-08T00:00:00.000' AS DateTime), CAST(N'1997-06-05T00:00:00.000' AS DateTime), CAST(N'1997-05-19T00:00:00.000' AS DateTime), N'1', 8, N'Oceano Atlantico Ltda.', N'Ing. Gustavo Moncada 8585\r\nPiso 20-A', N'Buenos Aires', N'', N'1010', 54, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (285, 7, CAST(N'1997-05-09T00:00:00.000' AS DateTime), CAST(N'1997-06-06T00:00:00.000' AS DateTime), CAST(N'1997-05-12T00:00:00.000' AS DateTime), N'1', 74, N'Eastern Connection', N'35 King George', N'London', N'', N'WX3 6FW', 19, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (286, 8, CAST(N'1997-05-12T00:00:00.000' AS DateTime), CAST(N'1997-06-09T00:00:00.000' AS DateTime), CAST(N'1997-05-22T00:00:00.000' AS DateTime), N'1', 188, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (287, 8, CAST(N'1997-05-12T00:00:00.000' AS DateTime), CAST(N'1997-06-09T00:00:00.000' AS DateTime), CAST(N'1997-05-14T00:00:00.000' AS DateTime), N'1', 27, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (288, 4, CAST(N'1997-05-13T00:00:00.000' AS DateTime), CAST(N'1997-06-10T00:00:00.000' AS DateTime), CAST(N'1997-05-21T00:00:00.000' AS DateTime), N'1', 15, N'Antonio Moreno Taqueria', N'Mataderos  2312', N'Mexico D.F.', N'', N'05023', 3, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (289, 3, CAST(N'1997-05-14T00:00:00.000' AS DateTime), CAST(N'1997-06-11T00:00:00.000' AS DateTime), CAST(N'1997-06-06T00:00:00.000' AS DateTime), N'1', 58, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (290, 1, CAST(N'1997-05-14T00:00:00.000' AS DateTime), CAST(N'1997-05-28T00:00:00.000' AS DateTime), CAST(N'1997-05-19T00:00:00.000' AS DateTime), N'1', 78, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (291, 9, CAST(N'1997-05-15T00:00:00.000' AS DateTime), CAST(N'1997-06-12T00:00:00.000' AS DateTime), CAST(N'1997-05-16T00:00:00.000' AS DateTime), N'1', 4, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (292, 6, CAST(N'1997-05-16T00:00:00.000' AS DateTime), CAST(N'1997-06-13T00:00:00.000' AS DateTime), CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'1', 12, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (293, 3, CAST(N'1997-05-19T00:00:00.000' AS DateTime), CAST(N'1997-06-16T00:00:00.000' AS DateTime), CAST(N'1997-06-13T00:00:00.000' AS DateTime), N'1', 1007, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (294, 2, CAST(N'1997-05-19T00:00:00.000' AS DateTime), CAST(N'1997-06-16T00:00:00.000' AS DateTime), CAST(N'1997-05-29T00:00:00.000' AS DateTime), N'1', 68, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (295, 1, CAST(N'1997-05-20T00:00:00.000' AS DateTime), CAST(N'1997-06-17T00:00:00.000' AS DateTime), CAST(N'1997-05-26T00:00:00.000' AS DateTime), N'1', 10, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (296, 8, CAST(N'1997-05-21T00:00:00.000' AS DateTime), CAST(N'1997-06-18T00:00:00.000' AS DateTime), CAST(N'1997-05-23T00:00:00.000' AS DateTime), N'1', 48, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (297, 4, CAST(N'1997-05-21T00:00:00.000' AS DateTime), CAST(N'1997-06-18T00:00:00.000' AS DateTime), CAST(N'1997-05-30T00:00:00.000' AS DateTime), N'1', 24, N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', 48, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (298, 8, CAST(N'1997-05-22T00:00:00.000' AS DateTime), CAST(N'1997-06-19T00:00:00.000' AS DateTime), CAST(N'1997-06-26T00:00:00.000' AS DateTime), N'1', 11, N'Lazy K Kountry Store', N'12 Orchestra Terrace', N'Walla Walla', N'WA', N'99362', 43, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (299, 1, CAST(N'1997-05-23T00:00:00.000' AS DateTime), CAST(N'1997-06-20T00:00:00.000' AS DateTime), CAST(N'1997-05-27T00:00:00.000' AS DateTime), N'1', 194, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (300, 3, CAST(N'1997-05-23T00:00:00.000' AS DateTime), CAST(N'1997-06-20T00:00:00.000' AS DateTime), CAST(N'1997-06-02T00:00:00.000' AS DateTime), N'1', 178, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (301, 3, CAST(N'1997-05-26T00:00:00.000' AS DateTime), CAST(N'1997-06-23T00:00:00.000' AS DateTime), CAST(N'1997-06-02T00:00:00.000' AS DateTime), N'1', 1, N'Toms Spezialitäten', N'Luisenstr. 48', N'Münster', N'', N'44087', 79, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (302, 5, CAST(N'1997-05-27T00:00:00.000' AS DateTime), CAST(N'1997-06-10T00:00:00.000' AS DateTime), CAST(N'1997-05-30T00:00:00.000' AS DateTime), N'1', 171, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (303, 7, CAST(N'1997-05-28T00:00:00.000' AS DateTime), CAST(N'1997-06-25T00:00:00.000' AS DateTime), CAST(N'1997-06-06T00:00:00.000' AS DateTime), N'1', 4, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (304, 4, CAST(N'1997-05-28T00:00:00.000' AS DateTime), CAST(N'1997-07-09T00:00:00.000' AS DateTime), CAST(N'1997-06-06T00:00:00.000' AS DateTime), N'1', 72, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', N'', N'1675', 28, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (305, 2, CAST(N'1997-05-29T00:00:00.000' AS DateTime), CAST(N'1997-06-26T00:00:00.000' AS DateTime), CAST(N'1997-06-05T00:00:00.000' AS DateTime), N'1', 83, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (306, 2, CAST(N'1997-05-30T00:00:00.000' AS DateTime), CAST(N'1997-06-27T00:00:00.000' AS DateTime), CAST(N'1997-06-03T00:00:00.000' AS DateTime), N'1', 149, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (307, 4, CAST(N'1997-05-30T00:00:00.000' AS DateTime), CAST(N'1997-06-27T00:00:00.000' AS DateTime), CAST(N'1997-06-05T00:00:00.000' AS DateTime), N'1', 120, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (308, 6, CAST(N'1997-06-02T00:00:00.000' AS DateTime), CAST(N'1997-06-30T00:00:00.000' AS DateTime), CAST(N'1997-06-04T00:00:00.000' AS DateTime), N'1', 252, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (309, 2, CAST(N'1997-06-03T00:00:00.000' AS DateTime), CAST(N'1997-07-15T00:00:00.000' AS DateTime), CAST(N'1997-06-13T00:00:00.000' AS DateTime), N'1', 9, N'Simons bistro', N'Vinbæltet 34', N'København', N'', N'1734', 73, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (310, 9, CAST(N'1997-06-03T00:00:00.000' AS DateTime), CAST(N'1997-06-17T00:00:00.000' AS DateTime), CAST(N'1997-06-06T00:00:00.000' AS DateTime), N'1', 96, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (311, 1, CAST(N'1997-06-04T00:00:00.000' AS DateTime), CAST(N'1997-07-02T00:00:00.000' AS DateTime), CAST(N'1997-06-10T00:00:00.000' AS DateTime), N'1', 72, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (312, 6, CAST(N'1997-06-05T00:00:00.000' AS DateTime), CAST(N'1997-07-03T00:00:00.000' AS DateTime), CAST(N'1997-06-13T00:00:00.000' AS DateTime), N'1', 8, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (313, 8, CAST(N'1997-06-06T00:00:00.000' AS DateTime), CAST(N'1997-07-04T00:00:00.000' AS DateTime), CAST(N'1997-06-09T00:00:00.000' AS DateTime), N'1', 36, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (314, 2, CAST(N'1997-06-06T00:00:00.000' AS DateTime), CAST(N'1997-07-04T00:00:00.000' AS DateTime), CAST(N'1997-06-09T00:00:00.000' AS DateTime), N'1', 242, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (315, 1, CAST(N'1997-06-09T00:00:00.000' AS DateTime), CAST(N'1997-07-07T00:00:00.000' AS DateTime), CAST(N'1997-06-12T00:00:00.000' AS DateTime), N'1', 22, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (316, 2, CAST(N'1997-06-10T00:00:00.000' AS DateTime), CAST(N'1997-07-22T00:00:00.000' AS DateTime), CAST(N'1997-06-24T00:00:00.000' AS DateTime), N'1', 60, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (317, 4, CAST(N'1997-06-10T00:00:00.000' AS DateTime), CAST(N'1997-07-08T00:00:00.000' AS DateTime), CAST(N'1997-06-16T00:00:00.000' AS DateTime), N'1', 13, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (318, 8, CAST(N'1997-06-11T00:00:00.000' AS DateTime), CAST(N'1997-07-09T00:00:00.000' AS DateTime), CAST(N'1997-06-18T00:00:00.000' AS DateTime), N'1', 7, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (319, 9, CAST(N'1997-06-12T00:00:00.000' AS DateTime), CAST(N'1997-07-10T00:00:00.000' AS DateTime), CAST(N'1997-06-18T00:00:00.000' AS DateTime), N'1', 88, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (320, 1, CAST(N'1997-06-12T00:00:00.000' AS DateTime), CAST(N'1997-07-10T00:00:00.000' AS DateTime), CAST(N'1997-06-17T00:00:00.000' AS DateTime), N'1', 33, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (321, 3, CAST(N'1997-06-13T00:00:00.000' AS DateTime), CAST(N'1997-07-11T00:00:00.000' AS DateTime), CAST(N'1997-07-09T00:00:00.000' AS DateTime), N'1', 6, N'Galeria del gastronomo', N'Rambla de Cataluña, 23', N'Barcelona', N'', N'8022', 29, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (322, 5, CAST(N'1997-06-16T00:00:00.000' AS DateTime), CAST(N'1997-07-14T00:00:00.000' AS DateTime), CAST(N'1997-07-11T00:00:00.000' AS DateTime), N'1', 58, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (323, 3, CAST(N'1997-06-17T00:00:00.000' AS DateTime), CAST(N'1997-07-15T00:00:00.000' AS DateTime), CAST(N'1997-06-19T00:00:00.000' AS DateTime), N'1', 188, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (324, 8, CAST(N'1997-06-17T00:00:00.000' AS DateTime), CAST(N'1997-07-29T00:00:00.000' AS DateTime), CAST(N'1997-07-04T00:00:00.000' AS DateTime), N'1', 26, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (325, 3, CAST(N'1997-06-18T00:00:00.000' AS DateTime), CAST(N'1997-07-16T00:00:00.000' AS DateTime), CAST(N'1997-06-25T00:00:00.000' AS DateTime), N'1', 116, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (326, 7, CAST(N'1997-06-19T00:00:00.000' AS DateTime), CAST(N'1997-07-17T00:00:00.000' AS DateTime), CAST(N'1997-06-20T00:00:00.000' AS DateTime), N'1', 84, N'Antonio Moreno Taqueria', N'Mataderos  2312', N'Mexico D.F.', N'', N'05023', 3, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (327, 4, CAST(N'1997-06-19T00:00:00.000' AS DateTime), CAST(N'1997-07-17T00:00:00.000' AS DateTime), CAST(N'1997-06-30T00:00:00.000' AS DateTime), N'1', 37, N'Trails Head Gourmet Provisioners', N'722 DaVinci Blvd.', N'Kirkland', N'WA', N'98034', 82, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (328, 5, CAST(N'1997-06-20T00:00:00.000' AS DateTime), CAST(N'1997-07-04T00:00:00.000' AS DateTime), CAST(N'1997-06-30T00:00:00.000' AS DateTime), N'1', 127, N'Morgenstern Gesundkost', N'Heerstr. 22', N'Leipzig', N'', N'04179', 52, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (329, 3, CAST(N'1997-06-23T00:00:00.000' AS DateTime), CAST(N'1997-07-07T00:00:00.000' AS DateTime), CAST(N'1997-06-30T00:00:00.000' AS DateTime), N'1', 18, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (330, 9, CAST(N'1997-06-23T00:00:00.000' AS DateTime), CAST(N'1997-08-04T00:00:00.000' AS DateTime), CAST(N'1997-06-30T00:00:00.000' AS DateTime), N'1', 25, N'Trails Head Gourmet Provisioners', N'722 DaVinci Blvd.', N'Kirkland', N'WA', N'98034', 82, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (331, 4, CAST(N'1997-06-24T00:00:00.000' AS DateTime), CAST(N'1997-07-22T00:00:00.000' AS DateTime), CAST(N'1997-07-25T00:00:00.000' AS DateTime), N'1', 29, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (332, 1, CAST(N'1997-06-25T00:00:00.000' AS DateTime), CAST(N'1997-07-23T00:00:00.000' AS DateTime), CAST(N'1997-07-04T00:00:00.000' AS DateTime), N'1', 13, N'Lets Stop N Shop', N'87 Polk St.\r\nSuite 5', N'San Francisco', N'CA', N'94117', 45, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (333, 4, CAST(N'1997-06-26T00:00:00.000' AS DateTime), CAST(N'1997-07-24T00:00:00.000' AS DateTime), CAST(N'1997-07-01T00:00:00.000' AS DateTime), N'1', 75, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (334, 3, CAST(N'1997-06-26T00:00:00.000' AS DateTime), CAST(N'1997-07-24T00:00:00.000' AS DateTime), CAST(N'1997-07-02T00:00:00.000' AS DateTime), N'1', 3, N'Familia Arquibaldo', N'Rua Oros, 92', N'São Paulo', N'SP', N'05442-030', 21, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (335, 3, CAST(N'1997-06-27T00:00:00.000' AS DateTime), CAST(N'1997-07-25T00:00:00.000' AS DateTime), CAST(N'1997-07-14T00:00:00.000' AS DateTime), N'1', 27, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', N'', N'68306', 6, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (336, 2, CAST(N'1997-06-30T00:00:00.000' AS DateTime), CAST(N'1997-07-28T00:00:00.000' AS DateTime), CAST(N'1997-07-04T00:00:00.000' AS DateTime), N'1', 7, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (337, 4, CAST(N'1997-06-30T00:00:00.000' AS DateTime), CAST(N'1997-07-28T00:00:00.000' AS DateTime), CAST(N'1997-07-04T00:00:00.000' AS DateTime), N'1', 59, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (338, 7, CAST(N'1997-07-01T00:00:00.000' AS DateTime), CAST(N'1997-07-29T00:00:00.000' AS DateTime), CAST(N'1997-07-10T00:00:00.000' AS DateTime), N'1', 13, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (339, 9, CAST(N'1997-07-02T00:00:00.000' AS DateTime), CAST(N'1997-07-30T00:00:00.000' AS DateTime), CAST(N'1997-07-09T00:00:00.000' AS DateTime), N'1', 0, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (340, 1, CAST(N'1997-07-02T00:00:00.000' AS DateTime), CAST(N'1997-07-30T00:00:00.000' AS DateTime), CAST(N'1997-07-09T00:00:00.000' AS DateTime), N'1', 62, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (341, 2, CAST(N'1997-07-03T00:00:00.000' AS DateTime), CAST(N'1997-07-31T00:00:00.000' AS DateTime), CAST(N'1997-07-10T00:00:00.000' AS DateTime), N'1', 194, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (342, 8, CAST(N'1997-07-04T00:00:00.000' AS DateTime), CAST(N'1997-08-01T00:00:00.000' AS DateTime), CAST(N'1997-07-14T00:00:00.000' AS DateTime), N'1', 4, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (343, 4, CAST(N'1997-07-07T00:00:00.000' AS DateTime), CAST(N'1997-08-04T00:00:00.000' AS DateTime), CAST(N'1997-07-14T00:00:00.000' AS DateTime), N'1', 44, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (344, 1, CAST(N'1997-07-07T00:00:00.000' AS DateTime), CAST(N'1997-07-21T00:00:00.000' AS DateTime), CAST(N'1997-07-16T00:00:00.000' AS DateTime), N'1', 55, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (345, 3, CAST(N'1997-07-08T00:00:00.000' AS DateTime), CAST(N'1997-08-05T00:00:00.000' AS DateTime), CAST(N'1997-07-16T00:00:00.000' AS DateTime), N'1', 32, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (346, 7, CAST(N'1997-07-09T00:00:00.000' AS DateTime), CAST(N'1997-08-06T00:00:00.000' AS DateTime), CAST(N'1997-08-13T00:00:00.000' AS DateTime), N'1', 174, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (347, 3, CAST(N'1997-07-09T00:00:00.000' AS DateTime), CAST(N'1997-08-06T00:00:00.000' AS DateTime), CAST(N'1997-07-16T00:00:00.000' AS DateTime), N'1', 5, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (348, 2, CAST(N'1997-07-10T00:00:00.000' AS DateTime), CAST(N'1997-08-07T00:00:00.000' AS DateTime), CAST(N'1997-07-14T00:00:00.000' AS DateTime), N'1', 96, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (349, 8, CAST(N'1997-07-11T00:00:00.000' AS DateTime), CAST(N'1997-08-08T00:00:00.000' AS DateTime), CAST(N'1997-08-12T00:00:00.000' AS DateTime), N'1', 16, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (350, 7, CAST(N'1997-07-11T00:00:00.000' AS DateTime), CAST(N'1997-08-08T00:00:00.000' AS DateTime), CAST(N'1997-07-18T00:00:00.000' AS DateTime), N'1', 35, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (351, 1, CAST(N'1997-07-14T00:00:00.000' AS DateTime), CAST(N'1997-08-11T00:00:00.000' AS DateTime), CAST(N'1997-07-18T00:00:00.000' AS DateTime), N'1', 44, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (352, 6, CAST(N'1997-07-15T00:00:00.000' AS DateTime), CAST(N'1997-08-26T00:00:00.000' AS DateTime), CAST(N'1997-07-21T00:00:00.000' AS DateTime), N'1', 29, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (353, 4, CAST(N'1997-07-16T00:00:00.000' AS DateTime), CAST(N'1997-08-13T00:00:00.000' AS DateTime), CAST(N'1997-07-21T00:00:00.000' AS DateTime), N'1', 45, N'Hungry Coyote Import Store', N'City Center Plaza\r\n516 Main St.', N'Elgin', N'OR', N'97827', 36, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (354, 7, CAST(N'1997-07-16T00:00:00.000' AS DateTime), CAST(N'1997-08-27T00:00:00.000' AS DateTime), CAST(N'1997-07-22T00:00:00.000' AS DateTime), N'1', 58, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (355, 8, CAST(N'1997-07-17T00:00:00.000' AS DateTime), CAST(N'1997-08-14T00:00:00.000' AS DateTime), CAST(N'1997-07-22T00:00:00.000' AS DateTime), N'1', 2, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (356, 8, CAST(N'1997-07-18T00:00:00.000' AS DateTime), CAST(N'1997-08-15T00:00:00.000' AS DateTime), CAST(N'1997-08-08T00:00:00.000' AS DateTime), N'1', 48, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (357, 1, CAST(N'1997-07-18T00:00:00.000' AS DateTime), CAST(N'1997-08-15T00:00:00.000' AS DateTime), CAST(N'1997-07-29T00:00:00.000' AS DateTime), N'1', 7, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', N'', N'1675', 28, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (358, 1, CAST(N'1997-07-21T00:00:00.000' AS DateTime), CAST(N'1997-08-18T00:00:00.000' AS DateTime), CAST(N'1997-07-29T00:00:00.000' AS DateTime), N'1', 379, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (359, 4, CAST(N'1997-07-22T00:00:00.000' AS DateTime), CAST(N'1997-08-19T00:00:00.000' AS DateTime), CAST(N'1997-07-31T00:00:00.000' AS DateTime), N'1', 79, N'Tradição Hipermercados', N'Av. Inês de Castro, 414', N'São Paulo', N'SP', N'05634-030', 81, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (360, 5, CAST(N'1997-07-22T00:00:00.000' AS DateTime), CAST(N'1997-08-19T00:00:00.000' AS DateTime), CAST(N'1997-07-25T00:00:00.000' AS DateTime), N'1', 200, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (361, 4, CAST(N'1997-07-23T00:00:00.000' AS DateTime), CAST(N'1997-08-20T00:00:00.000' AS DateTime), CAST(N'1997-08-01T00:00:00.000' AS DateTime), N'1', 27, N'Toms Spezialitäten', N'Luisenstr. 48', N'Münster', N'', N'44087', 79, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (362, 7, CAST(N'1997-07-24T00:00:00.000' AS DateTime), CAST(N'1997-08-21T00:00:00.000' AS DateTime), CAST(N'1997-07-30T00:00:00.000' AS DateTime), N'1', 1, N'Du monde entier', N'67, rue des Cinquante Otages', N'Nantes', N'', N'44000', 18, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (363, 8, CAST(N'1997-07-25T00:00:00.000' AS DateTime), CAST(N'1997-08-22T00:00:00.000' AS DateTime), CAST(N'1997-08-06T00:00:00.000' AS DateTime), N'1', 26, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (364, 6, CAST(N'1997-07-25T00:00:00.000' AS DateTime), CAST(N'1997-08-22T00:00:00.000' AS DateTime), CAST(N'1997-08-01T00:00:00.000' AS DateTime), N'1', 80, N'Wolski Zajazd', N'ul. Filtrowa 68', N'Warszawa', N'', N'01-012', 91, 20)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (365, 1, CAST(N'1997-07-28T00:00:00.000' AS DateTime), CAST(N'1997-08-25T00:00:00.000' AS DateTime), CAST(N'1997-08-01T00:00:00.000' AS DateTime), N'1', 544, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (366, 4, CAST(N'1997-07-29T00:00:00.000' AS DateTime), CAST(N'1997-08-26T00:00:00.000' AS DateTime), CAST(N'1997-08-01T00:00:00.000' AS DateTime), N'1', 8, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (367, 8, CAST(N'1997-07-29T00:00:00.000' AS DateTime), CAST(N'1997-08-26T00:00:00.000' AS DateTime), CAST(N'1997-08-01T00:00:00.000' AS DateTime), N'1', 1, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', N'', N'68306', 6, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (368, 2, CAST(N'1997-07-30T00:00:00.000' AS DateTime), CAST(N'1997-08-27T00:00:00.000' AS DateTime), CAST(N'1997-08-06T00:00:00.000' AS DateTime), N'1', 0, N'Wilman Kala', N'Keskuskatu 45', N'Helsinki', N'', N'21240', 90, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (369, 1, CAST(N'1997-07-31T00:00:00.000' AS DateTime), CAST(N'1997-08-28T00:00:00.000' AS DateTime), CAST(N'1997-08-05T00:00:00.000' AS DateTime), N'1', 116, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (370, 4, CAST(N'1997-07-31T00:00:00.000' AS DateTime), CAST(N'1997-08-28T00:00:00.000' AS DateTime), CAST(N'1997-08-04T00:00:00.000' AS DateTime), N'1', 18, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (371, 1, CAST(N'1997-08-01T00:00:00.000' AS DateTime), CAST(N'1997-09-12T00:00:00.000' AS DateTime), CAST(N'1997-08-08T00:00:00.000' AS DateTime), N'1', 154, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (372, 3, CAST(N'1997-08-04T00:00:00.000' AS DateTime), CAST(N'1997-09-01T00:00:00.000' AS DateTime), CAST(N'1997-08-07T00:00:00.000' AS DateTime), N'1', 91, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (373, 2, CAST(N'1997-08-05T00:00:00.000' AS DateTime), CAST(N'1997-09-02T00:00:00.000' AS DateTime), CAST(N'1997-08-14T00:00:00.000' AS DateTime), N'1', 0, N'Laughing Bacchus Wine Cellars', N'2319 Elm St.', N'Vancouver', N'BC', N'V3F 2K1', 42, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (374, 4, CAST(N'1997-08-05T00:00:00.000' AS DateTime), CAST(N'1997-09-02T00:00:00.000' AS DateTime), CAST(N'1997-08-11T00:00:00.000' AS DateTime), N'1', 23, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (375, 4, CAST(N'1997-08-06T00:00:00.000' AS DateTime), CAST(N'1997-09-03T00:00:00.000' AS DateTime), CAST(N'1997-08-11T00:00:00.000' AS DateTime), N'1', 50, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (376, 8, CAST(N'1997-08-07T00:00:00.000' AS DateTime), CAST(N'1997-09-04T00:00:00.000' AS DateTime), CAST(N'1997-08-12T00:00:00.000' AS DateTime), N'1', 97, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (377, 4, CAST(N'1997-08-07T00:00:00.000' AS DateTime), CAST(N'1997-09-04T00:00:00.000' AS DateTime), CAST(N'1997-08-19T00:00:00.000' AS DateTime), N'1', 94, N'The Cracker Box', N'55 Grizzly Peak Rd.', N'Butte', N'MT', N'59801', 78, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (378, 3, CAST(N'1997-08-08T00:00:00.000' AS DateTime), CAST(N'1997-09-05T00:00:00.000' AS DateTime), CAST(N'1997-08-14T00:00:00.000' AS DateTime), N'1', 43, N'Ana Trujillo Emparedados y helados', N'Avda. de la Constitucion 2222', N'Mexico D.F.', N'', N'05021', 2, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (379, 1, CAST(N'1997-08-11T00:00:00.000' AS DateTime), CAST(N'1997-09-08T00:00:00.000' AS DateTime), CAST(N'1997-08-20T00:00:00.000' AS DateTime), N'1', 138, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (380, 8, CAST(N'1997-08-11T00:00:00.000' AS DateTime), CAST(N'1997-09-22T00:00:00.000' AS DateTime), CAST(N'1997-08-21T00:00:00.000' AS DateTime), N'1', 107, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (381, 4, CAST(N'1997-08-12T00:00:00.000' AS DateTime), CAST(N'1997-09-09T00:00:00.000' AS DateTime), CAST(N'1997-08-20T00:00:00.000' AS DateTime), N'1', 30, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (382, 4, CAST(N'1997-08-12T00:00:00.000' AS DateTime), CAST(N'1997-09-09T00:00:00.000' AS DateTime), CAST(N'1997-08-20T00:00:00.000' AS DateTime), N'1', 85, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (383, 1, CAST(N'1997-08-13T00:00:00.000' AS DateTime), CAST(N'1997-09-10T00:00:00.000' AS DateTime), CAST(N'1997-08-19T00:00:00.000' AS DateTime), N'1', 32, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (384, 8, CAST(N'1997-08-14T00:00:00.000' AS DateTime), CAST(N'1997-09-11T00:00:00.000' AS DateTime), CAST(N'1997-08-15T00:00:00.000' AS DateTime), N'1', 0, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (385, 8, CAST(N'1997-08-14T00:00:00.000' AS DateTime), CAST(N'1997-09-11T00:00:00.000' AS DateTime), CAST(N'1997-08-19T00:00:00.000' AS DateTime), N'1', 41, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (386, 7, CAST(N'1997-08-15T00:00:00.000' AS DateTime), CAST(N'1997-09-12T00:00:00.000' AS DateTime), CAST(N'1997-08-18T00:00:00.000' AS DateTime), N'1', 477, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (387, 4, CAST(N'1997-08-15T00:00:00.000' AS DateTime), CAST(N'1997-09-12T00:00:00.000' AS DateTime), CAST(N'1997-08-21T00:00:00.000' AS DateTime), N'1', 487, N'Folies gourmandes', N'184, chaussee de Tournai', N'Lille', N'', N'59000', 23, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (388, 8, CAST(N'1997-08-18T00:00:00.000' AS DateTime), CAST(N'1997-09-15T00:00:00.000' AS DateTime), CAST(N'1997-08-21T00:00:00.000' AS DateTime), N'1', 47, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (389, 4, CAST(N'1997-08-19T00:00:00.000' AS DateTime), CAST(N'1997-09-16T00:00:00.000' AS DateTime), CAST(N'1997-08-26T00:00:00.000' AS DateTime), N'1', 1, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (390, 6, CAST(N'1997-08-19T00:00:00.000' AS DateTime), CAST(N'1997-09-16T00:00:00.000' AS DateTime), CAST(N'1997-08-26T00:00:00.000' AS DateTime), N'1', 201, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (391, 3, CAST(N'1997-08-20T00:00:00.000' AS DateTime), CAST(N'1997-09-17T00:00:00.000' AS DateTime), CAST(N'1997-09-01T00:00:00.000' AS DateTime), N'1', 158, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (392, 7, CAST(N'1997-08-20T00:00:00.000' AS DateTime), CAST(N'1997-09-17T00:00:00.000' AS DateTime), CAST(N'1997-08-27T00:00:00.000' AS DateTime), N'1', 38, N'Sante Gourmet', N'Erling Skakkes gate 78', N'Stavern', N'', N'4110', 70, 19)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (393, 4, CAST(N'1997-08-21T00:00:00.000' AS DateTime), CAST(N'1997-09-18T00:00:00.000' AS DateTime), CAST(N'1997-08-28T00:00:00.000' AS DateTime), N'1', 23, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (394, 4, CAST(N'1997-08-22T00:00:00.000' AS DateTime), CAST(N'1997-09-19T00:00:00.000' AS DateTime), CAST(N'1997-08-26T00:00:00.000' AS DateTime), N'1', 179, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (395, 7, CAST(N'1997-08-22T00:00:00.000' AS DateTime), CAST(N'1997-09-19T00:00:00.000' AS DateTime), CAST(N'1997-09-05T00:00:00.000' AS DateTime), N'1', 41, N'Simons bistro', N'Vinbæltet 34', N'København', N'', N'1734', 73, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (396, 6, CAST(N'1997-08-25T00:00:00.000' AS DateTime), CAST(N'1997-09-22T00:00:00.000' AS DateTime), CAST(N'1997-09-02T00:00:00.000' AS DateTime), N'1', 29, N'Alfreds Futterkiste', N'Obere Str. 57', N'Berlin', N'', N'12209', 1, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (397, 3, CAST(N'1997-08-25T00:00:00.000' AS DateTime), CAST(N'1997-09-22T00:00:00.000' AS DateTime), CAST(N'1997-09-01T00:00:00.000' AS DateTime), N'1', 0, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (398, 4, CAST(N'1997-08-26T00:00:00.000' AS DateTime), CAST(N'1997-09-23T00:00:00.000' AS DateTime), CAST(N'1997-09-02T00:00:00.000' AS DateTime), N'1', 12, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (399, 9, CAST(N'1997-08-27T00:00:00.000' AS DateTime), CAST(N'1997-10-08T00:00:00.000' AS DateTime), CAST(N'1997-09-03T00:00:00.000' AS DateTime), N'1', 142, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (400, 4, CAST(N'1997-08-27T00:00:00.000' AS DateTime), CAST(N'1997-09-10T00:00:00.000' AS DateTime), CAST(N'1997-09-03T00:00:00.000' AS DateTime), N'1', 45, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (401, 5, CAST(N'1997-08-28T00:00:00.000' AS DateTime), CAST(N'1997-10-09T00:00:00.000' AS DateTime), CAST(N'1997-09-09T00:00:00.000' AS DateTime), N'1', 14, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (402, 5, CAST(N'1997-08-28T00:00:00.000' AS DateTime), CAST(N'1997-09-25T00:00:00.000' AS DateTime), CAST(N'1997-08-29T00:00:00.000' AS DateTime), N'1', 6, N'Maison Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'', N'B-1180', 50, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (403, 5, CAST(N'1997-08-29T00:00:00.000' AS DateTime), CAST(N'1997-09-26T00:00:00.000' AS DateTime), CAST(N'1997-09-03T00:00:00.000' AS DateTime), N'1', 176, N'Familia Arquibaldo', N'Rua Oros, 92', N'São Paulo', N'SP', N'05442-030', 21, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (404, 8, CAST(N'1997-09-01T00:00:00.000' AS DateTime), CAST(N'1997-09-29T00:00:00.000' AS DateTime), CAST(N'1997-09-11T00:00:00.000' AS DateTime), N'1', 20, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (405, 4, CAST(N'1997-09-01T00:00:00.000' AS DateTime), CAST(N'1997-09-29T00:00:00.000' AS DateTime), CAST(N'1997-09-08T00:00:00.000' AS DateTime), N'1', 7, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (406, 1, CAST(N'1997-09-02T00:00:00.000' AS DateTime), CAST(N'1997-09-30T00:00:00.000' AS DateTime), CAST(N'1997-09-19T00:00:00.000' AS DateTime), N'1', 93, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (407, 5, CAST(N'1997-09-02T00:00:00.000' AS DateTime), CAST(N'1997-09-30T00:00:00.000' AS DateTime), CAST(N'1997-09-11T00:00:00.000' AS DateTime), N'1', 55, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (408, 1, CAST(N'1997-09-03T00:00:00.000' AS DateTime), CAST(N'1997-10-01T00:00:00.000' AS DateTime), CAST(N'1997-09-11T00:00:00.000' AS DateTime), N'1', 4, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (409, 6, CAST(N'1997-09-04T00:00:00.000' AS DateTime), CAST(N'1997-10-02T00:00:00.000' AS DateTime), CAST(N'1997-09-10T00:00:00.000' AS DateTime), N'1', 57, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (410, 2, CAST(N'1997-09-04T00:00:00.000' AS DateTime), CAST(N'1997-10-02T00:00:00.000' AS DateTime), CAST(N'1997-09-15T00:00:00.000' AS DateTime), N'1', 352, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (411, 4, CAST(N'1997-09-05T00:00:00.000' AS DateTime), CAST(N'1997-10-03T00:00:00.000' AS DateTime), CAST(N'1997-09-08T00:00:00.000' AS DateTime), N'1', 364, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (412, 7, CAST(N'1997-09-05T00:00:00.000' AS DateTime), CAST(N'1997-10-03T00:00:00.000' AS DateTime), CAST(N'1997-09-10T00:00:00.000' AS DateTime), N'1', 105, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (413, 8, CAST(N'1997-09-08T00:00:00.000' AS DateTime), CAST(N'1997-10-06T00:00:00.000' AS DateTime), CAST(N'1997-10-15T00:00:00.000' AS DateTime), N'1', 111, N'Hungry Coyote Import Store', N'City Center Plaza\r\n516 Main St.', N'Elgin', N'OR', N'97827', 36, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (414, 7, CAST(N'1997-09-09T00:00:00.000' AS DateTime), CAST(N'1997-10-07T00:00:00.000' AS DateTime), CAST(N'1997-09-15T00:00:00.000' AS DateTime), N'1', 17, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (415, 3, CAST(N'1997-09-09T00:00:00.000' AS DateTime), CAST(N'1997-10-07T00:00:00.000' AS DateTime), CAST(N'1997-09-18T00:00:00.000' AS DateTime), N'1', 1, N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', 48, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (416, 2, CAST(N'1997-09-10T00:00:00.000' AS DateTime), CAST(N'1997-09-24T00:00:00.000' AS DateTime), CAST(N'1997-10-03T00:00:00.000' AS DateTime), N'1', 113, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (417, 1, CAST(N'1997-09-10T00:00:00.000' AS DateTime), CAST(N'1997-10-08T00:00:00.000' AS DateTime), CAST(N'1997-09-19T00:00:00.000' AS DateTime), N'1', 1, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', N'', N'1675', 28, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (418, 1, CAST(N'1997-09-11T00:00:00.000' AS DateTime), CAST(N'1997-10-09T00:00:00.000' AS DateTime), CAST(N'1997-09-17T00:00:00.000' AS DateTime), N'1', 26, N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', 48, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (419, 7, CAST(N'1997-09-12T00:00:00.000' AS DateTime), CAST(N'1997-10-10T00:00:00.000' AS DateTime), CAST(N'1997-09-22T00:00:00.000' AS DateTime), N'1', 232, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (420, 7, CAST(N'1997-09-12T00:00:00.000' AS DateTime), CAST(N'1997-10-10T00:00:00.000' AS DateTime), CAST(N'1997-09-19T00:00:00.000' AS DateTime), N'1', 78, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (421, 1, CAST(N'1997-09-15T00:00:00.000' AS DateTime), CAST(N'1997-10-13T00:00:00.000' AS DateTime), CAST(N'1997-09-23T00:00:00.000' AS DateTime), N'1', 47, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (422, 2, CAST(N'1997-09-15T00:00:00.000' AS DateTime), CAST(N'1997-10-13T00:00:00.000' AS DateTime), CAST(N'1997-09-22T00:00:00.000' AS DateTime), N'1', 24, N'Simons bistro', N'Vinbæltet 34', N'København', N'', N'1734', 73, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (423, 4, CAST(N'1997-09-16T00:00:00.000' AS DateTime), CAST(N'1997-10-14T00:00:00.000' AS DateTime), CAST(N'1997-09-18T00:00:00.000' AS DateTime), N'1', 203, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (424, 1, CAST(N'1997-09-17T00:00:00.000' AS DateTime), CAST(N'1997-10-15T00:00:00.000' AS DateTime), CAST(N'1997-09-24T00:00:00.000' AS DateTime), N'1', 30, N'France restauration', N'54, rue Royale', N'Nantes', N'', N'44000', 26, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (425, 9, CAST(N'1997-09-17T00:00:00.000' AS DateTime), CAST(N'1997-10-01T00:00:00.000' AS DateTime), CAST(N'1997-09-26T00:00:00.000' AS DateTime), N'1', 95, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (426, 2, CAST(N'1997-09-18T00:00:00.000' AS DateTime), CAST(N'1997-10-16T00:00:00.000' AS DateTime), CAST(N'1997-09-19T00:00:00.000' AS DateTime), N'1', 22, N'Wilman Kala', N'Keskuskatu 45', N'Helsinki', N'', N'21240', 90, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (427, 4, CAST(N'1997-09-18T00:00:00.000' AS DateTime), CAST(N'1997-10-16T00:00:00.000' AS DateTime), CAST(N'1997-09-30T00:00:00.000' AS DateTime), N'1', 0, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (428, 5, CAST(N'1997-09-19T00:00:00.000' AS DateTime), CAST(N'1997-10-17T00:00:00.000' AS DateTime), CAST(N'1997-09-23T00:00:00.000' AS DateTime), N'1', 31, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (429, 2, CAST(N'1997-09-22T00:00:00.000' AS DateTime), CAST(N'1997-10-20T00:00:00.000' AS DateTime), CAST(N'1997-09-29T00:00:00.000' AS DateTime), N'1', 2, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (430, 1, CAST(N'1997-09-22T00:00:00.000' AS DateTime), CAST(N'1997-10-20T00:00:00.000' AS DateTime), CAST(N'1997-09-26T00:00:00.000' AS DateTime), N'1', 4, N'Antonio Moreno Taqueria', N'Mataderos  2312', N'Mexico D.F.', N'', N'05023', 3, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (431, 7, CAST(N'1997-09-23T00:00:00.000' AS DateTime), CAST(N'1997-10-21T00:00:00.000' AS DateTime), CAST(N'1997-10-16T00:00:00.000' AS DateTime), N'1', 388, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (432, 8, CAST(N'1997-09-23T00:00:00.000' AS DateTime), CAST(N'1997-10-21T00:00:00.000' AS DateTime), CAST(N'1997-09-30T00:00:00.000' AS DateTime), N'1', 27, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (433, 1, CAST(N'1997-09-24T00:00:00.000' AS DateTime), CAST(N'1997-10-22T00:00:00.000' AS DateTime), CAST(N'1997-09-26T00:00:00.000' AS DateTime), N'1', 26, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (434, 3, CAST(N'1997-09-25T00:00:00.000' AS DateTime), CAST(N'1997-10-23T00:00:00.000' AS DateTime), CAST(N'1997-09-30T00:00:00.000' AS DateTime), N'1', 76, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (435, 3, CAST(N'1997-09-25T00:00:00.000' AS DateTime), CAST(N'1997-10-23T00:00:00.000' AS DateTime), CAST(N'1997-10-01T00:00:00.000' AS DateTime), N'1', 36, N'Antonio Moreno Taqueria', N'Mataderos  2312', N'Mexico D.F.', N'', N'05023', 3, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (436, 2, CAST(N'1997-09-26T00:00:00.000' AS DateTime), CAST(N'1997-10-24T00:00:00.000' AS DateTime), CAST(N'1997-10-01T00:00:00.000' AS DateTime), N'1', 4, N'Du monde entier', N'67, rue des Cinquante Otages', N'Nantes', N'', N'44000', 18, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (437, 3, CAST(N'1997-09-26T00:00:00.000' AS DateTime), CAST(N'1997-10-24T00:00:00.000' AS DateTime), CAST(N'1997-09-30T00:00:00.000' AS DateTime), N'1', 145, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (438, 4, CAST(N'1997-09-29T00:00:00.000' AS DateTime), CAST(N'1997-10-13T00:00:00.000' AS DateTime), CAST(N'1997-10-03T00:00:00.000' AS DateTime), N'1', 33, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (439, 2, CAST(N'1997-09-30T00:00:00.000' AS DateTime), CAST(N'1997-10-28T00:00:00.000' AS DateTime), CAST(N'1997-10-08T00:00:00.000' AS DateTime), N'1', 96, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (440, 9, CAST(N'1997-09-30T00:00:00.000' AS DateTime), CAST(N'1997-10-28T00:00:00.000' AS DateTime), CAST(N'1997-10-30T00:00:00.000' AS DateTime), N'1', 296, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (441, 4, CAST(N'1997-10-01T00:00:00.000' AS DateTime), CAST(N'1997-10-15T00:00:00.000' AS DateTime), CAST(N'1997-10-07T00:00:00.000' AS DateTime), N'1', 299, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (442, 1, CAST(N'1997-10-01T00:00:00.000' AS DateTime), CAST(N'1997-10-29T00:00:00.000' AS DateTime), CAST(N'1997-10-07T00:00:00.000' AS DateTime), N'1', 13, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (443, 1, CAST(N'1997-10-02T00:00:00.000' AS DateTime), CAST(N'1997-10-30T00:00:00.000' AS DateTime), CAST(N'1997-10-03T00:00:00.000' AS DateTime), N'1', 15, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (444, 2, CAST(N'1997-10-03T00:00:00.000' AS DateTime), CAST(N'1997-11-14T00:00:00.000' AS DateTime), CAST(N'1997-10-22T00:00:00.000' AS DateTime), N'1', 810, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (445, 4, CAST(N'1997-10-03T00:00:00.000' AS DateTime), CAST(N'1997-10-31T00:00:00.000' AS DateTime), CAST(N'1997-10-13T00:00:00.000' AS DateTime), N'1', 61, N'Alfreds Futterkiste', N'Obere Str. 57', N'Berlin', N'', N'12209', 1, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (446, 3, CAST(N'1997-10-06T00:00:00.000' AS DateTime), CAST(N'1997-10-20T00:00:00.000' AS DateTime), CAST(N'1997-10-10T00:00:00.000' AS DateTime), N'1', 139, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (447, 8, CAST(N'1997-10-06T00:00:00.000' AS DateTime), CAST(N'1997-11-03T00:00:00.000' AS DateTime), CAST(N'1997-10-09T00:00:00.000' AS DateTime), N'1', 398, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (448, 7, CAST(N'1997-10-07T00:00:00.000' AS DateTime), CAST(N'1997-11-18T00:00:00.000' AS DateTime), CAST(N'1997-10-14T00:00:00.000' AS DateTime), N'1', 16, N'Wilman Kala', N'Keskuskatu 45', N'Helsinki', N'', N'21240', 90, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (449, 8, CAST(N'1997-10-08T00:00:00.000' AS DateTime), CAST(N'1997-11-19T00:00:00.000' AS DateTime), CAST(N'1997-10-14T00:00:00.000' AS DateTime), N'1', 102, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (450, 3, CAST(N'1997-10-08T00:00:00.000' AS DateTime), CAST(N'1997-11-05T00:00:00.000' AS DateTime), CAST(N'1997-10-14T00:00:00.000' AS DateTime), N'1', 45, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (451, 4, CAST(N'1997-10-09T00:00:00.000' AS DateTime), CAST(N'1997-11-06T00:00:00.000' AS DateTime), CAST(N'1997-10-17T00:00:00.000' AS DateTime), N'1', 272, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (452, 3, CAST(N'1997-10-09T00:00:00.000' AS DateTime), CAST(N'1997-11-06T00:00:00.000' AS DateTime), CAST(N'1997-10-13T00:00:00.000' AS DateTime), N'1', 0, N'Morgenstern Gesundkost', N'Heerstr. 22', N'Leipzig', N'', N'04179', 52, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (453, 3, CAST(N'1997-10-10T00:00:00.000' AS DateTime), CAST(N'1997-11-07T00:00:00.000' AS DateTime), CAST(N'1997-10-16T00:00:00.000' AS DateTime), N'1', 65, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (454, 6, CAST(N'1997-10-13T00:00:00.000' AS DateTime), CAST(N'1997-10-27T00:00:00.000' AS DateTime), CAST(N'1997-10-15T00:00:00.000' AS DateTime), N'1', 220, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (455, 4, CAST(N'1997-10-13T00:00:00.000' AS DateTime), CAST(N'1997-11-24T00:00:00.000' AS DateTime), CAST(N'1997-10-21T00:00:00.000' AS DateTime), N'1', 23, N'Alfreds Futterkiste', N'Obere Str. 57', N'Berlin', N'', N'12209', 1, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (456, 6, CAST(N'1997-10-14T00:00:00.000' AS DateTime), CAST(N'1997-11-11T00:00:00.000' AS DateTime), CAST(N'1997-10-20T00:00:00.000' AS DateTime), N'1', 152, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (457, 6, CAST(N'1997-10-14T00:00:00.000' AS DateTime), CAST(N'1997-11-11T00:00:00.000' AS DateTime), CAST(N'1997-11-07T00:00:00.000' AS DateTime), N'1', 4, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (458, 9, CAST(N'1997-10-15T00:00:00.000' AS DateTime), CAST(N'1997-11-12T00:00:00.000' AS DateTime), CAST(N'1997-11-18T00:00:00.000' AS DateTime), N'1', 3, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (459, 8, CAST(N'1997-10-16T00:00:00.000' AS DateTime), CAST(N'1997-11-13T00:00:00.000' AS DateTime), CAST(N'1997-10-21T00:00:00.000' AS DateTime), N'1', 135, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (460, 4, CAST(N'1997-10-16T00:00:00.000' AS DateTime), CAST(N'1997-10-30T00:00:00.000' AS DateTime), CAST(N'1997-10-23T00:00:00.000' AS DateTime), N'1', 21, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (461, 6, CAST(N'1997-10-17T00:00:00.000' AS DateTime), CAST(N'1997-11-28T00:00:00.000' AS DateTime), CAST(N'1997-11-05T00:00:00.000' AS DateTime), N'1', 2, N'The Big Cheese', N'89 Jefferson Way\r\nSuite 2', N'Portland', N'OR', N'97201', 77, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (462, 1, CAST(N'1997-10-17T00:00:00.000' AS DateTime), CAST(N'1997-11-14T00:00:00.000' AS DateTime), CAST(N'1997-11-20T00:00:00.000' AS DateTime), N'1', 210, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (463, 1, CAST(N'1997-10-20T00:00:00.000' AS DateTime), CAST(N'1997-11-17T00:00:00.000' AS DateTime), CAST(N'1997-10-23T00:00:00.000' AS DateTime), N'1', 4, N'Franchi S.p.A.', N'Via Monte Bianco 34', N'Torino', N'', N'10100', 27, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (464, 5, CAST(N'1997-10-21T00:00:00.000' AS DateTime), CAST(N'1997-12-02T00:00:00.000' AS DateTime), CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'1', 52, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (465, 3, CAST(N'1997-10-21T00:00:00.000' AS DateTime), CAST(N'1997-11-18T00:00:00.000' AS DateTime), CAST(N'1997-10-31T00:00:00.000' AS DateTime), N'1', 89, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (466, 1, CAST(N'1997-10-22T00:00:00.000' AS DateTime), CAST(N'1997-11-19T00:00:00.000' AS DateTime), CAST(N'1997-10-24T00:00:00.000' AS DateTime), N'1', 167, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (467, 5, CAST(N'1997-10-22T00:00:00.000' AS DateTime), CAST(N'1997-11-19T00:00:00.000' AS DateTime), CAST(N'1997-10-27T00:00:00.000' AS DateTime), N'1', 24, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (468, 3, CAST(N'1997-10-23T00:00:00.000' AS DateTime), CAST(N'1997-11-06T00:00:00.000' AS DateTime), CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'1', 63, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (469, 4, CAST(N'1997-10-24T00:00:00.000' AS DateTime), CAST(N'1997-11-21T00:00:00.000' AS DateTime), CAST(N'1997-10-27T00:00:00.000' AS DateTime), N'1', 22, N'Rancho grande', N'Av. del Libertador 900', N'Buenos Aires', N'', N'1010', 64, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (470, 1, CAST(N'1997-10-24T00:00:00.000' AS DateTime), CAST(N'1997-11-21T00:00:00.000' AS DateTime), CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'1', 59, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (471, 1, CAST(N'1997-10-27T00:00:00.000' AS DateTime), CAST(N'1997-11-24T00:00:00.000' AS DateTime), CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'1', 170, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (472, 8, CAST(N'1997-10-27T00:00:00.000' AS DateTime), CAST(N'1997-11-24T00:00:00.000' AS DateTime), CAST(N'1997-11-05T00:00:00.000' AS DateTime), N'1', 51, N'Lets Stop N Shop', N'87 Polk St.\r\nSuite 5', N'San Francisco', N'CA', N'94117', 45, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (473, 8, CAST(N'1997-10-28T00:00:00.000' AS DateTime), CAST(N'1997-11-11T00:00:00.000' AS DateTime), CAST(N'1997-11-05T00:00:00.000' AS DateTime), N'1', 9, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (474, 5, CAST(N'1997-10-29T00:00:00.000' AS DateTime), CAST(N'1997-11-26T00:00:00.000' AS DateTime), CAST(N'1997-10-31T00:00:00.000' AS DateTime), N'1', 48, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (475, 8, CAST(N'1997-10-29T00:00:00.000' AS DateTime), CAST(N'1997-12-10T00:00:00.000' AS DateTime), CAST(N'1997-11-04T00:00:00.000' AS DateTime), N'1', 74, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (476, 3, CAST(N'1997-10-30T00:00:00.000' AS DateTime), CAST(N'1997-11-27T00:00:00.000' AS DateTime), CAST(N'1997-11-25T00:00:00.000' AS DateTime), N'1', 21, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (477, 8, CAST(N'1997-10-30T00:00:00.000' AS DateTime), CAST(N'1997-12-11T00:00:00.000' AS DateTime), CAST(N'1997-11-05T00:00:00.000' AS DateTime), N'1', 57, N'Mère Paillarde', N'43 rue St. Laurent', N'Montreal', N'Quebec', N'H1J 1C3', 51, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (478, 4, CAST(N'1997-10-31T00:00:00.000' AS DateTime), CAST(N'1997-11-28T00:00:00.000' AS DateTime), CAST(N'1997-11-05T00:00:00.000' AS DateTime), N'1', 10, N'Familia Arquibaldo', N'Rua Oros, 92', N'São Paulo', N'SP', N'05442-030', 21, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (479, 4, CAST(N'1997-11-03T00:00:00.000' AS DateTime), CAST(N'1997-11-17T00:00:00.000' AS DateTime), CAST(N'1997-12-05T00:00:00.000' AS DateTime), N'1', 16, N'Eastern Connection', N'35 King George', N'London', N'', N'WX3 6FW', 19, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (480, 2, CAST(N'1997-11-03T00:00:00.000' AS DateTime), CAST(N'1997-12-01T00:00:00.000' AS DateTime), CAST(N'1997-12-05T00:00:00.000' AS DateTime), N'1', 89, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (481, 4, CAST(N'1997-11-04T00:00:00.000' AS DateTime), CAST(N'1997-12-02T00:00:00.000' AS DateTime), CAST(N'1997-11-11T00:00:00.000' AS DateTime), N'1', 58, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (482, 8, CAST(N'1997-11-04T00:00:00.000' AS DateTime), CAST(N'1997-12-16T00:00:00.000' AS DateTime), CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'1', 141, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (483, 5, CAST(N'1997-11-05T00:00:00.000' AS DateTime), CAST(N'1997-12-03T00:00:00.000' AS DateTime), CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'1', 20, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (484, 7, CAST(N'1997-11-06T00:00:00.000' AS DateTime), CAST(N'1997-12-04T00:00:00.000' AS DateTime), CAST(N'1997-11-14T00:00:00.000' AS DateTime), N'1', 96, N'Chop-suey Chinese', N'Hauptstr. 31', N'Bern', N'', N'3012', 14, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (485, 3, CAST(N'1997-11-06T00:00:00.000' AS DateTime), CAST(N'1997-12-04T00:00:00.000' AS DateTime), CAST(N'1997-11-07T00:00:00.000' AS DateTime), N'1', 16, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (486, 1, CAST(N'1997-11-07T00:00:00.000' AS DateTime), CAST(N'1997-12-05T00:00:00.000' AS DateTime), CAST(N'1997-11-10T00:00:00.000' AS DateTime), N'1', 110, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (487, 2, CAST(N'1997-11-07T00:00:00.000' AS DateTime), CAST(N'1997-12-05T00:00:00.000' AS DateTime), CAST(N'1997-11-12T00:00:00.000' AS DateTime), N'1', 1, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (488, 6, CAST(N'1997-11-10T00:00:00.000' AS DateTime), CAST(N'1997-12-08T00:00:00.000' AS DateTime), CAST(N'1997-11-21T00:00:00.000' AS DateTime), N'1', 45, N'Lets Stop N Shop', N'87 Polk St.\r\nSuite 5', N'San Francisco', N'CA', N'94117', 45, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (489, 9, CAST(N'1997-11-11T00:00:00.000' AS DateTime), CAST(N'1997-12-09T00:00:00.000' AS DateTime), CAST(N'1997-11-21T00:00:00.000' AS DateTime), N'1', 44, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (490, 2, CAST(N'1997-11-11T00:00:00.000' AS DateTime), CAST(N'1997-12-09T00:00:00.000' AS DateTime), CAST(N'1997-11-18T00:00:00.000' AS DateTime), N'1', 7, N'Vins et alcools Chevalier', N'59 rue de lAbbaye', N'Reims', N'', N'51100', 85, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (491, 2, CAST(N'1997-11-12T00:00:00.000' AS DateTime), CAST(N'1997-12-10T00:00:00.000' AS DateTime), CAST(N'1997-11-18T00:00:00.000' AS DateTime), N'1', 2, N'Specialites du monde', N'25, rue Lauriston', N'Paris', N'', N'75016', 74, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (492, 3, CAST(N'1997-11-12T00:00:00.000' AS DateTime), CAST(N'1997-12-10T00:00:00.000' AS DateTime), CAST(N'1997-11-17T00:00:00.000' AS DateTime), N'1', 11, N'Vins et alcools Chevalier', N'59 rue de lAbbaye', N'Reims', N'', N'51100', 85, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (493, 4, CAST(N'1997-11-13T00:00:00.000' AS DateTime), CAST(N'1997-12-11T00:00:00.000' AS DateTime), CAST(N'1997-11-25T00:00:00.000' AS DateTime), N'1', 81, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (494, 4, CAST(N'1997-11-14T00:00:00.000' AS DateTime), CAST(N'1997-11-28T00:00:00.000' AS DateTime), CAST(N'1997-11-18T00:00:00.000' AS DateTime), N'1', 10, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (495, 3, CAST(N'1997-11-14T00:00:00.000' AS DateTime), CAST(N'1997-12-12T00:00:00.000' AS DateTime), CAST(N'1997-11-18T00:00:00.000' AS DateTime), N'1', 243, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (496, 1, CAST(N'1997-11-17T00:00:00.000' AS DateTime), CAST(N'1997-12-15T00:00:00.000' AS DateTime), CAST(N'1997-11-21T00:00:00.000' AS DateTime), N'1', 23, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (497, 6, CAST(N'1997-11-17T00:00:00.000' AS DateTime), CAST(N'1997-12-15T00:00:00.000' AS DateTime), CAST(N'1997-11-24T00:00:00.000' AS DateTime), N'1', 69, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (498, 9, CAST(N'1997-11-18T00:00:00.000' AS DateTime), CAST(N'1997-12-16T00:00:00.000' AS DateTime), CAST(N'1997-11-27T00:00:00.000' AS DateTime), N'1', 3, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (499, 1, CAST(N'1997-11-19T00:00:00.000' AS DateTime), CAST(N'1997-12-17T00:00:00.000' AS DateTime), CAST(N'1997-11-21T00:00:00.000' AS DateTime), N'1', 31, N'Chop-suey Chinese', N'Hauptstr. 31', N'Bern', N'', N'3012', 14, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (500, 6, CAST(N'1997-11-19T00:00:00.000' AS DateTime), CAST(N'1997-12-17T00:00:00.000' AS DateTime), CAST(N'1997-11-26T00:00:00.000' AS DateTime), N'1', 117, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (501, 3, CAST(N'1997-11-20T00:00:00.000' AS DateTime), CAST(N'1997-12-18T00:00:00.000' AS DateTime), CAST(N'1997-11-28T00:00:00.000' AS DateTime), N'1', 232, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (502, 4, CAST(N'1997-11-20T00:00:00.000' AS DateTime), CAST(N'1997-12-18T00:00:00.000' AS DateTime), CAST(N'1997-12-19T00:00:00.000' AS DateTime), N'1', 61, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (503, 9, CAST(N'1997-11-21T00:00:00.000' AS DateTime), CAST(N'1997-12-19T00:00:00.000' AS DateTime), CAST(N'1997-11-24T00:00:00.000' AS DateTime), N'1', 79, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (504, 3, CAST(N'1997-11-24T00:00:00.000' AS DateTime), CAST(N'1997-12-22T00:00:00.000' AS DateTime), CAST(N'1997-12-03T00:00:00.000' AS DateTime), N'1', 130, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (505, 2, CAST(N'1997-11-24T00:00:00.000' AS DateTime), CAST(N'1997-12-22T00:00:00.000' AS DateTime), CAST(N'1997-11-28T00:00:00.000' AS DateTime), N'1', 1, N'North/South', N'South House\r\n300 Queensbridge', N'London', N'', N'SW7 1RZ', 53, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (506, 3, CAST(N'1997-11-25T00:00:00.000' AS DateTime), CAST(N'1997-12-23T00:00:00.000' AS DateTime), CAST(N'1997-11-27T00:00:00.000' AS DateTime), N'1', 7, N'Franchi S.p.A.', N'Via Monte Bianco 34', N'Torino', N'', N'10100', 27, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (507, 6, CAST(N'1997-11-25T00:00:00.000' AS DateTime), CAST(N'1997-12-23T00:00:00.000' AS DateTime), CAST(N'1997-11-27T00:00:00.000' AS DateTime), N'1', 2, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (508, 4, CAST(N'1997-11-26T00:00:00.000' AS DateTime), CAST(N'1997-12-24T00:00:00.000' AS DateTime), CAST(N'1997-11-28T00:00:00.000' AS DateTime), N'1', 16, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (509, 8, CAST(N'1997-11-27T00:00:00.000' AS DateTime), CAST(N'1997-12-25T00:00:00.000' AS DateTime), CAST(N'1997-12-02T00:00:00.000' AS DateTime), N'1', 73, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (510, 6, CAST(N'1997-11-27T00:00:00.000' AS DateTime), CAST(N'1997-12-25T00:00:00.000' AS DateTime), CAST(N'1997-12-15T00:00:00.000' AS DateTime), N'1', 8, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (511, 3, CAST(N'1997-11-28T00:00:00.000' AS DateTime), CAST(N'1997-12-26T00:00:00.000' AS DateTime), CAST(N'1997-12-04T00:00:00.000' AS DateTime), N'1', 138, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (512, 3, CAST(N'1997-11-28T00:00:00.000' AS DateTime), CAST(N'1997-12-26T00:00:00.000' AS DateTime), CAST(N'1997-12-12T00:00:00.000' AS DateTime), N'1', 11, N'Ana Trujillo Emparedados y helados', N'Avda. de la Constitucion 2222', N'Mexico D.F.', N'', N'05021', 2, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (513, 4, CAST(N'1997-12-01T00:00:00.000' AS DateTime), CAST(N'1997-12-29T00:00:00.000' AS DateTime), CAST(N'1997-12-10T00:00:00.000' AS DateTime), N'1', 155, N'Maison Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'', N'B-1180', 50, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (514, 5, CAST(N'1997-12-02T00:00:00.000' AS DateTime), CAST(N'1997-12-30T00:00:00.000' AS DateTime), CAST(N'1997-12-08T00:00:00.000' AS DateTime), N'1', 18, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (515, 3, CAST(N'1997-12-02T00:00:00.000' AS DateTime), CAST(N'1997-12-30T00:00:00.000' AS DateTime), CAST(N'1997-12-09T00:00:00.000' AS DateTime), N'1', 328, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (516, 3, CAST(N'1997-12-03T00:00:00.000' AS DateTime), CAST(N'1997-12-31T00:00:00.000' AS DateTime), CAST(N'1997-12-08T00:00:00.000' AS DateTime), N'1', 37, N'Folies gourmandes', N'184, chaussee de Tournai', N'Lille', N'', N'59000', 23, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (517, 6, CAST(N'1997-12-03T00:00:00.000' AS DateTime), CAST(N'1997-12-31T00:00:00.000' AS DateTime), CAST(N'1997-12-08T00:00:00.000' AS DateTime), N'1', 145, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (518, 3, CAST(N'1997-12-04T00:00:00.000' AS DateTime), CAST(N'1998-01-01T00:00:00.000' AS DateTime), CAST(N'1997-12-09T00:00:00.000' AS DateTime), N'1', 42, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (519, 4, CAST(N'1997-12-05T00:00:00.000' AS DateTime), CAST(N'1998-01-02T00:00:00.000' AS DateTime), CAST(N'1997-12-09T00:00:00.000' AS DateTime), N'1', 157, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (520, 4, CAST(N'1997-12-05T00:00:00.000' AS DateTime), CAST(N'1998-01-02T00:00:00.000' AS DateTime), CAST(N'1997-12-15T00:00:00.000' AS DateTime), N'1', 1, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (521, 3, CAST(N'1997-12-08T00:00:00.000' AS DateTime), CAST(N'1998-01-05T00:00:00.000' AS DateTime), CAST(N'1997-12-15T00:00:00.000' AS DateTime), N'1', 146, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (522, 3, CAST(N'1997-12-08T00:00:00.000' AS DateTime), CAST(N'1998-01-05T00:00:00.000' AS DateTime), CAST(N'1997-12-12T00:00:00.000' AS DateTime), N'1', 65, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (523, 8, CAST(N'1997-12-09T00:00:00.000' AS DateTime), CAST(N'1998-01-06T00:00:00.000' AS DateTime), CAST(N'1997-12-17T00:00:00.000' AS DateTime), N'1', 5, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (524, 9, CAST(N'1997-12-10T00:00:00.000' AS DateTime), CAST(N'1998-01-07T00:00:00.000' AS DateTime), CAST(N'1998-01-02T00:00:00.000' AS DateTime), N'1', 11, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (525, 3, CAST(N'1997-12-10T00:00:00.000' AS DateTime), CAST(N'1998-01-07T00:00:00.000' AS DateTime), CAST(N'1997-12-19T00:00:00.000' AS DateTime), N'1', 91, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (526, 1, CAST(N'1997-12-11T00:00:00.000' AS DateTime), CAST(N'1998-01-08T00:00:00.000' AS DateTime), CAST(N'1997-12-16T00:00:00.000' AS DateTime), N'1', 96, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (527, 4, CAST(N'1997-12-11T00:00:00.000' AS DateTime), CAST(N'1997-12-25T00:00:00.000' AS DateTime), CAST(N'1997-12-12T00:00:00.000' AS DateTime), N'1', 48, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (528, 7, CAST(N'1997-12-12T00:00:00.000' AS DateTime), CAST(N'1998-01-09T00:00:00.000' AS DateTime), CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'1', 20, N'The Cracker Box', N'55 Grizzly Peak Rd.', N'Butte', N'MT', N'59801', 78, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (529, 1, CAST(N'1997-12-15T00:00:00.000' AS DateTime), CAST(N'1998-01-12T00:00:00.000' AS DateTime), CAST(N'1997-12-18T00:00:00.000' AS DateTime), N'1', 351, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (530, 7, CAST(N'1997-12-15T00:00:00.000' AS DateTime), CAST(N'1997-12-29T00:00:00.000' AS DateTime), CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'1', 3, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (531, 3, CAST(N'1997-12-16T00:00:00.000' AS DateTime), CAST(N'1998-01-13T00:00:00.000' AS DateTime), CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'1', 6, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (532, 3, CAST(N'1997-12-16T00:00:00.000' AS DateTime), CAST(N'1998-01-13T00:00:00.000' AS DateTime), CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'1', 58, N'Morgenstern Gesundkost', N'Heerstr. 22', N'Leipzig', N'', N'04179', 52, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (533, 2, CAST(N'1997-12-16T00:00:00.000' AS DateTime), CAST(N'1997-12-30T00:00:00.000' AS DateTime), CAST(N'1997-12-25T00:00:00.000' AS DateTime), N'1', 42, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (534, 2, CAST(N'1997-12-17T00:00:00.000' AS DateTime), CAST(N'1998-01-14T00:00:00.000' AS DateTime), CAST(N'1997-12-19T00:00:00.000' AS DateTime), N'1', 73, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (535, 9, CAST(N'1997-12-17T00:00:00.000' AS DateTime), CAST(N'1998-01-14T00:00:00.000' AS DateTime), CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'1', 1, N'Cactus Comidas para llevar', N'Cerrito 333', N'Buenos Aires', N'', N'1010', 12, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (536, 4, CAST(N'1997-12-18T00:00:00.000' AS DateTime), CAST(N'1998-01-15T00:00:00.000' AS DateTime), CAST(N'1997-12-19T00:00:00.000' AS DateTime), N'1', 124, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (537, 4, CAST(N'1997-12-18T00:00:00.000' AS DateTime), CAST(N'1998-01-15T00:00:00.000' AS DateTime), CAST(N'1997-12-22T00:00:00.000' AS DateTime), N'1', 70, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (538, 1, CAST(N'1997-12-18T00:00:00.000' AS DateTime), CAST(N'1998-01-15T00:00:00.000' AS DateTime), CAST(N'1997-12-24T00:00:00.000' AS DateTime), N'1', 1, N'GROSELLA-Restaurante', N'5ª Ave. Los Palos Grandes', N'Caracas', N'DF', N'1081', 33, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (539, 8, CAST(N'1997-12-19T00:00:00.000' AS DateTime), CAST(N'1998-01-16T00:00:00.000' AS DateTime), CAST(N'1997-12-23T00:00:00.000' AS DateTime), N'1', 110, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (540, 2, CAST(N'1997-12-19T00:00:00.000' AS DateTime), CAST(N'1998-01-02T00:00:00.000' AS DateTime), CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'1', 249, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (541, 1, CAST(N'1997-12-22T00:00:00.000' AS DateTime), CAST(N'1998-01-19T00:00:00.000' AS DateTime), CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'1', 42, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (542, 1, CAST(N'1997-12-22T00:00:00.000' AS DateTime), CAST(N'1998-01-19T00:00:00.000' AS DateTime), CAST(N'1997-12-31T00:00:00.000' AS DateTime), N'1', 100, N'Folies gourmandes', N'184, chaussee de Tournai', N'Lille', N'', N'59000', 23, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (543, 6, CAST(N'1997-12-22T00:00:00.000' AS DateTime), CAST(N'1998-01-19T00:00:00.000' AS DateTime), CAST(N'1997-12-26T00:00:00.000' AS DateTime), N'1', 28, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (544, 6, CAST(N'1997-12-23T00:00:00.000' AS DateTime), CAST(N'1998-01-20T00:00:00.000' AS DateTime), CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'1', 16, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (545, 1, CAST(N'1997-12-23T00:00:00.000' AS DateTime), CAST(N'1998-01-20T00:00:00.000' AS DateTime), CAST(N'1997-12-31T00:00:00.000' AS DateTime), N'1', 23, N'Wolski Zajazd', N'ul. Filtrowa 68', N'Warszawa', N'', N'01-012', 91, 20)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (546, 3, CAST(N'1997-12-24T00:00:00.000' AS DateTime), CAST(N'1998-01-21T00:00:00.000' AS DateTime), CAST(N'1998-01-08T00:00:00.000' AS DateTime), N'1', 4, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (547, 6, CAST(N'1997-12-24T00:00:00.000' AS DateTime), CAST(N'1998-01-21T00:00:00.000' AS DateTime), CAST(N'1998-01-02T00:00:00.000' AS DateTime), N'1', 21, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (548, 8, CAST(N'1997-12-24T00:00:00.000' AS DateTime), CAST(N'1998-01-21T00:00:00.000' AS DateTime), CAST(N'1998-01-20T00:00:00.000' AS DateTime), N'1', 126, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (549, 3, CAST(N'1997-12-25T00:00:00.000' AS DateTime), CAST(N'1998-01-22T00:00:00.000' AS DateTime), CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'1', 26, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (550, 7, CAST(N'1997-12-25T00:00:00.000' AS DateTime), CAST(N'1998-01-22T00:00:00.000' AS DateTime), CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'1', 33, N'Drachenblut Delikatessen', N'Walserweg 21', N'Aachen', N'', N'52066', 17, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (551, 2, CAST(N'1997-12-26T00:00:00.000' AS DateTime), CAST(N'1998-01-23T00:00:00.000' AS DateTime), CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'1', 2, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (552, 9, CAST(N'1997-12-26T00:00:00.000' AS DateTime), CAST(N'1998-02-06T00:00:00.000' AS DateTime), CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'1', 30, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (553, 1, CAST(N'1997-12-26T00:00:00.000' AS DateTime), CAST(N'1998-01-23T00:00:00.000' AS DateTime), CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'1', 137, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (554, 4, CAST(N'1997-12-29T00:00:00.000' AS DateTime), CAST(N'1998-01-26T00:00:00.000' AS DateTime), CAST(N'1997-12-31T00:00:00.000' AS DateTime), N'1', 97, N'Bolido Comidas preparadas', N'C/ Araquil, 67', N'Madrid', N'', N'28023', 8, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (555, 4, CAST(N'1997-12-29T00:00:00.000' AS DateTime), CAST(N'1998-01-26T00:00:00.000' AS DateTime), CAST(N'1998-01-02T00:00:00.000' AS DateTime), N'1', 257, N'Simons bistro', N'Vinbæltet 34', N'København', N'', N'1734', 73, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (556, 4, CAST(N'1997-12-30T00:00:00.000' AS DateTime), CAST(N'1998-01-27T00:00:00.000' AS DateTime), CAST(N'1998-01-06T00:00:00.000' AS DateTime), N'1', 55, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (557, 6, CAST(N'1997-12-30T00:00:00.000' AS DateTime), CAST(N'1998-01-27T00:00:00.000' AS DateTime), CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'1', 27, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (558, 2, CAST(N'1997-12-30T00:00:00.000' AS DateTime), CAST(N'1998-01-27T00:00:00.000' AS DateTime), CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'1', 237, N'The Big Cheese', N'89 Jefferson Way\r\nSuite 2', N'Portland', N'OR', N'97201', 77, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (559, 3, CAST(N'1997-12-31T00:00:00.000' AS DateTime), CAST(N'1998-01-28T00:00:00.000' AS DateTime), CAST(N'1998-01-05T00:00:00.000' AS DateTime), N'1', 22, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (560, 4, CAST(N'1997-12-31T00:00:00.000' AS DateTime), CAST(N'1998-01-28T00:00:00.000' AS DateTime), CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'1', 1, N'Franchi S.p.A.', N'Via Monte Bianco 34', N'Torino', N'', N'10100', 27, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (561, 2, CAST(N'1998-01-01T00:00:00.000' AS DateTime), CAST(N'1998-01-29T00:00:00.000' AS DateTime), CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'1', 45, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (562, 7, CAST(N'1998-01-01T00:00:00.000' AS DateTime), CAST(N'1998-01-29T00:00:00.000' AS DateTime), CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'1', 4, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (563, 2, CAST(N'1998-01-01T00:00:00.000' AS DateTime), CAST(N'1998-01-29T00:00:00.000' AS DateTime), CAST(N'1998-01-07T00:00:00.000' AS DateTime), N'1', 4, N'Laughing Bacchus Wine Cellars', N'2319 Elm St.', N'Vancouver', N'BC', N'V3F 2K1', 42, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (564, 8, CAST(N'1998-01-02T00:00:00.000' AS DateTime), CAST(N'1998-01-30T00:00:00.000' AS DateTime), CAST(N'1998-01-08T00:00:00.000' AS DateTime), N'1', 31, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (565, 5, CAST(N'1998-01-02T00:00:00.000' AS DateTime), CAST(N'1998-01-30T00:00:00.000' AS DateTime), CAST(N'1998-01-12T00:00:00.000' AS DateTime), N'1', 59, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (566, 1, CAST(N'1998-01-05T00:00:00.000' AS DateTime), CAST(N'1998-02-02T00:00:00.000' AS DateTime), CAST(N'1998-01-09T00:00:00.000' AS DateTime), N'1', 47, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (567, 3, CAST(N'1998-01-05T00:00:00.000' AS DateTime), CAST(N'1998-02-02T00:00:00.000' AS DateTime), CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'1', 130, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (568, 2, CAST(N'1998-01-05T00:00:00.000' AS DateTime), CAST(N'1998-02-02T00:00:00.000' AS DateTime), CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'1', 14, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (569, 4, CAST(N'1998-01-06T00:00:00.000' AS DateTime), CAST(N'1998-02-03T00:00:00.000' AS DateTime), CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'1', 719, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (570, 3, CAST(N'1998-01-06T00:00:00.000' AS DateTime), CAST(N'1998-01-20T00:00:00.000' AS DateTime), CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'1', 306, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (571, 7, CAST(N'1998-01-07T00:00:00.000' AS DateTime), CAST(N'1998-02-04T00:00:00.000' AS DateTime), CAST(N'1998-01-12T00:00:00.000' AS DateTime), N'1', 65, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (572, 2, CAST(N'1998-01-07T00:00:00.000' AS DateTime), CAST(N'1998-02-04T00:00:00.000' AS DateTime), CAST(N'1998-01-16T00:00:00.000' AS DateTime), N'1', 19, N'Cactus Comidas para llevar', N'Cerrito 333', N'Buenos Aires', N'', N'1010', 12, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (573, 3, CAST(N'1998-01-07T00:00:00.000' AS DateTime), CAST(N'1998-02-04T00:00:00.000' AS DateTime), CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'1', 37, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (574, 1, CAST(N'1998-01-08T00:00:00.000' AS DateTime), CAST(N'1998-02-05T00:00:00.000' AS DateTime), CAST(N'1998-01-15T00:00:00.000' AS DateTime), N'1', 36, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (575, 6, CAST(N'1998-01-08T00:00:00.000' AS DateTime), CAST(N'1998-02-05T00:00:00.000' AS DateTime), CAST(N'1998-01-16T00:00:00.000' AS DateTime), N'1', 7, N'Trails Head Gourmet Provisioners', N'722 DaVinci Blvd.', N'Kirkland', N'WA', N'98034', 82, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (576, 5, CAST(N'1998-01-09T00:00:00.000' AS DateTime), CAST(N'1998-02-06T00:00:00.000' AS DateTime), CAST(N'1998-01-13T00:00:00.000' AS DateTime), N'1', 163, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (577, 8, CAST(N'1998-01-09T00:00:00.000' AS DateTime), CAST(N'1998-02-06T00:00:00.000' AS DateTime), CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'1', 1, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (578, 1, CAST(N'1998-01-09T00:00:00.000' AS DateTime), CAST(N'1998-02-06T00:00:00.000' AS DateTime), CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'1', 79, N'Drachenblut Delikatessen', N'Walserweg 21', N'Aachen', N'', N'52066', 17, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (579, 6, CAST(N'1998-01-12T00:00:00.000' AS DateTime), CAST(N'1998-02-09T00:00:00.000' AS DateTime), CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'1', 7, N'Blondel père et fils', N'24, place Kleber', N'Strasbourg', N'', N'67000', 7, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (580, 1, CAST(N'1998-01-12T00:00:00.000' AS DateTime), CAST(N'1998-01-26T00:00:00.000' AS DateTime), CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'1', 63, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (581, 9, CAST(N'1998-01-13T00:00:00.000' AS DateTime), CAST(N'1998-01-27T00:00:00.000' AS DateTime), CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'1', 90, N'Rancho grande', N'Av. del Libertador 900', N'Buenos Aires', N'', N'1010', 64, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (582, 9, CAST(N'1998-01-13T00:00:00.000' AS DateTime), CAST(N'1998-02-10T00:00:00.000' AS DateTime), CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'1', 154, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (583, 4, CAST(N'1998-01-13T00:00:00.000' AS DateTime), CAST(N'1998-02-24T00:00:00.000' AS DateTime), CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'1', 81, N'Tradição Hipermercados', N'Av. Inês de Castro, 414', N'São Paulo', N'SP', N'05634-030', 81, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (584, 3, CAST(N'1998-01-14T00:00:00.000' AS DateTime), CAST(N'1998-02-11T00:00:00.000' AS DateTime), CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'1', 72, N'Sante Gourmet', N'Erling Skakkes gate 78', N'Stavern', N'', N'4110', 70, 19)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (585, 2, CAST(N'1998-01-14T00:00:00.000' AS DateTime), CAST(N'1998-02-11T00:00:00.000' AS DateTime), CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'1', 43, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (586, 6, CAST(N'1998-01-15T00:00:00.000' AS DateTime), CAST(N'1998-02-12T00:00:00.000' AS DateTime), CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'1', 71, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (587, 1, CAST(N'1998-01-15T00:00:00.000' AS DateTime), CAST(N'1998-02-12T00:00:00.000' AS DateTime), CAST(N'1998-01-19T00:00:00.000' AS DateTime), N'1', 29, N'Tradição Hipermercados', N'Av. Inês de Castro, 414', N'São Paulo', N'SP', N'05634-030', 81, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (588, 1, CAST(N'1998-01-15T00:00:00.000' AS DateTime), CAST(N'1998-02-12T00:00:00.000' AS DateTime), CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'1', 69, N'Alfreds Futterkiste', N'Obere Str. 57', N'Berlin', N'', N'12209', 1, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (589, 7, CAST(N'1998-01-16T00:00:00.000' AS DateTime), CAST(N'1998-02-13T00:00:00.000' AS DateTime), CAST(N'1998-01-21T00:00:00.000' AS DateTime), N'1', 411, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (590, 9, CAST(N'1998-01-16T00:00:00.000' AS DateTime), CAST(N'1998-02-13T00:00:00.000' AS DateTime), CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'1', 13, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (591, 3, CAST(N'1998-01-19T00:00:00.000' AS DateTime), CAST(N'1998-02-16T00:00:00.000' AS DateTime), CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'1', 59, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (592, 3, CAST(N'1998-01-19T00:00:00.000' AS DateTime), CAST(N'1998-02-16T00:00:00.000' AS DateTime), CAST(N'1998-01-22T00:00:00.000' AS DateTime), N'1', 35, N'Tradição Hipermercados', N'Av. Inês de Castro, 414', N'São Paulo', N'SP', N'05634-030', 81, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (593, 4, CAST(N'1998-01-19T00:00:00.000' AS DateTime), CAST(N'1998-03-02T00:00:00.000' AS DateTime), CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'1', 2, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (594, 5, CAST(N'1998-01-20T00:00:00.000' AS DateTime), CAST(N'1998-02-17T00:00:00.000' AS DateTime), CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'1', 424, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (595, 1, CAST(N'1998-01-20T00:00:00.000' AS DateTime), CAST(N'1998-02-17T00:00:00.000' AS DateTime), CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'1', 54, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (596, 4, CAST(N'1998-01-21T00:00:00.000' AS DateTime), CAST(N'1998-02-18T00:00:00.000' AS DateTime), CAST(N'1998-01-26T00:00:00.000' AS DateTime), N'1', 9, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (597, 8, CAST(N'1998-01-21T00:00:00.000' AS DateTime), CAST(N'1998-02-18T00:00:00.000' AS DateTime), CAST(N'1998-01-26T00:00:00.000' AS DateTime), N'1', 25, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (598, 8, CAST(N'1998-01-21T00:00:00.000' AS DateTime), CAST(N'1998-02-04T00:00:00.000' AS DateTime), CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'1', 212, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (599, 2, CAST(N'1998-01-22T00:00:00.000' AS DateTime), CAST(N'1998-03-05T00:00:00.000' AS DateTime), CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'1', 56, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (600, 4, CAST(N'1998-01-22T00:00:00.000' AS DateTime), CAST(N'1998-02-05T00:00:00.000' AS DateTime), CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'1', 487, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (601, 7, CAST(N'1998-01-23T00:00:00.000' AS DateTime), CAST(N'1998-02-20T00:00:00.000' AS DateTime), CAST(N'1998-01-29T00:00:00.000' AS DateTime), N'1', 38, N'Consolidated Holdings', N'Berkeley Gardens\r\n12  Brewery', N'London', N'', N'WX1 6LT', 16, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (602, 9, CAST(N'1998-01-23T00:00:00.000' AS DateTime), CAST(N'1998-02-20T00:00:00.000' AS DateTime), CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'1', 0, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (603, 1, CAST(N'1998-01-23T00:00:00.000' AS DateTime), CAST(N'1998-03-06T00:00:00.000' AS DateTime), CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'1', 49, N'Victuailles en stock', N'2, rue du Commerce', N'Lyon', N'', N'69004', 84, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (604, 5, CAST(N'1998-01-26T00:00:00.000' AS DateTime), CAST(N'1998-02-23T00:00:00.000' AS DateTime), CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'1', 160, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (605, 8, CAST(N'1998-01-26T00:00:00.000' AS DateTime), CAST(N'1998-02-09T00:00:00.000' AS DateTime), CAST(N'1998-01-30T00:00:00.000' AS DateTime), N'1', 174, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (606, 9, CAST(N'1998-01-27T00:00:00.000' AS DateTime), CAST(N'1998-02-24T00:00:00.000' AS DateTime), CAST(N'1998-02-03T00:00:00.000' AS DateTime), N'1', 53, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', N'', N'68306', 6, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (607, 3, CAST(N'1998-01-27T00:00:00.000' AS DateTime), CAST(N'1998-02-24T00:00:00.000' AS DateTime), CAST(N'1998-02-05T00:00:00.000' AS DateTime), N'1', 100, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (608, 3, CAST(N'1998-01-27T00:00:00.000' AS DateTime), CAST(N'1998-02-24T00:00:00.000' AS DateTime), CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'1', 170, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (609, 3, CAST(N'1998-01-28T00:00:00.000' AS DateTime), CAST(N'1998-02-25T00:00:00.000' AS DateTime), CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'1', 58, N'Antonio Moreno Taqueria', N'Mataderos  2312', N'Mexico D.F.', N'', N'05023', 3, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (610, 8, CAST(N'1998-01-28T00:00:00.000' AS DateTime), CAST(N'1998-02-25T00:00:00.000' AS DateTime), CAST(N'1998-02-06T00:00:00.000' AS DateTime), N'1', 188, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (611, 2, CAST(N'1998-01-29T00:00:00.000' AS DateTime), CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-02-03T00:00:00.000' AS DateTime), N'1', 52, N'La corne dabondance', N'67, avenue de lEurope', N'Versailles', N'', N'78000', 40, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (612, 1, CAST(N'1998-01-29T00:00:00.000' AS DateTime), CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'1', 76, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (613, 3, CAST(N'1998-01-29T00:00:00.000' AS DateTime), CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-02-04T00:00:00.000' AS DateTime), N'1', 19, N'France restauration', N'54, rue Royale', N'Nantes', N'', N'44000', 26, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (614, 4, CAST(N'1998-01-30T00:00:00.000' AS DateTime), CAST(N'1998-02-27T00:00:00.000' AS DateTime), CAST(N'1998-02-17T00:00:00.000' AS DateTime), N'1', 14, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (615, 8, CAST(N'1998-01-30T00:00:00.000' AS DateTime), CAST(N'1998-03-13T00:00:00.000' AS DateTime), CAST(N'1998-02-02T00:00:00.000' AS DateTime), N'1', 53, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (616, 4, CAST(N'1998-02-02T00:00:00.000' AS DateTime), CAST(N'1998-03-02T00:00:00.000' AS DateTime), CAST(N'1998-02-17T00:00:00.000' AS DateTime), N'1', 30, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (617, 4, CAST(N'1998-02-02T00:00:00.000' AS DateTime), CAST(N'1998-03-02T00:00:00.000' AS DateTime), CAST(N'1998-02-09T00:00:00.000' AS DateTime), N'1', 3, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (618, 2, CAST(N'1998-02-02T00:00:00.000' AS DateTime), CAST(N'1998-02-16T00:00:00.000' AS DateTime), CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'1', 348, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (619, 5, CAST(N'1998-02-03T00:00:00.000' AS DateTime), CAST(N'1998-03-03T00:00:00.000' AS DateTime), CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'1', 109, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (620, 6, CAST(N'1998-02-03T00:00:00.000' AS DateTime), CAST(N'1998-03-17T00:00:00.000' AS DateTime), CAST(N'1998-02-11T00:00:00.000' AS DateTime), N'1', 1, N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', 48, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (621, 7, CAST(N'1998-02-04T00:00:00.000' AS DateTime), CAST(N'1998-03-04T00:00:00.000' AS DateTime), CAST(N'1998-02-23T00:00:00.000' AS DateTime), N'1', 191, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (622, 5, CAST(N'1998-02-04T00:00:00.000' AS DateTime), CAST(N'1998-03-04T00:00:00.000' AS DateTime), CAST(N'1998-02-09T00:00:00.000' AS DateTime), N'1', 143, N'Seven Seas Imports', N'90 Wadhurst Rd.', N'London', N'', N'OX15 4NB', 72, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (623, 5, CAST(N'1998-02-04T00:00:00.000' AS DateTime), CAST(N'1998-03-04T00:00:00.000' AS DateTime), CAST(N'1998-02-13T00:00:00.000' AS DateTime), N'1', 12, N'White Clover Markets', N'305 - 14th Ave. S.\r\nSuite 3B', N'Seattle', N'WA', N'98128', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (624, 9, CAST(N'1998-02-05T00:00:00.000' AS DateTime), CAST(N'1998-03-05T00:00:00.000' AS DateTime), CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'1', 112, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (625, 5, CAST(N'1998-02-05T00:00:00.000' AS DateTime), CAST(N'1998-03-05T00:00:00.000' AS DateTime), CAST(N'1998-02-09T00:00:00.000' AS DateTime), N'1', 175, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (626, 4, CAST(N'1998-02-06T00:00:00.000' AS DateTime), CAST(N'1998-03-06T00:00:00.000' AS DateTime), CAST(N'1998-02-09T00:00:00.000' AS DateTime), N'1', 0, N'Wilman Kala', N'Keskuskatu 45', N'Helsinki', N'', N'21240', 90, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (627, 5, CAST(N'1998-02-06T00:00:00.000' AS DateTime), CAST(N'1998-03-06T00:00:00.000' AS DateTime), CAST(N'1998-02-11T00:00:00.000' AS DateTime), N'1', 19, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (628, 4, CAST(N'1998-02-06T00:00:00.000' AS DateTime), CAST(N'1998-03-06T00:00:00.000' AS DateTime), CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'1', 32, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (629, 7, CAST(N'1998-02-09T00:00:00.000' AS DateTime), CAST(N'1998-03-09T00:00:00.000' AS DateTime), CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'1', 60, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (630, 1, CAST(N'1998-02-09T00:00:00.000' AS DateTime), CAST(N'1998-03-09T00:00:00.000' AS DateTime), CAST(N'1998-02-19T00:00:00.000' AS DateTime), N'1', 38, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (631, 4, CAST(N'1998-02-10T00:00:00.000' AS DateTime), CAST(N'1998-03-10T00:00:00.000' AS DateTime), CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'1', 46, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (632, 3, CAST(N'1998-02-10T00:00:00.000' AS DateTime), CAST(N'1998-03-10T00:00:00.000' AS DateTime), CAST(N'1998-02-12T00:00:00.000' AS DateTime), N'1', 8, N'Wilman Kala', N'Keskuskatu 45', N'Helsinki', N'', N'21240', 90, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (633, 7, CAST(N'1998-02-10T00:00:00.000' AS DateTime), CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'1', 88, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (634, 4, CAST(N'1998-02-11T00:00:00.000' AS DateTime), CAST(N'1998-03-11T00:00:00.000' AS DateTime), CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'1', 2, N'Cactus Comidas para llevar', N'Cerrito 333', N'Buenos Aires', N'', N'1010', 12, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (635, 4, CAST(N'1998-02-11T00:00:00.000' AS DateTime), CAST(N'1998-03-11T00:00:00.000' AS DateTime), CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'1', 23, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (636, 8, CAST(N'1998-02-12T00:00:00.000' AS DateTime), CAST(N'1998-03-12T00:00:00.000' AS DateTime), CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'1', 0, N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', 48, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (637, 4, CAST(N'1998-02-12T00:00:00.000' AS DateTime), CAST(N'1998-03-12T00:00:00.000' AS DateTime), CAST(N'1998-02-13T00:00:00.000' AS DateTime), N'1', 90, N'Lets Stop N Shop', N'87 Polk St.\r\nSuite 5', N'San Francisco', N'CA', N'94117', 45, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (638, 6, CAST(N'1998-02-12T00:00:00.000' AS DateTime), CAST(N'1998-03-12T00:00:00.000' AS DateTime), CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'1', 5, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (639, 1, CAST(N'1998-02-13T00:00:00.000' AS DateTime), CAST(N'1998-03-13T00:00:00.000' AS DateTime), CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'1', 4, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (640, 8, CAST(N'1998-02-13T00:00:00.000' AS DateTime), CAST(N'1998-03-13T00:00:00.000' AS DateTime), CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'1', 1, N'Galeria del gastronomo', N'Rambla de Cataluña, 23', N'Barcelona', N'', N'8022', 29, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (641, 1, CAST(N'1998-02-16T00:00:00.000' AS DateTime), CAST(N'1998-03-16T00:00:00.000' AS DateTime), CAST(N'1998-02-23T00:00:00.000' AS DateTime), N'1', 51, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (642, 9, CAST(N'1998-02-16T00:00:00.000' AS DateTime), CAST(N'1998-03-16T00:00:00.000' AS DateTime), CAST(N'1998-02-23T00:00:00.000' AS DateTime), N'1', 280, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (643, 7, CAST(N'1998-02-16T00:00:00.000' AS DateTime), CAST(N'1998-03-16T00:00:00.000' AS DateTime), CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'1', 32, N'Du monde entier', N'67, rue des Cinquante Otages', N'Nantes', N'', N'44000', 18, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (644, 7, CAST(N'1998-02-17T00:00:00.000' AS DateTime), CAST(N'1998-03-17T00:00:00.000' AS DateTime), CAST(N'1998-02-19T00:00:00.000' AS DateTime), N'1', 20, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (645, 4, CAST(N'1998-02-17T00:00:00.000' AS DateTime), CAST(N'1998-03-17T00:00:00.000' AS DateTime), CAST(N'1998-02-19T00:00:00.000' AS DateTime), N'1', 120, N'Maison Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'', N'B-1180', 50, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (646, 9, CAST(N'1998-02-18T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'1', 77, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (647, 1, CAST(N'1998-02-18T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), CAST(N'1998-02-20T00:00:00.000' AS DateTime), N'1', 116, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (648, 3, CAST(N'1998-02-18T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), CAST(N'1998-02-23T00:00:00.000' AS DateTime), N'1', 162, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (649, 7, CAST(N'1998-02-19T00:00:00.000' AS DateTime), CAST(N'1998-03-19T00:00:00.000' AS DateTime), CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'1', 32, N'Maison Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'', N'B-1180', 50, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (650, 3, CAST(N'1998-02-19T00:00:00.000' AS DateTime), CAST(N'1998-03-19T00:00:00.000' AS DateTime), CAST(N'1998-02-25T00:00:00.000' AS DateTime), N'1', 603, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (651, 4, CAST(N'1998-02-20T00:00:00.000' AS DateTime), CAST(N'1998-03-20T00:00:00.000' AS DateTime), CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'1', 1, N'Oceano Atlantico Ltda.', N'Ing. Gustavo Moncada 8585\r\nPiso 20-A', N'Buenos Aires', N'', N'1010', 54, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (652, 5, CAST(N'1998-02-20T00:00:00.000' AS DateTime), CAST(N'1998-03-20T00:00:00.000' AS DateTime), CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'1', 1, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (653, 1, CAST(N'1998-02-20T00:00:00.000' AS DateTime), CAST(N'1998-03-20T00:00:00.000' AS DateTime), CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'1', 1, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (654, 4, CAST(N'1998-02-23T00:00:00.000' AS DateTime), CAST(N'1998-03-23T00:00:00.000' AS DateTime), CAST(N'1998-02-26T00:00:00.000' AS DateTime), N'1', 62, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (655, 1, CAST(N'1998-02-23T00:00:00.000' AS DateTime), CAST(N'1998-03-23T00:00:00.000' AS DateTime), CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'1', 44, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (656, 3, CAST(N'1998-02-24T00:00:00.000' AS DateTime), CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'1', 36, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (657, 3, CAST(N'1998-02-24T00:00:00.000' AS DateTime), CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'1', 162, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (658, 9, CAST(N'1998-02-24T00:00:00.000' AS DateTime), CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'1', 13, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (659, 4, CAST(N'1998-02-25T00:00:00.000' AS DateTime), CAST(N'1998-03-11T00:00:00.000' AS DateTime), CAST(N'1998-03-03T00:00:00.000' AS DateTime), N'1', 26, N'Wolski Zajazd', N'ul. Filtrowa 68', N'Warszawa', N'', N'01-012', 91, 20)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (660, 6, CAST(N'1998-02-25T00:00:00.000' AS DateTime), CAST(N'1998-03-25T00:00:00.000' AS DateTime), CAST(N'1998-02-27T00:00:00.000' AS DateTime), N'1', 9, N'Specialites du monde', N'25, rue Lauriston', N'Paris', N'', N'75016', 74, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (661, 4, CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'1', 32, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (662, 1, CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-03-10T00:00:00.000' AS DateTime), N'1', 53, N'Sante Gourmet', N'Erling Skakkes gate 78', N'Stavern', N'', N'4110', 70, 19)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (663, 1, CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'1', 38, N'Wilman Kala', N'Keskuskatu 45', N'Helsinki', N'', N'21240', 90, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (664, 3, CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-03-05T00:00:00.000' AS DateTime), N'1', 38, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (665, 2, CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'1', 580, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (666, 4, CAST(N'1998-02-26T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'1', 33, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (667, 6, CAST(N'1998-02-27T00:00:00.000' AS DateTime), CAST(N'1998-03-27T00:00:00.000' AS DateTime), CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'1', 21, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (668, 2, CAST(N'1998-02-27T00:00:00.000' AS DateTime), CAST(N'1998-03-27T00:00:00.000' AS DateTime), CAST(N'1998-03-02T00:00:00.000' AS DateTime), N'1', 3, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (669, 1, CAST(N'1998-02-27T00:00:00.000' AS DateTime), CAST(N'1998-03-27T00:00:00.000' AS DateTime), CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'1', 63, N'Rancho grande', N'Av. del Libertador 900', N'Buenos Aires', N'', N'1010', 64, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (670, 4, CAST(N'1998-03-02T00:00:00.000' AS DateTime), CAST(N'1998-03-30T00:00:00.000' AS DateTime), CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'1', 8, N'Romero y tomillo', N'Gran Via, 1', N'Madrid', N'', N'28001', 69, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (671, 3, CAST(N'1998-03-02T00:00:00.000' AS DateTime), CAST(N'1998-03-30T00:00:00.000' AS DateTime), CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'1', 48, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (672, 2, CAST(N'1998-03-02T00:00:00.000' AS DateTime), CAST(N'1998-03-30T00:00:00.000' AS DateTime), CAST(N'1998-03-04T00:00:00.000' AS DateTime), N'1', 19, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (673, 4, CAST(N'1998-03-03T00:00:00.000' AS DateTime), CAST(N'1998-03-31T00:00:00.000' AS DateTime), CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'1', 29, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (674, 1, CAST(N'1998-03-03T00:00:00.000' AS DateTime), CAST(N'1998-04-14T00:00:00.000' AS DateTime), CAST(N'1998-03-09T00:00:00.000' AS DateTime), N'1', 176, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (675, 5, CAST(N'1998-03-03T00:00:00.000' AS DateTime), CAST(N'1998-03-31T00:00:00.000' AS DateTime), CAST(N'1998-03-05T00:00:00.000' AS DateTime), N'1', 62, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (676, 7, CAST(N'1998-03-03T00:00:00.000' AS DateTime), CAST(N'1998-04-14T00:00:00.000' AS DateTime), CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'1', 68, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (677, 3, CAST(N'1998-03-04T00:00:00.000' AS DateTime), CAST(N'1998-04-01T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'1', 151, N'Berglunds snabbköp', N'Berguvsvägen  8', N'Luleå', N'', N'S-958 22', 5, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (678, 3, CAST(N'1998-03-04T00:00:00.000' AS DateTime), CAST(N'1998-04-01T00:00:00.000' AS DateTime), CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'1', 2, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (679, 4, CAST(N'1998-03-04T00:00:00.000' AS DateTime), CAST(N'1998-04-01T00:00:00.000' AS DateTime), CAST(N'1998-03-11T00:00:00.000' AS DateTime), N'1', 39, N'Ana Trujillo Emparedados y helados', N'Avda. de la Constitucion 2222', N'Mexico D.F.', N'', N'05021', 2, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (680, 4, CAST(N'1998-03-05T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'1', 19, N'La corne dabondance', N'67, avenue de lEurope', N'Versailles', N'', N'78000', 40, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (681, 1, CAST(N'1998-03-05T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'1', 1, N'Galeria del gastronomo', N'Rambla de Cataluña, 23', N'Barcelona', N'', N'8022', 29, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (682, 6, CAST(N'1998-03-05T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), CAST(N'1998-03-12T00:00:00.000' AS DateTime), N'1', 33, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (683, 4, CAST(N'1998-03-06T00:00:00.000' AS DateTime), CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'1', 15, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (684, 4, CAST(N'1998-03-06T00:00:00.000' AS DateTime), CAST(N'1998-03-20T00:00:00.000' AS DateTime), CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'1', 13, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (685, 8, CAST(N'1998-03-06T00:00:00.000' AS DateTime), CAST(N'1998-04-03T00:00:00.000' AS DateTime), CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'1', 134, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (686, 6, CAST(N'1998-03-06T00:00:00.000' AS DateTime), CAST(N'1998-04-03T00:00:00.000' AS DateTime), CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'1', 54, N'Island Trading', N'Garden House\r\nCrowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', 38, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (687, 3, CAST(N'1998-03-09T00:00:00.000' AS DateTime), CAST(N'1998-04-06T00:00:00.000' AS DateTime), CAST(N'1998-03-12T00:00:00.000' AS DateTime), N'1', 32, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (688, 4, CAST(N'1998-03-09T00:00:00.000' AS DateTime), CAST(N'1998-04-06T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'1', 47, N'Wellington Importadora', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', 88, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (689, 3, CAST(N'1998-03-09T00:00:00.000' AS DateTime), CAST(N'1998-04-06T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'1', 33, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (690, 7, CAST(N'1998-03-10T00:00:00.000' AS DateTime), CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'1', 31, N'Cactus Comidas para llevar', N'Cerrito 333', N'Buenos Aires', N'', N'1010', 12, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (691, 3, CAST(N'1998-03-10T00:00:00.000' AS DateTime), CAST(N'1998-04-07T00:00:00.000' AS DateTime), CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'1', 31, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (692, 2, CAST(N'1998-03-10T00:00:00.000' AS DateTime), CAST(N'1998-04-07T00:00:00.000' AS DateTime), CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'1', 76, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (693, 8, CAST(N'1998-03-11T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'1', 19, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (694, 7, CAST(N'1998-03-11T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'1', 400, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (695, 9, CAST(N'1998-03-11T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'1', 17, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (696, 4, CAST(N'1998-03-11T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'1', 2, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (697, 6, CAST(N'1998-03-12T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-03-13T00:00:00.000' AS DateTime), N'1', 52, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (698, 4, CAST(N'1998-03-12T00:00:00.000' AS DateTime), CAST(N'1998-04-09T00:00:00.000' AS DateTime), CAST(N'1998-03-18T00:00:00.000' AS DateTime), N'1', 10, N'Morgenstern Gesundkost', N'Heerstr. 22', N'Leipzig', N'', N'04179', 52, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (699, 1, CAST(N'1998-03-12T00:00:00.000' AS DateTime), CAST(N'1998-04-09T00:00:00.000' AS DateTime), CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'1', 27, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (700, 3, CAST(N'1998-03-13T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), CAST(N'1998-03-16T00:00:00.000' AS DateTime), N'1', 3, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (701, 3, CAST(N'1998-03-13T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), CAST(N'1998-03-19T00:00:00.000' AS DateTime), N'1', 23, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (702, 2, CAST(N'1998-03-13T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), CAST(N'1998-03-17T00:00:00.000' AS DateTime), N'1', 74, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (703, 1, CAST(N'1998-03-16T00:00:00.000' AS DateTime), CAST(N'1998-04-13T00:00:00.000' AS DateTime), CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'1', 2, N'Magazzini Alimentari Riuniti', N'Via Ludovico il Moro 22', N'Bergamo', N'', N'24100', 49, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (704, 9, CAST(N'1998-03-16T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'1', 30, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (705, 1, CAST(N'1998-03-16T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'1', 40, N'Alfreds Futterkiste', N'Obere Str. 57', N'Berlin', N'', N'12209', 1, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (706, 9, CAST(N'1998-03-16T00:00:00.000' AS DateTime), CAST(N'1998-03-30T00:00:00.000' AS DateTime), CAST(N'1998-03-25T00:00:00.000' AS DateTime), N'1', 23, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (707, 5, CAST(N'1998-03-17T00:00:00.000' AS DateTime), CAST(N'1998-04-28T00:00:00.000' AS DateTime), CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'1', 27, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (708, 8, CAST(N'1998-03-17T00:00:00.000' AS DateTime), CAST(N'1998-04-14T00:00:00.000' AS DateTime), CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'1', 3, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (709, 6, CAST(N'1998-03-17T00:00:00.000' AS DateTime), CAST(N'1998-04-28T00:00:00.000' AS DateTime), CAST(N'1998-03-20T00:00:00.000' AS DateTime), N'1', 44, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', N'', N'68306', 6, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (710, 8, CAST(N'1998-03-18T00:00:00.000' AS DateTime), CAST(N'1998-04-15T00:00:00.000' AS DateTime), CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'1', 105, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (711, 7, CAST(N'1998-03-18T00:00:00.000' AS DateTime), CAST(N'1998-04-15T00:00:00.000' AS DateTime), CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'1', 49, N'Oceano Atlantico Ltda.', N'Ing. Gustavo Moncada 8585\r\nPiso 20-A', N'Buenos Aires', N'', N'1010', 54, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (712, 6, CAST(N'1998-03-18T00:00:00.000' AS DateTime), CAST(N'1998-04-29T00:00:00.000' AS DateTime), CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'1', 4, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (713, 3, CAST(N'1998-03-19T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'1', 2, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (714, 8, CAST(N'1998-03-19T00:00:00.000' AS DateTime), CAST(N'1998-04-16T00:00:00.000' AS DateTime), CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'1', 104, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (715, 8, CAST(N'1998-03-19T00:00:00.000' AS DateTime), CAST(N'1998-04-16T00:00:00.000' AS DateTime), CAST(N'1998-03-23T00:00:00.000' AS DateTime), N'1', 275, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (716, 9, CAST(N'1998-03-19T00:00:00.000' AS DateTime), CAST(N'1998-04-16T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), N'1', 2, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', N'', N'1675', 28, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (717, 3, CAST(N'1998-03-20T00:00:00.000' AS DateTime), CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-03-24T00:00:00.000' AS DateTime), N'1', 87, N'Specialites du monde', N'25, rue Lauriston', N'Paris', N'', N'75016', 74, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (718, 6, CAST(N'1998-03-20T00:00:00.000' AS DateTime), CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'1', 144, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (719, 4, CAST(N'1998-03-20T00:00:00.000' AS DateTime), CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'1', 27, N'Chop-suey Chinese', N'Hauptstr. 31', N'Bern', N'', N'3012', 14, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (720, 2, CAST(N'1998-03-23T00:00:00.000' AS DateTime), CAST(N'1998-04-20T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'1', 62, N'Toms Spezialitäten', N'Luisenstr. 48', N'Münster', N'', N'44087', 79, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (721, 1, CAST(N'1998-03-23T00:00:00.000' AS DateTime), CAST(N'1998-04-20T00:00:00.000' AS DateTime), CAST(N'1998-04-01T00:00:00.000' AS DateTime), N'1', 74, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (722, 1, CAST(N'1998-03-23T00:00:00.000' AS DateTime), CAST(N'1998-04-20T00:00:00.000' AS DateTime), CAST(N'1998-03-30T00:00:00.000' AS DateTime), N'1', 0, N'Comercio Mineiro', N'Av. dos Lusiadas, 23', N'São Paulo', N'SP', N'05432-043', 15, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (723, 9, CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-04-07T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'1', 16, N'Bolido Comidas preparadas', N'C/ Araquil, 67', N'Madrid', N'', N'28023', 8, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (724, 2, CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-04-21T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'1', 121, N'France restauration', N'54, rue Royale', N'Nantes', N'', N'44000', 26, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (725, 4, CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-04-21T00:00:00.000' AS DateTime), CAST(N'1998-03-26T00:00:00.000' AS DateTime), N'1', 0, N'La corne dabondance', N'67, avenue de lEurope', N'Versailles', N'', N'78000', 40, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (726, 6, CAST(N'1998-03-24T00:00:00.000' AS DateTime), CAST(N'1998-04-21T00:00:00.000' AS DateTime), CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'1', 15, N'La corne dabondance', N'67, avenue de lEurope', N'Versailles', N'', N'78000', 40, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (727, 3, CAST(N'1998-03-25T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'1', 12, N'Split Rail Beer & Ale', N'P.O. Box 555', N'Lander', N'WY', N'82520', 75, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (728, 1, CAST(N'1998-03-25T00:00:00.000' AS DateTime), CAST(N'1998-04-22T00:00:00.000' AS DateTime), CAST(N'1998-03-27T00:00:00.000' AS DateTime), N'1', 32, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (729, 1, CAST(N'1998-03-25T00:00:00.000' AS DateTime), CAST(N'1998-05-06T00:00:00.000' AS DateTime), CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'1', 37, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (730, 8, CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-04-23T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'1', 208, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (731, 9, CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-04-23T00:00:00.000' AS DateTime), CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'1', 32, N'Maison Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'', N'B-1180', 50, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (732, 8, CAST(N'1998-03-26T00:00:00.000' AS DateTime), CAST(N'1998-04-23T00:00:00.000' AS DateTime), CAST(N'1998-03-31T00:00:00.000' AS DateTime), N'1', 353, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (733, 4, CAST(N'1998-03-27T00:00:00.000' AS DateTime), CAST(N'1998-05-08T00:00:00.000' AS DateTime), CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'1', 1, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (734, 1, CAST(N'1998-03-27T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'1', 193, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (735, 2, CAST(N'1998-03-27T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'1', 14, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (736, 2, CAST(N'1998-03-27T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'1', 657, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (737, 1, CAST(N'1998-03-30T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'1', 211, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (738, 2, CAST(N'1998-03-30T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'1', 91, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (739, 8, CAST(N'1998-03-30T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'1', 217, N'Oceano Atlantico Ltda.', N'Ing. Gustavo Moncada 8585\r\nPiso 20-A', N'Buenos Aires', N'', N'1010', 54, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (740, 8, CAST(N'1998-03-31T00:00:00.000' AS DateTime), CAST(N'1998-04-28T00:00:00.000' AS DateTime), CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'1', 185, N'Eastern Connection', N'35 King George', N'London', N'', N'WX3 6FW', 19, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (741, 3, CAST(N'1998-03-31T00:00:00.000' AS DateTime), CAST(N'1998-04-28T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'1', 61, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (742, 2, CAST(N'1998-03-31T00:00:00.000' AS DateTime), CAST(N'1998-04-28T00:00:00.000' AS DateTime), CAST(N'1998-04-02T00:00:00.000' AS DateTime), N'1', 34, N'Que Delicia', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', 61, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (743, 2, CAST(N'1998-04-01T00:00:00.000' AS DateTime), CAST(N'1998-05-13T00:00:00.000' AS DateTime), CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'1', 117, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (744, 1, CAST(N'1998-04-01T00:00:00.000' AS DateTime), CAST(N'1998-04-29T00:00:00.000' AS DateTime), CAST(N'1998-04-07T00:00:00.000' AS DateTime), N'1', 38, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (745, 1, CAST(N'1998-04-01T00:00:00.000' AS DateTime), CAST(N'1998-04-29T00:00:00.000' AS DateTime), CAST(N'1998-04-03T00:00:00.000' AS DateTime), N'1', 4, N'The Big Cheese', N'89 Jefferson Way\r\nSuite 2', N'Portland', N'OR', N'97201', 77, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (746, 7, CAST(N'1998-04-01T00:00:00.000' AS DateTime), CAST(N'1998-04-29T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'1', 8, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (747, 2, CAST(N'1998-04-02T00:00:00.000' AS DateTime), CAST(N'1998-04-16T00:00:00.000' AS DateTime), CAST(N'1998-04-09T00:00:00.000' AS DateTime), N'1', 65, N'Vaffeljernet', N'Smagsløget 45', N'Århus', N'', N'8200', 83, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (748, 1, CAST(N'1998-04-02T00:00:00.000' AS DateTime), CAST(N'1998-04-30T00:00:00.000' AS DateTime), CAST(N'1998-04-06T00:00:00.000' AS DateTime), N'1', 46, N'Pericles Comidas clasicas', N'Calle Dr. Jorge Cash 321', N'Mexico D.F.', N'', N'05033', 58, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (749, 4, CAST(N'1998-04-02T00:00:00.000' AS DateTime), CAST(N'1998-04-30T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'1', 1, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (750, 8, CAST(N'1998-04-03T00:00:00.000' AS DateTime), CAST(N'1998-05-15T00:00:00.000' AS DateTime), CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'1', 73, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (751, 8, CAST(N'1998-04-03T00:00:00.000' AS DateTime), CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'1', 20, N'Wolski Zajazd', N'ul. Filtrowa 68', N'Warszawa', N'', N'01-012', 91, 20)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (752, 6, CAST(N'1998-04-03T00:00:00.000' AS DateTime), CAST(N'1998-05-01T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'1', 96, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (753, 2, CAST(N'1998-04-06T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'1', 55, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (754, 2, CAST(N'1998-04-06T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), CAST(N'1998-04-14T00:00:00.000' AS DateTime), N'1', 197, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (755, 4, CAST(N'1998-04-06T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'1', 141, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (756, 3, CAST(N'1998-04-06T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), CAST(N'1998-04-08T00:00:00.000' AS DateTime), N'1', 14, N'The Cracker Box', N'55 Grizzly Peak Rd.', N'Butte', N'MT', N'59801', 78, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (757, 3, CAST(N'1998-04-07T00:00:00.000' AS DateTime), CAST(N'1998-05-05T00:00:00.000' AS DateTime), CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'1', 44, N'Maison Dewey', N'Rue Joseph-Bens 532', N'Bruxelles', N'', N'B-1180', 50, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (758, 2, CAST(N'1998-04-07T00:00:00.000' AS DateTime), CAST(N'1998-05-05T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'1', 0, N'Wilman Kala', N'Keskuskatu 45', N'Helsinki', N'', N'21240', 90, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (759, 3, CAST(N'1998-04-07T00:00:00.000' AS DateTime), CAST(N'1998-05-05T00:00:00.000' AS DateTime), CAST(N'1998-04-15T00:00:00.000' AS DateTime), N'1', 25, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (760, 8, CAST(N'1998-04-08T00:00:00.000' AS DateTime), CAST(N'1998-05-06T00:00:00.000' AS DateTime), CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'1', 202, N'Princesa Isabel Vinhos', N'Estrada da saúde n. 58', N'Lisboa', N'', N'1756', 60, 21)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (761, 7, CAST(N'1998-04-08T00:00:00.000' AS DateTime), CAST(N'1998-05-06T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 79, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (762, 2, CAST(N'1998-04-08T00:00:00.000' AS DateTime), CAST(N'1998-05-06T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'1', 59, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (763, 2, CAST(N'1998-04-09T00:00:00.000' AS DateTime), CAST(N'1998-05-07T00:00:00.000' AS DateTime), CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'1', 28, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (764, 3, CAST(N'1998-04-09T00:00:00.000' AS DateTime), CAST(N'1998-05-07T00:00:00.000' AS DateTime), CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'1', 1, N'Alfreds Futterkiste', N'Obere Str. 57', N'Berlin', N'', N'12209', 1, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (765, 1, CAST(N'1998-04-09T00:00:00.000' AS DateTime), CAST(N'1998-04-23T00:00:00.000' AS DateTime), CAST(N'1998-04-17T00:00:00.000' AS DateTime), N'1', 242, N'Frankenversand', N'Berliner Platz 43', N'München', N'', N'80805', 25, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (766, 2, CAST(N'1998-04-09T00:00:00.000' AS DateTime), CAST(N'1998-05-07T00:00:00.000' AS DateTime), CAST(N'1998-04-10T00:00:00.000' AS DateTime), N'1', 32, N'Romero y tomillo', N'Gran Via, 1', N'Madrid', N'', N'28001', 69, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (767, 2, CAST(N'1998-04-10T00:00:00.000' AS DateTime), CAST(N'1998-05-08T00:00:00.000' AS DateTime), CAST(N'1998-04-15T00:00:00.000' AS DateTime), N'1', 23, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (768, 2, CAST(N'1998-04-10T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'1', 4, N'Sante Gourmet', N'Erling Skakkes gate 78', N'Stavern', N'', N'4110', 70, 19)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (769, 9, CAST(N'1998-04-10T00:00:00.000' AS DateTime), CAST(N'1998-05-08T00:00:00.000' AS DateTime), CAST(N'1998-04-13T00:00:00.000' AS DateTime), N'1', 33, N'Around the Horn', N'Brook Farm\r\nStratford St. Mary', N'Colchester', N'Essex', N'CO7 6JX', 4, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (770, 9, CAST(N'1998-04-13T00:00:00.000' AS DateTime), CAST(N'1998-05-11T00:00:00.000' AS DateTime), CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'1', 754, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (771, 4, CAST(N'1998-04-13T00:00:00.000' AS DateTime), CAST(N'1998-05-11T00:00:00.000' AS DateTime), CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'1', 11, N'Lonesome Pine Restaurant', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', 48, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (772, 6, CAST(N'1998-04-13T00:00:00.000' AS DateTime), CAST(N'1998-05-11T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 3, N'Rancho grande', N'Av. del Libertador 900', N'Buenos Aires', N'', N'1010', 64, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (773, 2, CAST(N'1998-04-14T00:00:00.000' AS DateTime), CAST(N'1998-05-12T00:00:00.000' AS DateTime), CAST(N'1998-04-16T00:00:00.000' AS DateTime), N'1', 43, N'Ottilies Käseladen', N'Mehrheimerstr. 369', N'Köln', N'', N'50739', 56, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (774, 3, CAST(N'1998-04-14T00:00:00.000' AS DateTime), CAST(N'1998-05-12T00:00:00.000' AS DateTime), CAST(N'1998-04-21T00:00:00.000' AS DateTime), N'1', 297, N'QUICK-Stop', N'Taucherstraße 10', N'Cunewalde', N'', N'01307', 63, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (775, 9, CAST(N'1998-04-14T00:00:00.000' AS DateTime), CAST(N'1998-05-12T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'1', 6, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (776, 1, CAST(N'1998-04-14T00:00:00.000' AS DateTime), CAST(N'1998-04-28T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'1', 123, N'Bs Beverages', N'Fauntleroy Circus', N'London', N'', N'EC2 5NT', 11, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (777, 4, CAST(N'1998-04-15T00:00:00.000' AS DateTime), CAST(N'1998-05-13T00:00:00.000' AS DateTime), CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'1', 74, N'Eastern Connection', N'35 King George', N'London', N'', N'WX3 6FW', 19, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (778, 6, CAST(N'1998-04-15T00:00:00.000' AS DateTime), CAST(N'1998-05-13T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'1', 29, N'Wartian Herkku', N'Torikatu 38', N'Oulu', N'', N'90110', 87, 15)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (779, 4, CAST(N'1998-04-15T00:00:00.000' AS DateTime), CAST(N'1998-05-13T00:00:00.000' AS DateTime), CAST(N'1998-04-28T00:00:00.000' AS DateTime), N'1', 47, N'Franchi S.p.A.', N'Via Monte Bianco 34', N'Torino', N'', N'10100', 27, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (780, 1, CAST(N'1998-04-16T00:00:00.000' AS DateTime), CAST(N'1998-05-14T00:00:00.000' AS DateTime), CAST(N'1998-04-20T00:00:00.000' AS DateTime), N'1', 52, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (781, 2, CAST(N'1998-04-16T00:00:00.000' AS DateTime), CAST(N'1998-05-14T00:00:00.000' AS DateTime), CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'1', 29, N'Königlich Essen', N'Maubelstr. 90', N'Brandenburg', N'', N'14776', 39, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (782, 4, CAST(N'1998-04-16T00:00:00.000' AS DateTime), CAST(N'1998-05-14T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'1', 47, N'Chop-suey Chinese', N'Hauptstr. 31', N'Bern', N'', N'3012', 14, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (783, 7, CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-05-15T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'1', 830, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (784, 6, CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-05-15T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'1', 227, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (785, 2, CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-05-15T00:00:00.000' AS DateTime), CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'1', 606, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (786, 7, CAST(N'1998-04-17T00:00:00.000' AS DateTime), CAST(N'1998-05-15T00:00:00.000' AS DateTime), CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'1', 84, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (787, 8, CAST(N'1998-04-20T00:00:00.000' AS DateTime), CAST(N'1998-06-01T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'1', 40, N'Old World Delicatessen', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', 55, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (788, 2, CAST(N'1998-04-20T00:00:00.000' AS DateTime), CAST(N'1998-05-18T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'1', 0, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (789, 8, CAST(N'1998-04-20T00:00:00.000' AS DateTime), CAST(N'1998-05-18T00:00:00.000' AS DateTime), CAST(N'1998-04-22T00:00:00.000' AS DateTime), N'1', 149, N'Drachenblut Delikatessen', N'Walserweg 21', N'Aachen', N'', N'52066', 17, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (790, 7, CAST(N'1998-04-21T00:00:00.000' AS DateTime), CAST(N'1998-05-19T00:00:00.000' AS DateTime), CAST(N'1998-04-27T00:00:00.000' AS DateTime), N'1', 3, N'Godos Cocina Tipica', N'C/ Romero, 33', N'Sevilla', N'', N'41101', 30, 5)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (791, 1, CAST(N'1998-04-21T00:00:00.000' AS DateTime), CAST(N'1998-05-19T00:00:00.000' AS DateTime), CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'1', 29, N'Suprêmes delices', N'Boulevard Tirou, 255', N'Charleroi', N'', N'B-6000', 76, 12)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (792, 1, CAST(N'1998-04-21T00:00:00.000' AS DateTime), CAST(N'1998-05-19T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 65, N'LINO-Delicateses', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', 47, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (793, 4, CAST(N'1998-04-22T00:00:00.000' AS DateTime), CAST(N'1998-05-20T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 18, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (794, 3, CAST(N'1998-04-22T00:00:00.000' AS DateTime), CAST(N'1998-05-20T00:00:00.000' AS DateTime), CAST(N'1998-04-28T00:00:00.000' AS DateTime), N'1', 48, N'Chop-suey Chinese', N'Hauptstr. 31', N'Bern', N'', N'3012', 14, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (795, 2, CAST(N'1998-04-22T00:00:00.000' AS DateTime), CAST(N'1998-05-06T00:00:00.000' AS DateTime), CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'1', 29, N'Comercio Mineiro', N'Av. dos Lusiadas, 23', N'São Paulo', N'SP', N'05432-043', 15, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (796, 5, CAST(N'1998-04-22T00:00:00.000' AS DateTime), CAST(N'1998-05-20T00:00:00.000' AS DateTime), CAST(N'1998-04-29T00:00:00.000' AS DateTime), N'1', 8, N'Specialites du monde', N'25, rue Lauriston', N'Paris', N'', N'75016', 74, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (797, 4, CAST(N'1998-04-23T00:00:00.000' AS DateTime), CAST(N'1998-05-21T00:00:00.000' AS DateTime), CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'1', 8, N'Wolski Zajazd', N'ul. Filtrowa 68', N'Warszawa', N'', N'01-012', 91, 20)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (798, 6, CAST(N'1998-04-23T00:00:00.000' AS DateTime), CAST(N'1998-05-21T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 70, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (799, 8, CAST(N'1998-04-23T00:00:00.000' AS DateTime), CAST(N'1998-05-21T00:00:00.000' AS DateTime), CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'1', 71, N'Die Wandernde Kuh', N'Adenauerallee 900', N'Stuttgart', N'', N'70563', 86, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (800, 7, CAST(N'1998-04-24T00:00:00.000' AS DateTime), CAST(N'1998-05-22T00:00:00.000' AS DateTime), CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'1', 46, N'Eastern Connection', N'35 King George', N'London', N'', N'WX3 6FW', 19, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (801, 7, CAST(N'1998-04-24T00:00:00.000' AS DateTime), CAST(N'1998-05-22T00:00:00.000' AS DateTime), CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'1', 24, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', 10, 8)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (802, 3, CAST(N'1998-04-24T00:00:00.000' AS DateTime), CAST(N'1998-05-22T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'1', 8, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', 31, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (803, 8, CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-05-25T00:00:00.000' AS DateTime), CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'1', 59, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', N'', N'S-844 67', 24, 23)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (804, 7, CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-05-25T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 2, N'La maison dAsie', N'1 rue Alsace-Lorraine', N'Toulouse', N'', N'31000', 41, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (805, 3, CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-05-25T00:00:00.000' AS DateTime), CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'1', 67, N'Hanari Carnes', N'Rua do Paço, 67', N'Rio de Janeiro', N'RJ', N'05454-876', 34, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (806, 2, CAST(N'1998-04-27T00:00:00.000' AS DateTime), CAST(N'1998-05-25T00:00:00.000' AS DateTime), CAST(N'1998-04-29T00:00:00.000' AS DateTime), N'1', 53, N'Piccolo und mehr', N'Geislweg 14', N'Salzburg', N'', N'5020', 59, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (807, 8, CAST(N'1998-04-28T00:00:00.000' AS DateTime), CAST(N'1998-05-26T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 0, N'Cactus Comidas para llevar', N'Cerrito 333', N'Buenos Aires', N'', N'1010', 12, 2)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (808, 7, CAST(N'1998-04-28T00:00:00.000' AS DateTime), CAST(N'1998-05-26T00:00:00.000' AS DateTime), CAST(N'1998-05-05T00:00:00.000' AS DateTime), N'1', 120, N'HILARIoN-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristobal', N'Tachira', N'5022', 35, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (809, 8, CAST(N'2007-04-28T00:00:00.000' AS DateTime), CAST(N'1998-05-12T00:00:00.000' AS DateTime), CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'1', 278, N'Eastern Connection', N'35 King George', N'London', N'', N'WX3 6FW', 19, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (810, 3, CAST(N'2007-04-29T00:00:00.000' AS DateTime), CAST(N'1998-05-27T00:00:00.000' AS DateTime), CAST(N'1998-05-01T00:00:00.000' AS DateTime), N'1', 4, N'North/South', N'South House\r\n300 Queensbridge', N'London', N'', N'SW7 1RZ', 53, 22)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (811, 9, CAST(N'2007-04-29T00:00:00.000' AS DateTime), CAST(N'1998-05-27T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 31, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', N'', N'68306', 6, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (812, 2, CAST(N'2007-04-29T00:00:00.000' AS DateTime), CAST(N'1998-06-10T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 85, N'Ricardo Adocicados', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', 67, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (813, 2, CAST(N'2007-04-30T00:00:00.000' AS DateTime), CAST(N'1998-05-28T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'1', 10, N'Franchi S.p.A.', N'Via Monte Bianco 34', N'Torino', N'', N'10100', 27, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (814, 4, CAST(N'2008-04-30T00:00:00.000' AS DateTime), CAST(N'1998-06-11T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 14, N'Great Lakes Food Market', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', 32, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (815, 4, CAST(N'2008-04-30T00:00:00.000' AS DateTime), CAST(N'1998-05-28T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 29, N'Reggiani Caseifici', N'Strada Provinciale 124', N'Reggio Emilia', N'', N'42100', 66, 17)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (816, 3, CAST(N'2008-06-30T00:00:00.000' AS DateTime), CAST(N'2007-07-28T00:00:00.000' AS DateTime), CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'1', 81, N'Hungry Owl All-Night Grocers', N'8 Johnstown Road', N'Cork', N'Co. Cork', N'', 37, 16)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (817, 1, CAST(N'2008-07-01T00:00:00.000' AS DateTime), CAST(N'2007-07-29T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'1', 30, N'Save-a-lot Markets', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', 71, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (818, 8, CAST(N'2008-08-01T00:00:00.000' AS DateTime), CAST(N'2007-08-29T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 12, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (819, 7, CAST(N'2008-08-01T00:00:00.000' AS DateTime), CAST(N'2007-08-29T00:00:00.000' AS DateTime), CAST(N'1998-05-04T00:00:00.000' AS DateTime), N'1', 44, N'White Clover Markets', N'1029 - 12th Ave. S.', N'Seattle', N'WA', N'98124', 89, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (820, 1, CAST(N'2009-09-04T00:00:00.000' AS DateTime), CAST(N'2007-09-18T00:00:00.000' AS DateTime), CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'1', 7, N'Drachenblut Delikatessen', N'Walserweg 21', N'Aachen', N'', N'52066', 17, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (821, 8, CAST(N'2010-09-04T00:00:00.000' AS DateTime), CAST(N'2007-10-01T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 81, N'Queen Cozinha', N'Alameda dos Canàrios, 891', N'São Paulo', N'SP', N'05487-020', 62, 13)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (822, 1, CAST(N'2010-10-04T00:00:00.000' AS DateTime), CAST(N'2007-11-01T00:00:00.000' AS DateTime), CAST(N'1998-05-06T00:00:00.000' AS DateTime), N'1', 15, N'Tortuga Restaurante', N'Avda. Azteca 123', N'Mexico D.F.', N'', N'05033', 80, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (823, 2, CAST(N'2010-10-05T00:00:00.000' AS DateTime), CAST(N'2007-11-02T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'1', 136, N'Lehmanns Marktstand', N'Magazinweg 7', N'Frankfurt a.M.', N'', N'60528', 44, 10)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (824, 1, CAST(N'2010-10-05T00:00:00.000' AS DateTime), CAST(N'2007-11-02T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'0', 0, N'LILA-Supermercado', N'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', 46, 25)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (825, 4, CAST(N'2010-11-05T00:00:00.000' AS DateTime), CAST(N'2007-11-22T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'0', 258, N'Ernst Handel', N'Kirchgasse 6', N'Graz', N'', N'8010', 20, 11)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (826, 2, CAST(N'2010-11-15T00:00:00.000' AS DateTime), CAST(N'2007-12-02T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'0', 24, N'Pericles Comidas clasicas', N'Calle Dr. Jorge Cash 321', N'Mexico D.F.', N'', N'05033', 58, 18)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (827, 7, CAST(N'2011-01-16T00:00:00.000' AS DateTime), CAST(N'2007-12-02T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'0', 18, N'Simons bistro', N'Vinbæltet 34', N'København', N'', N'1734', 73, 14)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (828, 8, CAST(N'2011-03-16T00:00:00.000' AS DateTime), CAST(N'2007-12-03T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'0', 6, N'Richter Supermarkt', N'Starenweg 5', N'Genève', N'', N'1204', 68, 24)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (829, 4, CAST(N'2011-04-02T00:00:00.000' AS DateTime), CAST(N'2007-12-08T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'0', 38, N'Bon app', N'12, rue des Bouchers', N'Marseille', N'', N'13008', 9, 6)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (830, 1, CAST(N'2011-04-19T00:00:00.000' AS DateTime), CAST(N'2007-12-10T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'0', 8, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 65, 4)
GO
INSERT [Ventas].[PedidosCabecera] ([IdPedido], [IdEmpleado], [FechaPedido], [FechaEntrega], [FechaEnvio], [EnvioPedido], [CantidadPedido], [Destinatario], [DireccionDestinatario], [CiudadDestinatario], [ReferenciaDestnatario], [DepartamentoDestinatario], [IdCliente], [IdPaisDestinatario]) VALUES (831, 1, CAST(N'2010-04-26T00:00:00.000' AS DateTime), CAST(N'2007-12-10T00:00:00.000' AS DateTime), CAST(N'1899-12-30T00:00:00.000' AS DateTime), N'0', 8, N'Rattlesnake Canyon Grocery', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', 9, 4)
GO
SET IDENTITY_INSERT [Ventas].[PedidosCabecera] OFF
GO
SET IDENTITY_INSERT [Ventas].[PedidosDetalle] ON 
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (1, 11, CAST(14 AS Decimal(10, 0)), 12, 0, 1)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (1, 42, CAST(9 AS Decimal(10, 0)), 10, 0, 2)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (1, 72, CAST(34 AS Decimal(10, 0)), 5, 0, 3)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (2, 14, CAST(18 AS Decimal(10, 0)), 9, 0, 4)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (2, 51, CAST(42 AS Decimal(10, 0)), 40, 0, 5)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (3, 41, CAST(7 AS Decimal(10, 0)), 10, 0, 6)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (3, 51, CAST(42 AS Decimal(10, 0)), 35, 0.15, 7)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (3, 65, CAST(16 AS Decimal(10, 0)), 15, 0.15, 8)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (4, 22, CAST(16 AS Decimal(10, 0)), 6, 0.05, 9)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (4, 57, CAST(15 AS Decimal(10, 0)), 15, 0.05, 10)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (4, 65, CAST(16 AS Decimal(10, 0)), 20, 0, 11)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (5, 20, CAST(64 AS Decimal(10, 0)), 40, 0.05, 12)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (5, 33, CAST(2 AS Decimal(10, 0)), 25, 0.05, 13)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (5, 60, CAST(27 AS Decimal(10, 0)), 40, 0, 14)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (6, 31, CAST(10 AS Decimal(10, 0)), 20, 0, 15)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (6, 39, CAST(14 AS Decimal(10, 0)), 42, 0, 16)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (6, 49, CAST(16 AS Decimal(10, 0)), 40, 0, 17)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (7, 24, CAST(3 AS Decimal(10, 0)), 15, 0.15, 18)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (7, 55, CAST(19 AS Decimal(10, 0)), 21, 0.15, 19)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (7, 74, CAST(8 AS Decimal(10, 0)), 21, 0, 20)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (8, 2, CAST(15 AS Decimal(10, 0)), 20, 0, 21)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (8, 16, CAST(13 AS Decimal(10, 0)), 35, 0, 22)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (8, 36, CAST(15 AS Decimal(10, 0)), 25, 0, 23)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (8, 59, CAST(44 AS Decimal(10, 0)), 30, 0, 24)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (9, 53, CAST(26 AS Decimal(10, 0)), 15, 0, 25)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (9, 77, CAST(10 AS Decimal(10, 0)), 12, 0, 26)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (10, 27, CAST(35 AS Decimal(10, 0)), 25, 0, 27)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (10, 39, CAST(14 AS Decimal(10, 0)), 6, 0, 28)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (10, 77, CAST(10 AS Decimal(10, 0)), 15, 0, 29)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (11, 2, CAST(15 AS Decimal(10, 0)), 50, 0.2, 30)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (11, 5, CAST(17 AS Decimal(10, 0)), 65, 0.2, 31)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (11, 32, CAST(25 AS Decimal(10, 0)), 6, 0.2, 32)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (12, 21, CAST(8 AS Decimal(10, 0)), 10, 0, 33)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (12, 37, CAST(20 AS Decimal(10, 0)), 1, 0, 34)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (13, 41, CAST(7 AS Decimal(10, 0)), 16, 0.25, 35)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (13, 57, CAST(15 AS Decimal(10, 0)), 50, 0, 36)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (13, 62, CAST(39 AS Decimal(10, 0)), 15, 0.25, 37)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (13, 70, CAST(12 AS Decimal(10, 0)), 21, 0.25, 38)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (14, 21, CAST(8 AS Decimal(10, 0)), 20, 0, 39)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (14, 35, CAST(14 AS Decimal(10, 0)), 20, 0, 40)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (15, 5, CAST(17 AS Decimal(10, 0)), 12, 0.2, 41)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (15, 7, CAST(24 AS Decimal(10, 0)), 15, 0, 42)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (15, 56, CAST(30 AS Decimal(10, 0)), 2, 0, 43)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (16, 16, CAST(13 AS Decimal(10, 0)), 60, 0.25, 44)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (16, 24, CAST(3 AS Decimal(10, 0)), 28, 0, 45)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (16, 30, CAST(20 AS Decimal(10, 0)), 60, 0.25, 46)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (16, 74, CAST(8 AS Decimal(10, 0)), 36, 0.25, 47)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (17, 2, CAST(15 AS Decimal(10, 0)), 35, 0, 48)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (17, 41, CAST(7 AS Decimal(10, 0)), 25, 0.15, 49)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (18, 17, CAST(31 AS Decimal(10, 0)), 30, 0, 50)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (18, 70, CAST(12 AS Decimal(10, 0)), 20, 0, 51)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (19, 12, CAST(30 AS Decimal(10, 0)), 12, 0.05, 52)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (20, 40, CAST(14 AS Decimal(10, 0)), 50, 0, 53)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (20, 59, CAST(44 AS Decimal(10, 0)), 70, 0.15, 54)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (20, 76, CAST(14 AS Decimal(10, 0)), 15, 0.15, 55)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (21, 29, CAST(99 AS Decimal(10, 0)), 10, 0, 56)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (21, 72, CAST(27 AS Decimal(10, 0)), 4, 0, 57)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (22, 33, CAST(2 AS Decimal(10, 0)), 60, 0.05, 58)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (22, 72, CAST(27 AS Decimal(10, 0)), 20, 0.05, 59)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (23, 36, CAST(15 AS Decimal(10, 0)), 30, 0, 60)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (23, 43, CAST(36 AS Decimal(10, 0)), 25, 0, 61)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (24, 33, CAST(2 AS Decimal(10, 0)), 24, 0, 62)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (25, 20, CAST(64 AS Decimal(10, 0)), 6, 0, 63)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (25, 31, CAST(10 AS Decimal(10, 0)), 40, 0, 64)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (25, 72, CAST(27 AS Decimal(10, 0)), 24, 0, 65)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (26, 10, CAST(24 AS Decimal(10, 0)), 24, 0.05, 66)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (26, 31, CAST(10 AS Decimal(10, 0)), 15, 0.05, 67)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (26, 33, CAST(2 AS Decimal(10, 0)), 20, 0, 68)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (26, 40, CAST(14 AS Decimal(10, 0)), 60, 0.05, 69)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (26, 76, CAST(14 AS Decimal(10, 0)), 33, 0.05, 70)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (27, 71, CAST(17 AS Decimal(10, 0)), 20, 0, 71)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (27, 72, CAST(27 AS Decimal(10, 0)), 7, 0, 72)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (28, 24, CAST(3 AS Decimal(10, 0)), 12, 0.05, 73)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (28, 59, CAST(44 AS Decimal(10, 0)), 6, 0.05, 74)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (29, 10, CAST(24 AS Decimal(10, 0)), 15, 0, 75)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (29, 13, CAST(4 AS Decimal(10, 0)), 10, 0, 76)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (30, 28, CAST(36 AS Decimal(10, 0)), 20, 0, 77)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (30, 62, CAST(39 AS Decimal(10, 0)), 12, 0, 78)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (31, 44, CAST(15 AS Decimal(10, 0)), 16, 0, 79)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (31, 59, CAST(44 AS Decimal(10, 0)), 15, 0, 80)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (31, 63, CAST(35 AS Decimal(10, 0)), 8, 0, 81)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (31, 73, CAST(12 AS Decimal(10, 0)), 25, 0, 82)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (32, 17, CAST(31 AS Decimal(10, 0)), 15, 0.25, 83)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (33, 24, CAST(3 AS Decimal(10, 0)), 12, 0, 84)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (33, 55, CAST(19 AS Decimal(10, 0)), 20, 0, 85)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (33, 75, CAST(6 AS Decimal(10, 0)), 30, 0, 86)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (34, 19, CAST(7 AS Decimal(10, 0)), 1, 0, 87)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (34, 24, CAST(3 AS Decimal(10, 0)), 6, 0, 88)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (34, 35, CAST(14 AS Decimal(10, 0)), 4, 0, 89)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (35, 30, CAST(20 AS Decimal(10, 0)), 6, 0, 90)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (35, 57, CAST(15 AS Decimal(10, 0)), 2, 0, 91)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (36, 15, CAST(12 AS Decimal(10, 0)), 20, 0, 92)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (36, 19, CAST(7 AS Decimal(10, 0)), 18, 0, 93)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (36, 60, CAST(27 AS Decimal(10, 0)), 35, 0, 94)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (36, 72, CAST(27 AS Decimal(10, 0)), 3, 0, 95)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (37, 27, CAST(35 AS Decimal(10, 0)), 15, 0.25, 96)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (37, 44, CAST(15 AS Decimal(10, 0)), 21, 0, 97)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (37, 60, CAST(27 AS Decimal(10, 0)), 20, 0.25, 98)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (37, 67, CAST(11 AS Decimal(10, 0)), 5, 0.25, 99)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (38, 1, CAST(14 AS Decimal(10, 0)), 45, 0.2, 100)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (38, 40, CAST(14 AS Decimal(10, 0)), 40, 0.2, 101)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (38, 53, CAST(26 AS Decimal(10, 0)), 36, 0.2, 102)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (39, 35, CAST(14 AS Decimal(10, 0)), 100, 0, 103)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (39, 62, CAST(39 AS Decimal(10, 0)), 40, 0, 104)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (40, 16, CAST(13 AS Decimal(10, 0)), 40, 0.15, 105)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (40, 34, CAST(11 AS Decimal(10, 0)), 20, 0, 106)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (40, 46, CAST(9 AS Decimal(10, 0)), 15, 0.15, 107)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (41, 54, CAST(5 AS Decimal(10, 0)), 10, 0.1, 108)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (41, 68, CAST(10 AS Decimal(10, 0)), 3, 0.1, 109)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (42, 3, CAST(8 AS Decimal(10, 0)), 30, 0, 110)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (42, 64, CAST(26 AS Decimal(10, 0)), 9, 0, 111)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (43, 5, CAST(17 AS Decimal(10, 0)), 20, 0, 112)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (43, 29, CAST(99 AS Decimal(10, 0)), 15, 0, 113)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (43, 49, CAST(16 AS Decimal(10, 0)), 15, 0, 114)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (43, 77, CAST(10 AS Decimal(10, 0)), 10, 0, 115)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (44, 13, CAST(4 AS Decimal(10, 0)), 20, 0.1, 116)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (44, 44, CAST(15 AS Decimal(10, 0)), 24, 0.1, 117)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (44, 51, CAST(42 AS Decimal(10, 0)), 2, 0.1, 118)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (45, 20, CAST(64 AS Decimal(10, 0)), 20, 0, 119)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (46, 18, CAST(50 AS Decimal(10, 0)), 12, 0, 120)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (46, 24, CAST(3 AS Decimal(10, 0)), 10, 0, 121)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (46, 63, CAST(35 AS Decimal(10, 0)), 5, 0, 122)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (46, 75, CAST(6 AS Decimal(10, 0)), 6, 0, 123)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (47, 1, CAST(14 AS Decimal(10, 0)), 18, 0, 124)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (47, 17, CAST(31 AS Decimal(10, 0)), 15, 0, 125)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (47, 43, CAST(36 AS Decimal(10, 0)), 15, 0, 126)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (47, 60, CAST(27 AS Decimal(10, 0)), 21, 0, 127)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (47, 75, CAST(6 AS Decimal(10, 0)), 6, 0, 128)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (48, 56, CAST(30 AS Decimal(10, 0)), 4, 0, 129)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (49, 11, CAST(16 AS Decimal(10, 0)), 12, 0, 130)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (49, 16, CAST(13 AS Decimal(10, 0)), 30, 0, 131)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (49, 69, CAST(28 AS Decimal(10, 0)), 15, 0, 132)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (50, 39, CAST(14 AS Decimal(10, 0)), 60, 0, 133)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (50, 72, CAST(27 AS Decimal(10, 0)), 20, 0, 134)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (51, 2, CAST(15 AS Decimal(10, 0)), 40, 0, 135)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (51, 36, CAST(15 AS Decimal(10, 0)), 40, 0.25, 136)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (51, 59, CAST(44 AS Decimal(10, 0)), 30, 0.25, 137)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (51, 62, CAST(39 AS Decimal(10, 0)), 15, 0, 138)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (52, 19, CAST(7 AS Decimal(10, 0)), 15, 0, 139)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (52, 70, CAST(12 AS Decimal(10, 0)), 20, 0, 140)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (53, 66, CAST(13 AS Decimal(10, 0)), 30, 0, 141)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (53, 68, CAST(10 AS Decimal(10, 0)), 20, 0, 142)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (54, 40, CAST(14 AS Decimal(10, 0)), 10, 0, 143)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (54, 56, CAST(30 AS Decimal(10, 0)), 20, 0, 144)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (55, 17, CAST(31 AS Decimal(10, 0)), 40, 0, 145)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (55, 28, CAST(36 AS Decimal(10, 0)), 28, 0, 146)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (55, 43, CAST(36 AS Decimal(10, 0)), 12, 0, 147)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (56, 40, CAST(14 AS Decimal(10, 0)), 40, 0.1, 148)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (56, 65, CAST(16 AS Decimal(10, 0)), 30, 0.1, 149)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (56, 68, CAST(10 AS Decimal(10, 0)), 15, 0.1, 150)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (57, 49, CAST(16 AS Decimal(10, 0)), 30, 0, 151)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (57, 59, CAST(44 AS Decimal(10, 0)), 10, 0, 152)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (57, 71, CAST(17 AS Decimal(10, 0)), 2, 0, 153)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (58, 18, CAST(50 AS Decimal(10, 0)), 25, 0.1, 154)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (58, 29, CAST(99 AS Decimal(10, 0)), 25, 0.1, 155)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (58, 39, CAST(14 AS Decimal(10, 0)), 30, 0.1, 156)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (59, 30, CAST(20 AS Decimal(10, 0)), 10, 0, 157)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (59, 53, CAST(26 AS Decimal(10, 0)), 10, 0, 158)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (59, 54, CAST(5 AS Decimal(10, 0)), 5, 0, 159)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (60, 62, CAST(39 AS Decimal(10, 0)), 10, 0, 160)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (60, 68, CAST(10 AS Decimal(10, 0)), 3, 0, 161)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (61, 69, CAST(28 AS Decimal(10, 0)), 1, 0, 162)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (61, 70, CAST(12 AS Decimal(10, 0)), 5, 0, 163)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (62, 4, CAST(17 AS Decimal(10, 0)), 20, 0, 164)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (62, 6, CAST(20 AS Decimal(10, 0)), 30, 0, 165)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (62, 42, CAST(11 AS Decimal(10, 0)), 2, 0, 166)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (62, 43, CAST(36 AS Decimal(10, 0)), 20, 0, 167)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (62, 71, CAST(17 AS Decimal(10, 0)), 3, 0, 168)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (63, 16, CAST(13 AS Decimal(10, 0)), 10, 0, 169)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (63, 62, CAST(39 AS Decimal(10, 0)), 5, 0, 170)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (64, 42, CAST(11 AS Decimal(10, 0)), 6, 0, 171)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (64, 69, CAST(28 AS Decimal(10, 0)), 7, 0, 172)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (65, 28, CAST(36 AS Decimal(10, 0)), 4, 0, 173)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (65, 43, CAST(36 AS Decimal(10, 0)), 24, 0, 174)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (65, 53, CAST(26 AS Decimal(10, 0)), 20, 0, 175)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (65, 75, CAST(6 AS Decimal(10, 0)), 10, 0, 176)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (66, 36, CAST(15 AS Decimal(10, 0)), 12, 0, 177)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (67, 32, CAST(25 AS Decimal(10, 0)), 40, 0.1, 178)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (67, 58, CAST(10 AS Decimal(10, 0)), 30, 0.1, 179)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (67, 62, CAST(39 AS Decimal(10, 0)), 25, 0.1, 180)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (68, 34, CAST(11 AS Decimal(10, 0)), 14, 0, 181)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (68, 70, CAST(12 AS Decimal(10, 0)), 30, 0, 182)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (69, 41, CAST(7 AS Decimal(10, 0)), 10, 0, 183)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (69, 62, CAST(39 AS Decimal(10, 0)), 70, 0, 184)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (70, 1, CAST(14 AS Decimal(10, 0)), 20, 0, 185)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (71, 41, CAST(7 AS Decimal(10, 0)), 20, 0, 186)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (71, 76, CAST(14 AS Decimal(10, 0)), 6, 0, 187)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (72, 17, CAST(31 AS Decimal(10, 0)), 8, 0, 188)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (72, 28, CAST(36 AS Decimal(10, 0)), 14, 0, 189)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (72, 76, CAST(14 AS Decimal(10, 0)), 30, 0, 190)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (73, 71, CAST(17 AS Decimal(10, 0)), 30, 0, 191)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (74, 35, CAST(14 AS Decimal(10, 0)), 10, 0, 192)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (75, 52, CAST(5 AS Decimal(10, 0)), 20, 0, 193)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (76, 15, CAST(12 AS Decimal(10, 0)), 5, 0, 194)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (76, 25, CAST(11 AS Decimal(10, 0)), 4, 0, 195)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (76, 39, CAST(14 AS Decimal(10, 0)), 4, 0, 196)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (77, 16, CAST(13 AS Decimal(10, 0)), 21, 0.15, 197)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (77, 35, CAST(14 AS Decimal(10, 0)), 70, 0.15, 198)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (77, 46, CAST(9 AS Decimal(10, 0)), 30, 0, 199)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (77, 59, CAST(44 AS Decimal(10, 0)), 40, 0.15, 200)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (77, 63, CAST(35 AS Decimal(10, 0)), 80, 0.15, 201)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (78, 6, CAST(20 AS Decimal(10, 0)), 6, 0, 202)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (78, 13, CAST(4 AS Decimal(10, 0)), 12, 0, 203)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (78, 14, CAST(18 AS Decimal(10, 0)), 9, 0, 204)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (78, 31, CAST(10 AS Decimal(10, 0)), 4, 0, 205)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (78, 72, CAST(27 AS Decimal(10, 0)), 40, 0, 206)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (79, 4, CAST(17 AS Decimal(10, 0)), 24, 0, 207)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (79, 57, CAST(15 AS Decimal(10, 0)), 16, 0, 208)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (79, 75, CAST(6 AS Decimal(10, 0)), 50, 0, 209)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (80, 2, CAST(15 AS Decimal(10, 0)), 25, 0.2, 210)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (80, 11, CAST(16 AS Decimal(10, 0)), 50, 0.2, 211)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (80, 30, CAST(20 AS Decimal(10, 0)), 35, 0.2, 212)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (80, 58, CAST(10 AS Decimal(10, 0)), 30, 0.2, 213)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (81, 59, CAST(44 AS Decimal(10, 0)), 9, 0, 214)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (81, 65, CAST(16 AS Decimal(10, 0)), 40, 0, 215)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (81, 68, CAST(10 AS Decimal(10, 0)), 10, 0, 216)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (82, 19, CAST(7 AS Decimal(10, 0)), 10, 0.05, 217)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (82, 30, CAST(20 AS Decimal(10, 0)), 8, 0.05, 218)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (82, 38, CAST(210 AS Decimal(10, 0)), 20, 0.05, 219)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (82, 56, CAST(30 AS Decimal(10, 0)), 12, 0.05, 220)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (83, 26, CAST(24 AS Decimal(10, 0)), 50, 0.15, 221)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (83, 72, CAST(27 AS Decimal(10, 0)), 25, 0.15, 222)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (84, 54, CAST(5 AS Decimal(10, 0)), 15, 0, 223)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (85, 18, CAST(50 AS Decimal(10, 0)), 40, 0.2, 224)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (85, 42, CAST(11 AS Decimal(10, 0)), 10, 0.2, 225)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (85, 47, CAST(7 AS Decimal(10, 0)), 16, 0.2, 226)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (86, 14, CAST(18 AS Decimal(10, 0)), 10, 0, 227)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (86, 21, CAST(8 AS Decimal(10, 0)), 10, 0.1, 228)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (86, 71, CAST(17 AS Decimal(10, 0)), 40, 0.1, 229)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (87, 52, CAST(5 AS Decimal(10, 0)), 8, 0, 230)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (87, 68, CAST(10 AS Decimal(10, 0)), 10, 0, 231)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (88, 2, CAST(15 AS Decimal(10, 0)), 7, 0.2, 232)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (88, 31, CAST(10 AS Decimal(10, 0)), 25, 0.2, 233)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (88, 32, CAST(25 AS Decimal(10, 0)), 6, 0.2, 234)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (88, 51, CAST(42 AS Decimal(10, 0)), 48, 0.2, 235)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (89, 4, CAST(17 AS Decimal(10, 0)), 18, 0.1, 236)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (90, 23, CAST(7 AS Decimal(10, 0)), 40, 0, 237)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (90, 26, CAST(24 AS Decimal(10, 0)), 24, 0, 238)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (90, 36, CAST(15 AS Decimal(10, 0)), 20, 0, 239)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (90, 37, CAST(20 AS Decimal(10, 0)), 28, 0, 240)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (90, 72, CAST(27 AS Decimal(10, 0)), 25, 0, 241)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (91, 17, CAST(31 AS Decimal(10, 0)), 20, 0, 242)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (91, 30, CAST(20 AS Decimal(10, 0)), 15, 0, 243)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (92, 4, CAST(17 AS Decimal(10, 0)), 10, 0, 244)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (92, 17, CAST(31 AS Decimal(10, 0)), 70, 0.05, 245)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (92, 62, CAST(39 AS Decimal(10, 0)), 28, 0, 246)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (93, 18, CAST(50 AS Decimal(10, 0)), 20, 0.05, 247)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (93, 41, CAST(7 AS Decimal(10, 0)), 12, 0.05, 248)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (93, 43, CAST(36 AS Decimal(10, 0)), 40, 0.05, 249)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (94, 33, CAST(2 AS Decimal(10, 0)), 8, 0, 250)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (94, 59, CAST(44 AS Decimal(10, 0)), 9, 0.15, 251)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (95, 2, CAST(15 AS Decimal(10, 0)), 24, 0.2, 252)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (95, 31, CAST(10 AS Decimal(10, 0)), 56, 0.2, 253)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (95, 36, CAST(15 AS Decimal(10, 0)), 40, 0.2, 254)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (95, 55, CAST(19 AS Decimal(10, 0)), 40, 0.2, 255)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (96, 64, CAST(26 AS Decimal(10, 0)), 50, 0, 256)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (96, 68, CAST(10 AS Decimal(10, 0)), 4, 0.05, 257)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (96, 76, CAST(14 AS Decimal(10, 0)), 15, 0, 258)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (97, 4, CAST(17 AS Decimal(10, 0)), 35, 0, 259)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (97, 8, CAST(32 AS Decimal(10, 0)), 70, 0.25, 260)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (98, 8, CAST(32 AS Decimal(10, 0)), 70, 0, 261)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (98, 19, CAST(7 AS Decimal(10, 0)), 80, 0, 262)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (98, 42, CAST(11 AS Decimal(10, 0)), 9, 0, 263)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (99, 17, CAST(31 AS Decimal(10, 0)), 36, 0.1, 264)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (99, 56, CAST(30 AS Decimal(10, 0)), 20, 0, 265)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (100, 25, CAST(11 AS Decimal(10, 0)), 10, 0, 266)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (100, 39, CAST(14 AS Decimal(10, 0)), 50, 0.15, 267)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (100, 40, CAST(14 AS Decimal(10, 0)), 4, 0, 268)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (100, 75, CAST(6 AS Decimal(10, 0)), 6, 0.15, 269)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (101, 1, CAST(14 AS Decimal(10, 0)), 15, 0.15, 270)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (101, 23, CAST(7 AS Decimal(10, 0)), 25, 0, 271)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (102, 54, CAST(5 AS Decimal(10, 0)), 24, 0, 272)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (103, 50, CAST(13 AS Decimal(10, 0)), 15, 0.1, 273)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (103, 69, CAST(28 AS Decimal(10, 0)), 18, 0.1, 274)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (104, 38, CAST(210 AS Decimal(10, 0)), 20, 0.05, 275)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (104, 41, CAST(7 AS Decimal(10, 0)), 13, 0, 276)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (104, 44, CAST(15 AS Decimal(10, 0)), 77, 0.05, 277)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (104, 65, CAST(16 AS Decimal(10, 0)), 10, 0.05, 278)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (105, 24, CAST(3 AS Decimal(10, 0)), 10, 0, 279)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (105, 54, CAST(5 AS Decimal(10, 0)), 20, 0.15, 280)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (106, 11, CAST(16 AS Decimal(10, 0)), 12, 0.2, 281)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (106, 38, CAST(210 AS Decimal(10, 0)), 50, 0.2, 282)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (107, 1, CAST(14 AS Decimal(10, 0)), 12, 0, 283)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (107, 29, CAST(99 AS Decimal(10, 0)), 4, 0, 284)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (108, 24, CAST(3 AS Decimal(10, 0)), 25, 0, 285)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (108, 57, CAST(15 AS Decimal(10, 0)), 25, 0, 286)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (109, 31, CAST(10 AS Decimal(10, 0)), 30, 0, 287)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (109, 55, CAST(19 AS Decimal(10, 0)), 12, 0, 288)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (109, 69, CAST(28 AS Decimal(10, 0)), 20, 0, 289)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (110, 10, CAST(24 AS Decimal(10, 0)), 30, 0.2, 290)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (110, 26, CAST(24 AS Decimal(10, 0)), 16, 0, 291)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (110, 60, CAST(27 AS Decimal(10, 0)), 8, 0.2, 292)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (111, 24, CAST(3 AS Decimal(10, 0)), 10, 0.05, 293)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (111, 34, CAST(11 AS Decimal(10, 0)), 10, 0.05, 294)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (111, 36, CAST(15 AS Decimal(10, 0)), 20, 0.05, 295)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (112, 16, CAST(13 AS Decimal(10, 0)), 56, 0.05, 296)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (112, 31, CAST(10 AS Decimal(10, 0)), 70, 0.05, 297)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (112, 60, CAST(27 AS Decimal(10, 0)), 80, 0.05, 298)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (113, 28, CAST(36 AS Decimal(10, 0)), 30, 0, 299)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (113, 29, CAST(99 AS Decimal(10, 0)), 35, 0, 300)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (113, 38, CAST(210 AS Decimal(10, 0)), 10, 0, 301)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (113, 49, CAST(16 AS Decimal(10, 0)), 35, 0, 302)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (113, 54, CAST(5 AS Decimal(10, 0)), 28, 0, 303)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (114, 39, CAST(14 AS Decimal(10, 0)), 54, 0.1, 304)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (114, 60, CAST(27 AS Decimal(10, 0)), 55, 0.1, 305)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (115, 25, CAST(11 AS Decimal(10, 0)), 50, 0, 306)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (115, 51, CAST(42 AS Decimal(10, 0)), 20, 0, 307)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (115, 54, CAST(5 AS Decimal(10, 0)), 24, 0, 308)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (116, 31, CAST(10 AS Decimal(10, 0)), 20, 0, 309)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (116, 75, CAST(6 AS Decimal(10, 0)), 12, 0, 310)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (116, 76, CAST(14 AS Decimal(10, 0)), 12, 0, 311)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (117, 69, CAST(28 AS Decimal(10, 0)), 30, 0, 312)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (117, 71, CAST(17 AS Decimal(10, 0)), 5, 0, 313)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (118, 11, CAST(16 AS Decimal(10, 0)), 24, 0, 314)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (119, 65, CAST(16 AS Decimal(10, 0)), 5, 0, 315)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (119, 77, CAST(10 AS Decimal(10, 0)), 5, 0, 316)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (120, 34, CAST(11 AS Decimal(10, 0)), 36, 0, 317)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (120, 54, CAST(5 AS Decimal(10, 0)), 18, 0, 318)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (120, 65, CAST(16 AS Decimal(10, 0)), 15, 0, 319)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (120, 77, CAST(10 AS Decimal(10, 0)), 7, 0, 320)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (121, 21, CAST(8 AS Decimal(10, 0)), 5, 0.1, 321)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (121, 28, CAST(36 AS Decimal(10, 0)), 13, 0.1, 322)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (121, 57, CAST(15 AS Decimal(10, 0)), 25, 0, 323)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (121, 64, CAST(26 AS Decimal(10, 0)), 35, 0.1, 324)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (122, 29, CAST(99 AS Decimal(10, 0)), 20, 0, 325)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (122, 56, CAST(30 AS Decimal(10, 0)), 18, 0.25, 326)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (123, 1, CAST(14 AS Decimal(10, 0)), 15, 0.15, 327)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (123, 64, CAST(26 AS Decimal(10, 0)), 30, 0, 328)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (123, 74, CAST(8 AS Decimal(10, 0)), 20, 0.15, 329)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (124, 36, CAST(15 AS Decimal(10, 0)), 6, 0.2, 330)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (125, 20, CAST(64 AS Decimal(10, 0)), 12, 0.25, 331)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (125, 38, CAST(210 AS Decimal(10, 0)), 40, 0.25, 332)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (125, 60, CAST(27 AS Decimal(10, 0)), 70, 0.25, 333)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (125, 72, CAST(27 AS Decimal(10, 0)), 42, 0.25, 334)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (126, 58, CAST(10 AS Decimal(10, 0)), 80, 0.2, 335)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (126, 71, CAST(17 AS Decimal(10, 0)), 50, 0.2, 336)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (127, 31, CAST(10 AS Decimal(10, 0)), 30, 0, 337)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (127, 58, CAST(10 AS Decimal(10, 0)), 15, 0, 338)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (128, 14, CAST(18 AS Decimal(10, 0)), 15, 0, 339)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (128, 54, CAST(5 AS Decimal(10, 0)), 10, 0, 340)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (129, 31, CAST(10 AS Decimal(10, 0)), 42, 0.05, 341)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (130, 28, CAST(36 AS Decimal(10, 0)), 20, 0.15, 342)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (130, 39, CAST(14 AS Decimal(10, 0)), 20, 0.15, 343)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (131, 71, CAST(17 AS Decimal(10, 0)), 6, 0, 344)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (132, 41, CAST(7 AS Decimal(10, 0)), 8, 0.1, 345)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (132, 63, CAST(35 AS Decimal(10, 0)), 16, 0.1, 346)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (132, 65, CAST(16 AS Decimal(10, 0)), 20, 0.1, 347)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (133, 30, CAST(20 AS Decimal(10, 0)), 18, 0.1, 348)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (133, 53, CAST(26 AS Decimal(10, 0)), 20, 0.1, 349)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (133, 60, CAST(27 AS Decimal(10, 0)), 6, 0.1, 350)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (133, 70, CAST(12 AS Decimal(10, 0)), 30, 0, 351)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (134, 74, CAST(8 AS Decimal(10, 0)), 14, 0, 352)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (135, 5, CAST(17 AS Decimal(10, 0)), 32, 0, 353)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (135, 18, CAST(50 AS Decimal(10, 0)), 9, 0, 354)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (135, 29, CAST(99 AS Decimal(10, 0)), 14, 0, 355)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (135, 33, CAST(2 AS Decimal(10, 0)), 60, 0, 356)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (135, 74, CAST(8 AS Decimal(10, 0)), 50, 0, 357)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (136, 13, CAST(4 AS Decimal(10, 0)), 20, 0, 358)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (136, 50, CAST(13 AS Decimal(10, 0)), 15, 0, 359)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (136, 56, CAST(30 AS Decimal(10, 0)), 20, 0, 360)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (137, 20, CAST(64 AS Decimal(10, 0)), 28, 0, 361)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (137, 60, CAST(27 AS Decimal(10, 0)), 15, 0, 362)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (138, 7, CAST(24 AS Decimal(10, 0)), 10, 0.2, 363)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (138, 60, CAST(27 AS Decimal(10, 0)), 20, 0.2, 364)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (138, 68, CAST(10 AS Decimal(10, 0)), 8, 0.2, 365)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (139, 24, CAST(3 AS Decimal(10, 0)), 15, 0, 366)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (139, 34, CAST(11 AS Decimal(10, 0)), 10, 0, 367)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (140, 24, CAST(3 AS Decimal(10, 0)), 15, 0, 368)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (140, 28, CAST(36 AS Decimal(10, 0)), 6, 0, 369)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (140, 59, CAST(44 AS Decimal(10, 0)), 12, 0, 370)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (140, 71, CAST(17 AS Decimal(10, 0)), 15, 0, 371)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (141, 45, CAST(7 AS Decimal(10, 0)), 15, 0.2, 372)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (141, 52, CAST(5 AS Decimal(10, 0)), 20, 0.2, 373)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (141, 53, CAST(26 AS Decimal(10, 0)), 40, 0, 374)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (142, 10, CAST(24 AS Decimal(10, 0)), 16, 0, 375)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (142, 55, CAST(19 AS Decimal(10, 0)), 15, 0, 376)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (142, 62, CAST(39 AS Decimal(10, 0)), 20, 0, 377)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (142, 70, CAST(12 AS Decimal(10, 0)), 30, 0, 378)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (143, 31, CAST(10 AS Decimal(10, 0)), 60, 0.1, 379)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (143, 35, CAST(14 AS Decimal(10, 0)), 40, 0.1, 380)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (143, 46, CAST(9 AS Decimal(10, 0)), 45, 0, 381)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (143, 72, CAST(27 AS Decimal(10, 0)), 24, 0.1, 382)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (144, 13, CAST(4 AS Decimal(10, 0)), 18, 0, 383)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (145, 69, CAST(28 AS Decimal(10, 0)), 50, 0, 384)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (146, 2, CAST(15 AS Decimal(10, 0)), 25, 0.25, 385)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (146, 14, CAST(18 AS Decimal(10, 0)), 42, 0.25, 386)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (146, 25, CAST(11 AS Decimal(10, 0)), 7, 0.25, 387)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (146, 26, CAST(24 AS Decimal(10, 0)), 70, 0.25, 388)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (146, 31, CAST(10 AS Decimal(10, 0)), 32, 0, 389)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (147, 13, CAST(4 AS Decimal(10, 0)), 10, 0, 390)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (147, 62, CAST(39 AS Decimal(10, 0)), 10, 0, 391)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (148, 46, CAST(9 AS Decimal(10, 0)), 28, 0.1, 392)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (148, 53, CAST(26 AS Decimal(10, 0)), 70, 0.1, 393)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (148, 69, CAST(28 AS Decimal(10, 0)), 8, 0, 394)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (149, 23, CAST(7 AS Decimal(10, 0)), 40, 0, 395)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (149, 71, CAST(17 AS Decimal(10, 0)), 60, 0, 396)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (149, 72, CAST(27 AS Decimal(10, 0)), 21, 0, 397)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (150, 21, CAST(8 AS Decimal(10, 0)), 10, 0.15, 398)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (150, 51, CAST(42 AS Decimal(10, 0)), 18, 0.15, 399)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (151, 35, CAST(14 AS Decimal(10, 0)), 30, 0, 400)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (151, 55, CAST(19 AS Decimal(10, 0)), 120, 0.1, 401)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (152, 68, CAST(10 AS Decimal(10, 0)), 60, 0, 402)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (152, 71, CAST(17 AS Decimal(10, 0)), 30, 0, 403)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (152, 76, CAST(14 AS Decimal(10, 0)), 35, 0, 404)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (152, 77, CAST(10 AS Decimal(10, 0)), 14, 0, 405)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (153, 29, CAST(99 AS Decimal(10, 0)), 21, 0, 406)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (153, 35, CAST(14 AS Decimal(10, 0)), 35, 0, 407)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (153, 49, CAST(16 AS Decimal(10, 0)), 30, 0, 408)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (154, 30, CAST(20 AS Decimal(10, 0)), 18, 0, 409)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (154, 56, CAST(30 AS Decimal(10, 0)), 70, 0, 410)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (154, 65, CAST(16 AS Decimal(10, 0)), 20, 0, 411)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (154, 71, CAST(17 AS Decimal(10, 0)), 60, 0, 412)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (155, 23, CAST(7 AS Decimal(10, 0)), 60, 0, 413)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (155, 63, CAST(35 AS Decimal(10, 0)), 65, 0, 414)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (156, 16, CAST(13 AS Decimal(10, 0)), 21, 0.15, 415)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (156, 48, CAST(10 AS Decimal(10, 0)), 70, 0.15, 416)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (157, 26, CAST(24 AS Decimal(10, 0)), 30, 0.05, 417)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (157, 42, CAST(11 AS Decimal(10, 0)), 40, 0.05, 418)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (157, 49, CAST(16 AS Decimal(10, 0)), 30, 0.05, 419)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (158, 3, CAST(8 AS Decimal(10, 0)), 50, 0, 420)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (159, 1, CAST(14 AS Decimal(10, 0)), 10, 0, 421)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (159, 21, CAST(8 AS Decimal(10, 0)), 30, 0.1, 422)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (159, 28, CAST(36 AS Decimal(10, 0)), 42, 0.1, 423)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (159, 36, CAST(15 AS Decimal(10, 0)), 5, 0.1, 424)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (159, 40, CAST(14 AS Decimal(10, 0)), 2, 0.1, 425)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (160, 11, CAST(16 AS Decimal(10, 0)), 30, 0, 426)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (160, 69, CAST(28 AS Decimal(10, 0)), 15, 0, 427)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (160, 71, CAST(17 AS Decimal(10, 0)), 15, 0, 428)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (161, 37, CAST(20 AS Decimal(10, 0)), 10, 0, 429)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (161, 54, CAST(5 AS Decimal(10, 0)), 6, 0, 430)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (161, 62, CAST(39 AS Decimal(10, 0)), 35, 0, 431)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (162, 14, CAST(18 AS Decimal(10, 0)), 12, 0, 432)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (162, 21, CAST(8 AS Decimal(10, 0)), 12, 0, 433)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (163, 33, CAST(2 AS Decimal(10, 0)), 49, 0, 434)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (163, 59, CAST(44 AS Decimal(10, 0)), 16, 0, 435)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (164, 41, CAST(7 AS Decimal(10, 0)), 25, 0.2, 436)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (164, 44, CAST(15 AS Decimal(10, 0)), 40, 0.2, 437)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (164, 59, CAST(44 AS Decimal(10, 0)), 9, 0.2, 438)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (165, 14, CAST(18 AS Decimal(10, 0)), 20, 0.1, 439)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (166, 1, CAST(14 AS Decimal(10, 0)), 24, 0, 440)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (166, 62, CAST(39 AS Decimal(10, 0)), 40, 0, 441)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (166, 76, CAST(14 AS Decimal(10, 0)), 14, 0, 442)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (167, 19, CAST(7 AS Decimal(10, 0)), 18, 0.05, 443)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (167, 33, CAST(2 AS Decimal(10, 0)), 50, 0, 444)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (168, 17, CAST(31 AS Decimal(10, 0)), 2, 0, 445)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (168, 33, CAST(2 AS Decimal(10, 0)), 20, 0, 446)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (169, 19, CAST(7 AS Decimal(10, 0)), 20, 0, 447)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (169, 53, CAST(26 AS Decimal(10, 0)), 10, 0, 448)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (169, 57, CAST(15 AS Decimal(10, 0)), 20, 0, 449)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (170, 38, CAST(210 AS Decimal(10, 0)), 50, 0, 450)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (170, 46, CAST(9 AS Decimal(10, 0)), 2, 0.25, 451)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (170, 68, CAST(10 AS Decimal(10, 0)), 36, 0.25, 452)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (170, 77, CAST(10 AS Decimal(10, 0)), 35, 0, 453)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (171, 2, CAST(15 AS Decimal(10, 0)), 60, 0, 454)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (171, 47, CAST(7 AS Decimal(10, 0)), 55, 0, 455)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (171, 61, CAST(22 AS Decimal(10, 0)), 16, 0, 456)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (171, 74, CAST(8 AS Decimal(10, 0)), 15, 0, 457)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (172, 60, CAST(27 AS Decimal(10, 0)), 60, 0.05, 458)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (172, 69, CAST(28 AS Decimal(10, 0)), 20, 0.05, 459)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (173, 9, CAST(77 AS Decimal(10, 0)), 20, 0.1, 460)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (173, 13, CAST(4 AS Decimal(10, 0)), 2, 0.1, 461)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (173, 70, CAST(12 AS Decimal(10, 0)), 8, 0.1, 462)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (173, 73, CAST(12 AS Decimal(10, 0)), 20, 0.1, 463)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (174, 19, CAST(7 AS Decimal(10, 0)), 4, 0.15, 464)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (174, 26, CAST(24 AS Decimal(10, 0)), 30, 0, 465)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (174, 53, CAST(26 AS Decimal(10, 0)), 15, 0.15, 466)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (174, 77, CAST(10 AS Decimal(10, 0)), 10, 0.15, 467)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (175, 26, CAST(24 AS Decimal(10, 0)), 2, 0, 468)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (176, 31, CAST(10 AS Decimal(10, 0)), 14, 0, 469)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (176, 59, CAST(44 AS Decimal(10, 0)), 20, 0, 470)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (177, 35, CAST(14 AS Decimal(10, 0)), 60, 0.2, 471)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (177, 38, CAST(210 AS Decimal(10, 0)), 49, 0.2, 472)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (177, 68, CAST(10 AS Decimal(10, 0)), 30, 0.2, 473)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (178, 55, CAST(19 AS Decimal(10, 0)), 10, 0.25, 474)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (178, 76, CAST(14 AS Decimal(10, 0)), 20, 0.25, 475)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (179, 56, CAST(30 AS Decimal(10, 0)), 5, 0, 476)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (179, 64, CAST(26 AS Decimal(10, 0)), 7, 0, 477)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (180, 14, CAST(18 AS Decimal(10, 0)), 35, 0, 478)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (181, 46, CAST(9 AS Decimal(10, 0)), 20, 0, 479)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (182, 50, CAST(13 AS Decimal(10, 0)), 40, 0, 480)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (182, 63, CAST(35 AS Decimal(10, 0)), 35, 0.25, 481)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (183, 17, CAST(31 AS Decimal(10, 0)), 45, 0.2, 482)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (183, 21, CAST(8 AS Decimal(10, 0)), 50, 0, 483)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (183, 56, CAST(30 AS Decimal(10, 0)), 30, 0, 484)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (183, 59, CAST(44 AS Decimal(10, 0)), 70, 0.2, 485)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (184, 17, CAST(31 AS Decimal(10, 0)), 50, 0.25, 486)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (184, 40, CAST(14 AS Decimal(10, 0)), 50, 0.25, 487)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (184, 47, CAST(7 AS Decimal(10, 0)), 30, 0.25, 488)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (185, 26, CAST(24 AS Decimal(10, 0)), 10, 0, 489)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (185, 54, CAST(5 AS Decimal(10, 0)), 40, 0, 490)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (186, 56, CAST(30 AS Decimal(10, 0)), 28, 0, 491)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (187, 11, CAST(16 AS Decimal(10, 0)), 6, 0, 492)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (187, 76, CAST(14 AS Decimal(10, 0)), 18, 0.15, 493)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (188, 2, CAST(15 AS Decimal(10, 0)), 10, 0, 494)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (188, 22, CAST(16 AS Decimal(10, 0)), 12, 0, 495)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (188, 72, CAST(27 AS Decimal(10, 0)), 10, 0, 496)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (189, 46, CAST(9 AS Decimal(10, 0)), 5, 0, 497)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (189, 56, CAST(30 AS Decimal(10, 0)), 40, 0.1, 498)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (189, 64, CAST(26 AS Decimal(10, 0)), 30, 0.1, 499)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (189, 75, CAST(6 AS Decimal(10, 0)), 24, 0.1, 500)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (190, 53, CAST(26 AS Decimal(10, 0)), 15, 0, 501)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (191, 19, CAST(7 AS Decimal(10, 0)), 15, 0.2, 502)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (191, 34, CAST(11 AS Decimal(10, 0)), 20, 0.2, 503)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (191, 57, CAST(15 AS Decimal(10, 0)), 15, 0.2, 504)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (192, 12, CAST(30 AS Decimal(10, 0)), 15, 0, 505)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (192, 16, CAST(13 AS Decimal(10, 0)), 16, 0, 506)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (192, 64, CAST(26 AS Decimal(10, 0)), 6, 0, 507)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (192, 74, CAST(8 AS Decimal(10, 0)), 30, 0, 508)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (193, 2, CAST(15 AS Decimal(10, 0)), 45, 0.15, 509)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (193, 16, CAST(13 AS Decimal(10, 0)), 49, 0.15, 510)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (193, 29, CAST(99 AS Decimal(10, 0)), 24, 0.15, 511)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (193, 61, CAST(22 AS Decimal(10, 0)), 90, 0.15, 512)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (194, 27, CAST(35 AS Decimal(10, 0)), 50, 0, 513)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (195, 11, CAST(16 AS Decimal(10, 0)), 30, 0, 514)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (195, 54, CAST(5 AS Decimal(10, 0)), 80, 0, 515)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (195, 66, CAST(13 AS Decimal(10, 0)), 60, 0, 516)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (196, 11, CAST(16 AS Decimal(10, 0)), 6, 0.2, 517)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (196, 28, CAST(36 AS Decimal(10, 0)), 12, 0, 518)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (197, 17, CAST(31 AS Decimal(10, 0)), 10, 0, 519)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (197, 26, CAST(24 AS Decimal(10, 0)), 15, 0, 520)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (197, 35, CAST(14 AS Decimal(10, 0)), 8, 0, 521)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (197, 41, CAST(7 AS Decimal(10, 0)), 30, 0, 522)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (198, 39, CAST(14 AS Decimal(10, 0)), 6, 0, 523)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (198, 54, CAST(5 AS Decimal(10, 0)), 15, 0, 524)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (199, 19, CAST(7 AS Decimal(10, 0)), 12, 0.1, 525)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (199, 24, CAST(3 AS Decimal(10, 0)), 20, 0.1, 526)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (199, 31, CAST(10 AS Decimal(10, 0)), 3, 0.1, 527)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (199, 52, CAST(5 AS Decimal(10, 0)), 15, 0.1, 528)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (200, 19, CAST(7 AS Decimal(10, 0)), 40, 0, 529)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (200, 65, CAST(16 AS Decimal(10, 0)), 35, 0, 530)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (200, 71, CAST(17 AS Decimal(10, 0)), 2, 0, 531)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (201, 26, CAST(24 AS Decimal(10, 0)), 6, 0, 532)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (201, 40, CAST(14 AS Decimal(10, 0)), 20, 0, 533)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (202, 10, CAST(24 AS Decimal(10, 0)), 14, 0, 534)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (202, 52, CAST(5 AS Decimal(10, 0)), 20, 0, 535)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (202, 62, CAST(39 AS Decimal(10, 0)), 35, 0, 536)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (203, 10, CAST(24 AS Decimal(10, 0)), 20, 0.2, 537)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (203, 54, CAST(5 AS Decimal(10, 0)), 6, 0.2, 538)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (204, 55, CAST(19 AS Decimal(10, 0)), 120, 0.1, 539)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (204, 64, CAST(26 AS Decimal(10, 0)), 35, 0.1, 540)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (204, 65, CAST(16 AS Decimal(10, 0)), 28, 0.1, 541)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (204, 77, CAST(10 AS Decimal(10, 0)), 55, 0.1, 542)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (205, 28, CAST(36 AS Decimal(10, 0)), 15, 0, 543)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (205, 44, CAST(15 AS Decimal(10, 0)), 100, 0.05, 544)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (206, 48, CAST(10 AS Decimal(10, 0)), 15, 0.1, 545)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (206, 70, CAST(12 AS Decimal(10, 0)), 25, 0.1, 546)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (207, 16, CAST(13 AS Decimal(10, 0)), 20, 0.2, 547)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (207, 33, CAST(2 AS Decimal(10, 0)), 20, 0.2, 548)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (207, 46, CAST(9 AS Decimal(10, 0)), 10, 0.2, 549)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (208, 39, CAST(14 AS Decimal(10, 0)), 20, 0, 550)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (208, 53, CAST(26 AS Decimal(10, 0)), 50, 0, 551)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (208, 61, CAST(22 AS Decimal(10, 0)), 25, 0, 552)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (208, 71, CAST(17 AS Decimal(10, 0)), 30, 0, 553)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (209, 21, CAST(8 AS Decimal(10, 0)), 40, 0.15, 554)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (209, 49, CAST(16 AS Decimal(10, 0)), 21, 0.15, 555)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (210, 59, CAST(44 AS Decimal(10, 0)), 36, 0, 556)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (211, 26, CAST(24 AS Decimal(10, 0)), 30, 0, 557)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (211, 28, CAST(36 AS Decimal(10, 0)), 30, 0, 558)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (211, 43, CAST(36 AS Decimal(10, 0)), 20, 0, 559)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (211, 56, CAST(30 AS Decimal(10, 0)), 15, 0, 560)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (211, 71, CAST(17 AS Decimal(10, 0)), 50, 0, 561)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (212, 7, CAST(24 AS Decimal(10, 0)), 16, 0.05, 562)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (212, 46, CAST(9 AS Decimal(10, 0)), 20, 0.05, 563)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (212, 72, CAST(27 AS Decimal(10, 0)), 40, 0, 564)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (213, 68, CAST(10 AS Decimal(10, 0)), 21, 0.25, 565)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (213, 75, CAST(6 AS Decimal(10, 0)), 4, 0.25, 566)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (214, 21, CAST(8 AS Decimal(10, 0)), 40, 0.25, 567)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (214, 30, CAST(20 AS Decimal(10, 0)), 28, 0.25, 568)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (214, 55, CAST(19 AS Decimal(10, 0)), 60, 0.25, 569)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (215, 13, CAST(4 AS Decimal(10, 0)), 1, 0, 570)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (215, 23, CAST(7 AS Decimal(10, 0)), 21, 0, 571)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (216, 19, CAST(7 AS Decimal(10, 0)), 21, 0, 572)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (216, 42, CAST(11 AS Decimal(10, 0)), 50, 0, 573)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (217, 4, CAST(17 AS Decimal(10, 0)), 16, 0.2, 574)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (217, 43, CAST(36 AS Decimal(10, 0)), 3, 0, 575)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (217, 56, CAST(30 AS Decimal(10, 0)), 30, 0.2, 576)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (217, 60, CAST(27 AS Decimal(10, 0)), 20, 0, 577)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (218, 24, CAST(3 AS Decimal(10, 0)), 25, 0, 578)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (218, 29, CAST(99 AS Decimal(10, 0)), 18, 0.1, 579)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (218, 40, CAST(14 AS Decimal(10, 0)), 20, 0, 580)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (218, 45, CAST(7 AS Decimal(10, 0)), 30, 0.1, 581)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (218, 50, CAST(13 AS Decimal(10, 0)), 25, 0, 582)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (219, 11, CAST(16 AS Decimal(10, 0)), 10, 0, 583)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (219, 46, CAST(9 AS Decimal(10, 0)), 5, 0, 584)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (220, 24, CAST(3 AS Decimal(10, 0)), 28, 0, 585)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (220, 25, CAST(11 AS Decimal(10, 0)), 12, 0, 586)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (221, 30, CAST(20 AS Decimal(10, 0)), 8, 0, 587)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (221, 43, CAST(36 AS Decimal(10, 0)), 15, 0, 588)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (222, 2, CAST(15 AS Decimal(10, 0)), 40, 0.15, 589)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (222, 16, CAST(13 AS Decimal(10, 0)), 35, 0.15, 590)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (222, 44, CAST(15 AS Decimal(10, 0)), 2, 0.15, 591)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (223, 18, CAST(50 AS Decimal(10, 0)), 30, 0, 592)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (223, 23, CAST(7 AS Decimal(10, 0)), 15, 0, 593)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (223, 64, CAST(26 AS Decimal(10, 0)), 8, 0, 594)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (224, 7, CAST(24 AS Decimal(10, 0)), 30, 0, 595)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (224, 56, CAST(30 AS Decimal(10, 0)), 20, 0, 596)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (225, 24, CAST(3 AS Decimal(10, 0)), 80, 0.05, 597)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (225, 51, CAST(42 AS Decimal(10, 0)), 18, 0, 598)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (226, 33, CAST(2 AS Decimal(10, 0)), 12, 0, 599)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (226, 71, CAST(17 AS Decimal(10, 0)), 12, 0, 600)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (227, 14, CAST(18 AS Decimal(10, 0)), 12, 0, 601)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (227, 28, CAST(36 AS Decimal(10, 0)), 18, 0, 602)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (227, 40, CAST(14 AS Decimal(10, 0)), 21, 0, 603)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (227, 75, CAST(6 AS Decimal(10, 0)), 10, 0, 604)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (228, 31, CAST(10 AS Decimal(10, 0)), 35, 0.15, 605)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (228, 66, CAST(13 AS Decimal(10, 0)), 60, 0.15, 606)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (228, 76, CAST(14 AS Decimal(10, 0)), 42, 0.15, 607)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (229, 55, CAST(19 AS Decimal(10, 0)), 2, 0.05, 608)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (229, 70, CAST(12 AS Decimal(10, 0)), 12, 0, 609)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (230, 1, CAST(14 AS Decimal(10, 0)), 15, 0, 610)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (230, 21, CAST(8 AS Decimal(10, 0)), 21, 0.25, 611)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (230, 39, CAST(14 AS Decimal(10, 0)), 20, 0.25, 612)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (231, 10, CAST(24 AS Decimal(10, 0)), 20, 0.05, 613)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (232, 38, CAST(210 AS Decimal(10, 0)), 30, 0, 614)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (232, 53, CAST(26 AS Decimal(10, 0)), 28, 0, 615)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (232, 59, CAST(44 AS Decimal(10, 0)), 60, 0, 616)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (232, 64, CAST(26 AS Decimal(10, 0)), 30, 0, 617)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (233, 47, CAST(7 AS Decimal(10, 0)), 30, 0, 618)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (233, 59, CAST(44 AS Decimal(10, 0)), 12, 0, 619)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (234, 49, CAST(16 AS Decimal(10, 0)), 24, 0, 620)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (234, 60, CAST(27 AS Decimal(10, 0)), 40, 0, 621)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (235, 40, CAST(14 AS Decimal(10, 0)), 10, 0, 622)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (236, 34, CAST(11 AS Decimal(10, 0)), 35, 0.05, 623)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (236, 77, CAST(10 AS Decimal(10, 0)), 30, 0.05, 624)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (237, 21, CAST(8 AS Decimal(10, 0)), 14, 0, 625)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (237, 40, CAST(14 AS Decimal(10, 0)), 10, 0, 626)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (237, 51, CAST(42 AS Decimal(10, 0)), 3, 0, 627)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (238, 2, CAST(15 AS Decimal(10, 0)), 20, 0.1, 628)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (238, 3, CAST(8 AS Decimal(10, 0)), 20, 0.1, 629)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (238, 55, CAST(19 AS Decimal(10, 0)), 30, 0.1, 630)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (238, 70, CAST(12 AS Decimal(10, 0)), 60, 0.1, 631)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (239, 11, CAST(16 AS Decimal(10, 0)), 5, 0, 632)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (239, 51, CAST(42 AS Decimal(10, 0)), 25, 0, 633)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (239, 74, CAST(8 AS Decimal(10, 0)), 16, 0, 634)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (240, 19, CAST(7 AS Decimal(10, 0)), 5, 0, 635)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (240, 26, CAST(24 AS Decimal(10, 0)), 30, 0, 636)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (240, 54, CAST(5 AS Decimal(10, 0)), 24, 0.25, 637)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (241, 59, CAST(44 AS Decimal(10, 0)), 30, 0, 638)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (241, 73, CAST(12 AS Decimal(10, 0)), 20, 0.2, 639)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (242, 11, CAST(16 AS Decimal(10, 0)), 15, 0.25, 640)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (242, 16, CAST(13 AS Decimal(10, 0)), 18, 0, 641)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (243, 59, CAST(44 AS Decimal(10, 0)), 60, 0, 642)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (243, 68, CAST(10 AS Decimal(10, 0)), 30, 0, 643)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (243, 75, CAST(6 AS Decimal(10, 0)), 36, 0, 644)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (244, 44, CAST(15 AS Decimal(10, 0)), 15, 0.15, 645)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (244, 77, CAST(10 AS Decimal(10, 0)), 7, 0.15, 646)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (245, 25, CAST(11 AS Decimal(10, 0)), 60, 0.05, 647)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (245, 42, CAST(11 AS Decimal(10, 0)), 20, 0.05, 648)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (246, 65, CAST(16 AS Decimal(10, 0)), 15, 0.1, 649)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (246, 66, CAST(13 AS Decimal(10, 0)), 10, 0.1, 650)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (246, 69, CAST(28 AS Decimal(10, 0)), 10, 0.1, 651)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (247, 56, CAST(30 AS Decimal(10, 0)), 30, 0, 652)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (248, 23, CAST(7 AS Decimal(10, 0)), 10, 0, 653)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (248, 41, CAST(7 AS Decimal(10, 0)), 20, 0, 654)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (248, 77, CAST(10 AS Decimal(10, 0)), 5, 0, 655)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (249, 31, CAST(10 AS Decimal(10, 0)), 20, 0.05, 656)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (250, 56, CAST(30 AS Decimal(10, 0)), 14, 0, 657)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (250, 72, CAST(27 AS Decimal(10, 0)), 25, 0, 658)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (250, 77, CAST(10 AS Decimal(10, 0)), 25, 0, 659)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (251, 24, CAST(4 AS Decimal(10, 0)), 14, 0, 660)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (251, 40, CAST(18 AS Decimal(10, 0)), 5, 0, 661)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (251, 42, CAST(14 AS Decimal(10, 0)), 30, 0, 662)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (252, 28, CAST(45 AS Decimal(10, 0)), 20, 0, 663)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (252, 49, CAST(20 AS Decimal(10, 0)), 25, 0, 664)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (253, 15, CAST(15 AS Decimal(10, 0)), 12, 0.05, 665)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (253, 28, CAST(45 AS Decimal(10, 0)), 8, 0.05, 666)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (254, 54, CAST(7 AS Decimal(10, 0)), 20, 0, 667)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (255, 45, CAST(9 AS Decimal(10, 0)), 21, 0, 668)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (255, 53, CAST(32 AS Decimal(10, 0)), 6, 0, 669)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (255, 67, CAST(14 AS Decimal(10, 0)), 30, 0, 670)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (256, 14, CAST(23 AS Decimal(10, 0)), 70, 0, 671)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (256, 65, CAST(21 AS Decimal(10, 0)), 20, 0, 672)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (257, 2, CAST(19 AS Decimal(10, 0)), 12, 0, 673)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (257, 21, CAST(10 AS Decimal(10, 0)), 12, 0, 674)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (257, 53, CAST(32 AS Decimal(10, 0)), 10, 0, 675)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (257, 61, CAST(28 AS Decimal(10, 0)), 25, 0, 676)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (258, 62, CAST(49 AS Decimal(10, 0)), 3, 0, 677)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (259, 25, CAST(14 AS Decimal(10, 0)), 18, 0.1, 678)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (259, 70, CAST(15 AS Decimal(10, 0)), 14, 0.1, 679)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (260, 43, CAST(46 AS Decimal(10, 0)), 15, 0.15, 680)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (260, 48, CAST(12 AS Decimal(10, 0)), 15, 0.15, 681)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (261, 13, CAST(6 AS Decimal(10, 0)), 10, 0, 682)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (261, 39, CAST(18 AS Decimal(10, 0)), 10, 0, 683)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (262, 28, CAST(45 AS Decimal(10, 0)), 3, 0, 684)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (263, 29, CAST(123 AS Decimal(10, 0)), 36, 0, 685)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (263, 75, CAST(7 AS Decimal(10, 0)), 36, 0.1, 686)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (264, 4, CAST(22 AS Decimal(10, 0)), 50, 0.15, 687)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (264, 7, CAST(30 AS Decimal(10, 0)), 50, 0.15, 688)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (264, 8, CAST(40 AS Decimal(10, 0)), 10, 0.15, 689)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (265, 24, CAST(4 AS Decimal(10, 0)), 10, 0.15, 690)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (265, 46, CAST(12 AS Decimal(10, 0)), 9, 0.15, 691)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (265, 47, CAST(9 AS Decimal(10, 0)), 6, 0.15, 692)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (265, 60, CAST(34 AS Decimal(10, 0)), 12, 0.15, 693)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (266, 21, CAST(10 AS Decimal(10, 0)), 40, 0.2, 694)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (266, 32, CAST(32 AS Decimal(10, 0)), 50, 0.2, 695)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (266, 61, CAST(28 AS Decimal(10, 0)), 15, 0.2, 696)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (267, 20, CAST(81 AS Decimal(10, 0)), 39, 0, 697)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (267, 28, CAST(45 AS Decimal(10, 0)), 35, 0, 698)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (267, 56, CAST(38 AS Decimal(10, 0)), 70, 0, 699)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (267, 65, CAST(21 AS Decimal(10, 0)), 39, 0, 700)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (267, 75, CAST(7 AS Decimal(10, 0)), 50, 0, 701)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (268, 9, CAST(97 AS Decimal(10, 0)), 16, 0.15, 702)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (268, 16, CAST(17 AS Decimal(10, 0)), 50, 0, 703)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (268, 27, CAST(43 AS Decimal(10, 0)), 120, 0, 704)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (268, 33, CAST(2 AS Decimal(10, 0)), 16, 0.15, 705)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (268, 60, CAST(34 AS Decimal(10, 0)), 84, 0.15, 706)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (269, 18, CAST(62 AS Decimal(10, 0)), 25, 0.1, 707)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (269, 41, CAST(9 AS Decimal(10, 0)), 80, 0.1, 708)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (269, 42, CAST(14 AS Decimal(10, 0)), 20, 0, 709)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (270, 52, CAST(7 AS Decimal(10, 0)), 6, 0, 710)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (270, 59, CAST(55 AS Decimal(10, 0)), 4, 0, 711)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (270, 70, CAST(15 AS Decimal(10, 0)), 6, 0, 712)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (271, 24, CAST(4 AS Decimal(10, 0)), 5, 0, 713)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (271, 38, CAST(263 AS Decimal(10, 0)), 15, 0, 714)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (271, 44, CAST(19 AS Decimal(10, 0)), 9, 0, 715)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (272, 10, CAST(31 AS Decimal(10, 0)), 16, 0.05, 716)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (272, 56, CAST(38 AS Decimal(10, 0)), 40, 0, 717)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (272, 60, CAST(34 AS Decimal(10, 0)), 10, 0.05, 718)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (273, 24, CAST(4 AS Decimal(10, 0)), 8, 0, 719)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (273, 53, CAST(32 AS Decimal(10, 0)), 5, 0, 720)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (274, 35, CAST(18 AS Decimal(10, 0)), 3, 0, 721)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (274, 41, CAST(9 AS Decimal(10, 0)), 10, 0, 722)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (274, 68, CAST(12 AS Decimal(10, 0)), 6, 0, 723)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (275, 1, CAST(18 AS Decimal(10, 0)), 40, 0.2, 724)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (275, 8, CAST(40 AS Decimal(10, 0)), 24, 0, 725)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (275, 30, CAST(25 AS Decimal(10, 0)), 20, 0.2, 726)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (275, 40, CAST(18 AS Decimal(10, 0)), 25, 0.2, 727)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (276, 17, CAST(39 AS Decimal(10, 0)), 25, 0.1, 728)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (276, 20, CAST(81 AS Decimal(10, 0)), 15, 0.1, 729)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (276, 37, CAST(26 AS Decimal(10, 0)), 18, 0.1, 730)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (276, 41, CAST(9 AS Decimal(10, 0)), 6, 0.1, 731)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (277, 10, CAST(31 AS Decimal(10, 0)), 2, 0, 732)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (277, 30, CAST(25 AS Decimal(10, 0)), 10, 0, 733)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (277, 43, CAST(46 AS Decimal(10, 0)), 60, 0, 734)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (277, 54, CAST(7 AS Decimal(10, 0)), 15, 0, 735)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (278, 36, CAST(19 AS Decimal(10, 0)), 30, 0, 736)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (278, 40, CAST(18 AS Decimal(10, 0)), 15, 0.1, 737)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (279, 1, CAST(18 AS Decimal(10, 0)), 8, 0.15, 738)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (279, 13, CAST(6 AS Decimal(10, 0)), 10, 0, 739)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (279, 56, CAST(38 AS Decimal(10, 0)), 30, 0.15, 740)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (280, 4, CAST(22 AS Decimal(10, 0)), 50, 0.1, 741)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (280, 36, CAST(19 AS Decimal(10, 0)), 30, 0.1, 742)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (281, 11, CAST(21 AS Decimal(10, 0)), 3, 0, 743)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (281, 33, CAST(2 AS Decimal(10, 0)), 8, 0.2, 744)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (281, 72, CAST(34 AS Decimal(10, 0)), 9, 0, 745)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (282, 55, CAST(24 AS Decimal(10, 0)), 14, 0, 746)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (282, 68, CAST(12 AS Decimal(10, 0)), 20, 0, 747)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (282, 69, CAST(36 AS Decimal(10, 0)), 10, 0, 748)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (283, 17, CAST(39 AS Decimal(10, 0)), 40, 0, 749)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (283, 43, CAST(46 AS Decimal(10, 0)), 25, 0, 750)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (283, 61, CAST(28 AS Decimal(10, 0)), 20, 0, 751)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (283, 76, CAST(18 AS Decimal(10, 0)), 50, 0, 752)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (284, 59, CAST(55 AS Decimal(10, 0)), 2, 0, 753)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (285, 30, CAST(25 AS Decimal(10, 0)), 15, 0, 754)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (285, 66, CAST(17 AS Decimal(10, 0)), 24, 0, 755)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (286, 4, CAST(22 AS Decimal(10, 0)), 50, 0.05, 756)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (286, 72, CAST(34 AS Decimal(10, 0)), 24, 0, 757)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (286, 73, CAST(15 AS Decimal(10, 0)), 24, 0.05, 758)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (287, 30, CAST(25 AS Decimal(10, 0)), 10, 0, 759)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (287, 40, CAST(18 AS Decimal(10, 0)), 10, 0.2, 760)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (287, 54, CAST(7 AS Decimal(10, 0)), 10, 0.2, 761)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (288, 11, CAST(21 AS Decimal(10, 0)), 50, 0.1, 762)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (288, 40, CAST(18 AS Decimal(10, 0)), 10, 0.1, 763)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (288, 57, CAST(19 AS Decimal(10, 0)), 5, 0.1, 764)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (288, 59, CAST(55 AS Decimal(10, 0)), 15, 0.1, 765)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (289, 12, CAST(38 AS Decimal(10, 0)), 15, 0.25, 766)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (289, 31, CAST(12 AS Decimal(10, 0)), 20, 0, 767)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (289, 33, CAST(2 AS Decimal(10, 0)), 30, 0, 768)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (289, 60, CAST(34 AS Decimal(10, 0)), 35, 0.25, 769)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (290, 31, CAST(12 AS Decimal(10, 0)), 30, 0, 770)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (290, 51, CAST(53 AS Decimal(10, 0)), 6, 0, 771)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (290, 58, CAST(13 AS Decimal(10, 0)), 20, 0, 772)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (290, 72, CAST(34 AS Decimal(10, 0)), 21, 0, 773)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (290, 73, CAST(15 AS Decimal(10, 0)), 9, 0, 774)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (291, 70, CAST(15 AS Decimal(10, 0)), 7, 0, 775)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (291, 72, CAST(34 AS Decimal(10, 0)), 1, 0, 776)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (292, 13, CAST(6 AS Decimal(10, 0)), 8, 0, 777)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (292, 21, CAST(10 AS Decimal(10, 0)), 15, 0, 778)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (292, 33, CAST(2 AS Decimal(10, 0)), 15, 0, 779)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (292, 49, CAST(20 AS Decimal(10, 0)), 6, 0, 780)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (293, 3, CAST(10 AS Decimal(10, 0)), 60, 0, 781)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (293, 26, CAST(31 AS Decimal(10, 0)), 40, 0, 782)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (293, 38, CAST(263 AS Decimal(10, 0)), 30, 0, 783)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (293, 68, CAST(12 AS Decimal(10, 0)), 35, 0, 784)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (294, 24, CAST(4 AS Decimal(10, 0)), 35, 0.1, 785)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (294, 38, CAST(263 AS Decimal(10, 0)), 4, 0.1, 786)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (294, 65, CAST(21 AS Decimal(10, 0)), 36, 0.1, 787)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (294, 71, CAST(21 AS Decimal(10, 0)), 9, 0.1, 788)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (295, 11, CAST(21 AS Decimal(10, 0)), 15, 0.05, 789)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (295, 54, CAST(7 AS Decimal(10, 0)), 24, 0.05, 790)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (296, 12, CAST(38 AS Decimal(10, 0)), 30, 0.15, 791)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (296, 23, CAST(9 AS Decimal(10, 0)), 70, 0.15, 792)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (297, 28, CAST(45 AS Decimal(10, 0)), 7, 0, 793)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (297, 67, CAST(14 AS Decimal(10, 0)), 7, 0, 794)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (298, 11, CAST(21 AS Decimal(10, 0)), 10, 0, 795)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (299, 7, CAST(30 AS Decimal(10, 0)), 10, 0, 796)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (299, 35, CAST(18 AS Decimal(10, 0)), 30, 0, 797)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (299, 62, CAST(49 AS Decimal(10, 0)), 40, 0, 798)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (300, 32, CAST(32 AS Decimal(10, 0)), 24, 0.15, 799)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (300, 36, CAST(19 AS Decimal(10, 0)), 60, 0, 800)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (301, 34, CAST(14 AS Decimal(10, 0)), 10, 0.25, 801)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (301, 41, CAST(9 AS Decimal(10, 0)), 14, 0, 802)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (302, 31, CAST(12 AS Decimal(10, 0)), 55, 0.15, 803)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (302, 45, CAST(9 AS Decimal(10, 0)), 100, 0.15, 804)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (302, 51, CAST(53 AS Decimal(10, 0)), 48, 0.15, 805)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (303, 17, CAST(39 AS Decimal(10, 0)), 8, 0.1, 806)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (303, 19, CAST(9 AS Decimal(10, 0)), 10, 0, 807)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (303, 21, CAST(10 AS Decimal(10, 0)), 6, 0.1, 808)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (303, 61, CAST(28 AS Decimal(10, 0)), 10, 0.1, 809)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (304, 16, CAST(17 AS Decimal(10, 0)), 40, 0.15, 810)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (304, 35, CAST(18 AS Decimal(10, 0)), 20, 0.15, 811)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (304, 44, CAST(19 AS Decimal(10, 0)), 40, 0, 812)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (305, 69, CAST(36 AS Decimal(10, 0)), 18, 0, 813)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (305, 75, CAST(7 AS Decimal(10, 0)), 30, 0, 814)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (306, 11, CAST(21 AS Decimal(10, 0)), 15, 0, 815)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (306, 16, CAST(17 AS Decimal(10, 0)), 14, 0, 816)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (306, 22, CAST(21 AS Decimal(10, 0)), 24, 0, 817)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (306, 31, CAST(12 AS Decimal(10, 0)), 30, 0, 818)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (306, 35, CAST(18 AS Decimal(10, 0)), 6, 0, 819)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (307, 16, CAST(17 AS Decimal(10, 0)), 30, 0.05, 820)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (307, 23, CAST(9 AS Decimal(10, 0)), 20, 0.05, 821)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (307, 62, CAST(49 AS Decimal(10, 0)), 20, 0.05, 822)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (307, 77, CAST(13 AS Decimal(10, 0)), 10, 0.05, 823)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (308, 14, CAST(23 AS Decimal(10, 0)), 30, 0.2, 824)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (308, 19, CAST(9 AS Decimal(10, 0)), 35, 0.2, 825)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (308, 24, CAST(4 AS Decimal(10, 0)), 18, 0.2, 826)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (308, 51, CAST(53 AS Decimal(10, 0)), 20, 0.2, 827)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (308, 56, CAST(38 AS Decimal(10, 0)), 40, 0.2, 828)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (309, 72, CAST(34 AS Decimal(10, 0)), 24, 0, 829)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (310, 64, CAST(33 AS Decimal(10, 0)), 30, 0, 830)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (310, 75, CAST(7 AS Decimal(10, 0)), 20, 0, 831)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (311, 47, CAST(9 AS Decimal(10, 0)), 25, 0, 832)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (311, 51, CAST(53 AS Decimal(10, 0)), 20, 0, 833)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (311, 52, CAST(7 AS Decimal(10, 0)), 30, 0, 834)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (311, 53, CAST(32 AS Decimal(10, 0)), 18, 0, 835)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (311, 73, CAST(15 AS Decimal(10, 0)), 3, 0, 836)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (312, 41, CAST(9 AS Decimal(10, 0)), 12, 0.05, 837)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (312, 55, CAST(24 AS Decimal(10, 0)), 18, 0.05, 838)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (313, 30, CAST(25 AS Decimal(10, 0)), 20, 0, 839)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (313, 62, CAST(49 AS Decimal(10, 0)), 15, 0.25, 840)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (314, 44, CAST(19 AS Decimal(10, 0)), 10, 0, 841)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (314, 51, CAST(53 AS Decimal(10, 0)), 50, 0, 842)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (315, 33, CAST(2 AS Decimal(10, 0)), 20, 0.1, 843)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (315, 62, CAST(49 AS Decimal(10, 0)), 10, 0.1, 844)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (316, 36, CAST(19 AS Decimal(10, 0)), 25, 0, 845)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (316, 52, CAST(7 AS Decimal(10, 0)), 70, 0, 846)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (317, 17, CAST(39 AS Decimal(10, 0)), 16, 0.05, 847)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (317, 31, CAST(12 AS Decimal(10, 0)), 6, 0.05, 848)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (317, 55, CAST(24 AS Decimal(10, 0)), 25, 0.05, 849)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (318, 24, CAST(4 AS Decimal(10, 0)), 25, 0.1, 850)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (318, 64, CAST(33 AS Decimal(10, 0)), 18, 0.1, 851)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (319, 11, CAST(21 AS Decimal(10, 0)), 35, 0.15, 852)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (319, 18, CAST(62 AS Decimal(10, 0)), 18, 0.15, 853)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (319, 76, CAST(18 AS Decimal(10, 0)), 10, 0, 854)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (320, 31, CAST(12 AS Decimal(10, 0)), 60, 0.2, 855)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (320, 51, CAST(53 AS Decimal(10, 0)), 3, 0, 856)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (320, 59, CAST(55 AS Decimal(10, 0)), 40, 0.2, 857)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (321, 10, CAST(31 AS Decimal(10, 0)), 5, 0, 858)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (322, 31, CAST(12 AS Decimal(10, 0)), 35, 0.2, 859)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (322, 76, CAST(18 AS Decimal(10, 0)), 30, 0, 860)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (323, 11, CAST(21 AS Decimal(10, 0)), 15, 0.05, 861)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (323, 56, CAST(38 AS Decimal(10, 0)), 60, 0.05, 862)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (324, 14, CAST(23 AS Decimal(10, 0)), 11, 0.15, 863)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (324, 42, CAST(14 AS Decimal(10, 0)), 28, 0.15, 864)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (325, 16, CAST(17 AS Decimal(10, 0)), 12, 0.1, 865)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (325, 32, CAST(32 AS Decimal(10, 0)), 10, 0.1, 866)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (325, 40, CAST(18 AS Decimal(10, 0)), 50, 0, 867)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (325, 75, CAST(7 AS Decimal(10, 0)), 15, 0.1, 868)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (326, 17, CAST(39 AS Decimal(10, 0)), 18, 0, 869)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (326, 34, CAST(14 AS Decimal(10, 0)), 40, 0, 870)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (326, 53, CAST(32 AS Decimal(10, 0)), 25, 0, 871)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (327, 33, CAST(2 AS Decimal(10, 0)), 14, 0, 872)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (327, 40, CAST(18 AS Decimal(10, 0)), 2, 0, 873)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (327, 62, CAST(49 AS Decimal(10, 0)), 10, 0, 874)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (327, 64, CAST(33 AS Decimal(10, 0)), 6, 0, 875)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (328, 59, CAST(55 AS Decimal(10, 0)), 12, 0, 876)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (328, 63, CAST(43 AS Decimal(10, 0)), 6, 0, 877)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (328, 72, CAST(34 AS Decimal(10, 0)), 30, 0, 878)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (328, 76, CAST(18 AS Decimal(10, 0)), 10, 0, 879)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (329, 1, CAST(18 AS Decimal(10, 0)), 10, 0, 880)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (329, 31, CAST(12 AS Decimal(10, 0)), 20, 0, 881)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (329, 44, CAST(19 AS Decimal(10, 0)), 21, 0, 882)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (330, 39, CAST(18 AS Decimal(10, 0)), 10, 0, 883)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (330, 75, CAST(7 AS Decimal(10, 0)), 20, 0, 884)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (330, 77, CAST(13 AS Decimal(10, 0)), 18, 0, 885)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (331, 35, CAST(18 AS Decimal(10, 0)), 20, 0, 886)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (331, 57, CAST(19 AS Decimal(10, 0)), 6, 0, 887)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (332, 15, CAST(15 AS Decimal(10, 0)), 10, 0, 888)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (332, 75, CAST(7 AS Decimal(10, 0)), 21, 0, 889)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (333, 14, CAST(23 AS Decimal(10, 0)), 15, 0.05, 890)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (333, 41, CAST(9 AS Decimal(10, 0)), 9, 0.05, 891)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (333, 65, CAST(21 AS Decimal(10, 0)), 30, 0.05, 892)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (334, 75, CAST(7 AS Decimal(10, 0)), 50, 0.2, 893)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (335, 57, CAST(19 AS Decimal(10, 0)), 4, 0, 894)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (335, 76, CAST(18 AS Decimal(10, 0)), 14, 0, 895)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (336, 29, CAST(123 AS Decimal(10, 0)), 10, 0, 896)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (336, 60, CAST(34 AS Decimal(10, 0)), 24, 0.15, 897)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (336, 69, CAST(36 AS Decimal(10, 0)), 10, 0.15, 898)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (337, 31, CAST(12 AS Decimal(10, 0)), 50, 0.05, 899)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (338, 47, CAST(9 AS Decimal(10, 0)), 15, 0, 900)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (339, 52, CAST(7 AS Decimal(10, 0)), 4, 0.15, 901)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (340, 26, CAST(31 AS Decimal(10, 0)), 6, 0, 902)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (340, 35, CAST(18 AS Decimal(10, 0)), 20, 0, 903)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (340, 77, CAST(13 AS Decimal(10, 0)), 20, 0, 904)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (341, 18, CAST(62 AS Decimal(10, 0)), 40, 0.2, 905)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (341, 42, CAST(14 AS Decimal(10, 0)), 100, 0.2, 906)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (342, 35, CAST(18 AS Decimal(10, 0)), 4, 0, 907)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (343, 1, CAST(18 AS Decimal(10, 0)), 20, 0, 908)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (343, 77, CAST(13 AS Decimal(10, 0)), 60, 0.05, 909)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (344, 3, CAST(10 AS Decimal(10, 0)), 14, 0, 910)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (344, 7, CAST(30 AS Decimal(10, 0)), 10, 0, 911)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (344, 54, CAST(7 AS Decimal(10, 0)), 50, 0, 912)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (345, 15, CAST(15 AS Decimal(10, 0)), 25, 0.05, 913)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (345, 26, CAST(31 AS Decimal(10, 0)), 5, 0.05, 914)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (346, 20, CAST(81 AS Decimal(10, 0)), 21, 0.2, 915)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (346, 69, CAST(36 AS Decimal(10, 0)), 20, 0.2, 916)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (346, 76, CAST(18 AS Decimal(10, 0)), 4, 0.2, 917)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (347, 52, CAST(7 AS Decimal(10, 0)), 24, 0, 918)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (347, 58, CAST(13 AS Decimal(10, 0)), 30, 0, 919)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (348, 35, CAST(18 AS Decimal(10, 0)), 30, 0.25, 920)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (348, 61, CAST(28 AS Decimal(10, 0)), 120, 0.25, 921)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (348, 69, CAST(36 AS Decimal(10, 0)), 65, 0.25, 922)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (349, 56, CAST(38 AS Decimal(10, 0)), 5, 0.2, 923)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (349, 63, CAST(43 AS Decimal(10, 0)), 24, 0.2, 924)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (349, 75, CAST(7 AS Decimal(10, 0)), 30, 0.2, 925)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (350, 24, CAST(4 AS Decimal(10, 0)), 35, 0.2, 926)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (350, 57, CAST(19 AS Decimal(10, 0)), 20, 0, 927)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (350, 65, CAST(21 AS Decimal(10, 0)), 12, 0.2, 928)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (351, 27, CAST(43 AS Decimal(10, 0)), 50, 0, 929)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (351, 71, CAST(21 AS Decimal(10, 0)), 9, 0, 930)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (352, 62, CAST(49 AS Decimal(10, 0)), 10, 0, 931)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (353, 54, CAST(7 AS Decimal(10, 0)), 4, 0, 932)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (353, 73, CAST(15 AS Decimal(10, 0)), 30, 0, 933)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (354, 13, CAST(6 AS Decimal(10, 0)), 60, 0, 934)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (354, 59, CAST(55 AS Decimal(10, 0)), 35, 0, 935)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (355, 77, CAST(13 AS Decimal(10, 0)), 5, 0.25, 936)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (356, 22, CAST(21 AS Decimal(10, 0)), 48, 0, 937)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (356, 49, CAST(20 AS Decimal(10, 0)), 25, 0.05, 938)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (357, 48, CAST(12 AS Decimal(10, 0)), 6, 0.1, 939)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (357, 76, CAST(18 AS Decimal(10, 0)), 10, 0.1, 940)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (358, 16, CAST(17 AS Decimal(10, 0)), 30, 0.05, 941)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (358, 59, CAST(55 AS Decimal(10, 0)), 20, 0.05, 942)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (358, 60, CAST(34 AS Decimal(10, 0)), 70, 0.05, 943)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (358, 71, CAST(21 AS Decimal(10, 0)), 15, 0.05, 944)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (359, 4, CAST(22 AS Decimal(10, 0)), 20, 0.2, 945)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (359, 55, CAST(24 AS Decimal(10, 0)), 20, 0.2, 946)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (359, 62, CAST(49 AS Decimal(10, 0)), 10, 0.2, 947)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (360, 7, CAST(30 AS Decimal(10, 0)), 45, 0, 948)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (360, 17, CAST(39 AS Decimal(10, 0)), 100, 0, 949)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (360, 33, CAST(2 AS Decimal(10, 0)), 14, 0, 950)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (360, 40, CAST(18 AS Decimal(10, 0)), 42, 0, 951)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (360, 72, CAST(34 AS Decimal(10, 0)), 12, 0, 952)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (361, 56, CAST(38 AS Decimal(10, 0)), 28, 0, 953)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (362, 1, CAST(18 AS Decimal(10, 0)), 3, 0, 954)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (362, 10, CAST(31 AS Decimal(10, 0)), 10, 0, 955)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (362, 21, CAST(10 AS Decimal(10, 0)), 6, 0, 956)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (363, 36, CAST(19 AS Decimal(10, 0)), 21, 0.25, 957)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (364, 1, CAST(18 AS Decimal(10, 0)), 6, 0, 958)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (364, 2, CAST(19 AS Decimal(10, 0)), 10, 0, 959)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (364, 60, CAST(34 AS Decimal(10, 0)), 15, 0, 960)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (365, 10, CAST(31 AS Decimal(10, 0)), 70, 0, 961)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (365, 36, CAST(19 AS Decimal(10, 0)), 55, 0, 962)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (365, 49, CAST(20 AS Decimal(10, 0)), 18, 0, 963)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (365, 60, CAST(34 AS Decimal(10, 0)), 40, 0, 964)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (365, 76, CAST(18 AS Decimal(10, 0)), 80, 0, 965)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (366, 13, CAST(6 AS Decimal(10, 0)), 8, 0.1, 966)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (366, 75, CAST(7 AS Decimal(10, 0)), 40, 0, 967)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (367, 11, CAST(21 AS Decimal(10, 0)), 14, 0, 968)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (367, 21, CAST(10 AS Decimal(10, 0)), 8, 0, 969)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (367, 39, CAST(18 AS Decimal(10, 0)), 5, 0, 970)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (368, 55, CAST(24 AS Decimal(10, 0)), 5, 0, 971)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (369, 38, CAST(263 AS Decimal(10, 0)), 15, 0.05, 972)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (369, 56, CAST(38 AS Decimal(10, 0)), 14, 0, 973)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (369, 70, CAST(15 AS Decimal(10, 0)), 15, 0.05, 974)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (369, 71, CAST(21 AS Decimal(10, 0)), 15, 0.05, 975)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (370, 59, CAST(55 AS Decimal(10, 0)), 30, 0.15, 976)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (371, 6, CAST(25 AS Decimal(10, 0)), 70, 0, 977)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (371, 56, CAST(38 AS Decimal(10, 0)), 20, 0, 978)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (371, 68, CAST(12 AS Decimal(10, 0)), 15, 0, 979)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (372, 21, CAST(10 AS Decimal(10, 0)), 42, 0, 980)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (372, 22, CAST(21 AS Decimal(10, 0)), 40, 0, 981)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (373, 24, CAST(4 AS Decimal(10, 0)), 5, 0, 982)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (373, 52, CAST(7 AS Decimal(10, 0)), 5, 0, 983)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (374, 19, CAST(9 AS Decimal(10, 0)), 5, 0, 984)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (374, 23, CAST(9 AS Decimal(10, 0)), 10, 0, 985)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (374, 70, CAST(15 AS Decimal(10, 0)), 20, 0, 986)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (374, 71, CAST(21 AS Decimal(10, 0)), 15, 0, 987)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (375, 2, CAST(19 AS Decimal(10, 0)), 20, 0, 988)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (375, 68, CAST(12 AS Decimal(10, 0)), 18, 0.2, 989)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (376, 14, CAST(23 AS Decimal(10, 0)), 21, 0, 990)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (376, 19, CAST(9 AS Decimal(10, 0)), 15, 0.1, 991)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (376, 21, CAST(10 AS Decimal(10, 0)), 25, 0.1, 992)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (376, 24, CAST(4 AS Decimal(10, 0)), 3, 0, 993)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (376, 35, CAST(18 AS Decimal(10, 0)), 30, 0.1, 994)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (377, 28, CAST(45 AS Decimal(10, 0)), 10, 0, 995)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (377, 29, CAST(123 AS Decimal(10, 0)), 6, 0, 996)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (377, 44, CAST(19 AS Decimal(10, 0)), 10, 0, 997)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (378, 14, CAST(23 AS Decimal(10, 0)), 3, 0, 998)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (378, 42, CAST(14 AS Decimal(10, 0)), 5, 0, 999)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (378, 60, CAST(34 AS Decimal(10, 0)), 10, 0, 1000)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (379, 53, CAST(32 AS Decimal(10, 0)), 12, 0, 1001)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (379, 60, CAST(34 AS Decimal(10, 0)), 20, 0, 1002)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (379, 71, CAST(21 AS Decimal(10, 0)), 20, 0, 1003)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (380, 62, CAST(49 AS Decimal(10, 0)), 15, 0, 1004)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (380, 73, CAST(15 AS Decimal(10, 0)), 35, 0.15, 1005)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (381, 1, CAST(18 AS Decimal(10, 0)), 25, 0, 1006)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (382, 29, CAST(123 AS Decimal(10, 0)), 20, 0, 1007)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (382, 64, CAST(33 AS Decimal(10, 0)), 9, 0, 1008)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (383, 55, CAST(24 AS Decimal(10, 0)), 12, 0.05, 1009)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (383, 76, CAST(18 AS Decimal(10, 0)), 35, 0, 1010)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (384, 75, CAST(7 AS Decimal(10, 0)), 8, 0.1, 1011)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (385, 2, CAST(19 AS Decimal(10, 0)), 30, 0.05, 1012)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (385, 33, CAST(2 AS Decimal(10, 0)), 20, 0.05, 1013)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (386, 12, CAST(38 AS Decimal(10, 0)), 36, 0.15, 1014)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (386, 13, CAST(6 AS Decimal(10, 0)), 13, 0.15, 1015)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (386, 26, CAST(31 AS Decimal(10, 0)), 35, 0.15, 1016)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (386, 62, CAST(49 AS Decimal(10, 0)), 80, 0.15, 1017)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (387, 7, CAST(30 AS Decimal(10, 0)), 35, 0, 1018)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (387, 18, CAST(62 AS Decimal(10, 0)), 50, 0, 1019)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (387, 51, CAST(53 AS Decimal(10, 0)), 15, 0, 1020)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (387, 75, CAST(7 AS Decimal(10, 0)), 2, 0, 1021)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (388, 4, CAST(22 AS Decimal(10, 0)), 10, 0.1, 1022)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (388, 5, CAST(21 AS Decimal(10, 0)), 15, 0.1, 1023)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (388, 22, CAST(21 AS Decimal(10, 0)), 40, 0, 1024)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (389, 4, CAST(22 AS Decimal(10, 0)), 25, 0, 1025)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (389, 58, CAST(13 AS Decimal(10, 0)), 6, 0, 1026)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (390, 11, CAST(21 AS Decimal(10, 0)), 10, 0, 1027)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (390, 50, CAST(16 AS Decimal(10, 0)), 25, 0.05, 1028)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (390, 56, CAST(38 AS Decimal(10, 0)), 60, 0.05, 1029)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (391, 45, CAST(9 AS Decimal(10, 0)), 20, 0, 1030)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (391, 65, CAST(21 AS Decimal(10, 0)), 21, 0, 1031)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (391, 72, CAST(34 AS Decimal(10, 0)), 60, 0, 1032)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (392, 18, CAST(62 AS Decimal(10, 0)), 8, 0, 1033)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (393, 69, CAST(36 AS Decimal(10, 0)), 20, 0.25, 1034)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (393, 70, CAST(15 AS Decimal(10, 0)), 15, 0.25, 1035)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (394, 2, CAST(19 AS Decimal(10, 0)), 50, 0, 1036)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (394, 40, CAST(18 AS Decimal(10, 0)), 60, 0, 1037)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (395, 21, CAST(10 AS Decimal(10, 0)), 30, 0.2, 1038)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (395, 61, CAST(28 AS Decimal(10, 0)), 20, 0.2, 1039)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (396, 28, CAST(45 AS Decimal(10, 0)), 15, 0.25, 1040)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (396, 39, CAST(18 AS Decimal(10, 0)), 21, 0.25, 1041)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (396, 46, CAST(12 AS Decimal(10, 0)), 2, 0.25, 1042)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (397, 18, CAST(62 AS Decimal(10, 0)), 4, 0.1, 1043)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (397, 43, CAST(46 AS Decimal(10, 0)), 20, 0, 1044)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (397, 46, CAST(12 AS Decimal(10, 0)), 21, 0.1, 1045)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (398, 18, CAST(62 AS Decimal(10, 0)), 20, 0, 1046)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (398, 36, CAST(19 AS Decimal(10, 0)), 15, 0, 1047)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (399, 1, CAST(18 AS Decimal(10, 0)), 15, 0.25, 1048)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (399, 10, CAST(31 AS Decimal(10, 0)), 18, 0.25, 1049)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (399, 71, CAST(21 AS Decimal(10, 0)), 30, 0.25, 1050)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (399, 77, CAST(13 AS Decimal(10, 0)), 35, 0.25, 1051)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (400, 19, CAST(9 AS Decimal(10, 0)), 30, 0, 1052)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (400, 39, CAST(18 AS Decimal(10, 0)), 20, 0, 1053)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (401, 22, CAST(21 AS Decimal(10, 0)), 15, 0, 1054)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (401, 24, CAST(4 AS Decimal(10, 0)), 15, 0.15, 1055)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (402, 28, CAST(45 AS Decimal(10, 0)), 20, 0, 1056)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (402, 72, CAST(34 AS Decimal(10, 0)), 15, 0, 1057)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (403, 30, CAST(25 AS Decimal(10, 0)), 30, 0, 1058)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (403, 53, CAST(32 AS Decimal(10, 0)), 25, 0.05, 1059)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (403, 54, CAST(7 AS Decimal(10, 0)), 30, 0, 1060)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (404, 19, CAST(9 AS Decimal(10, 0)), 12, 0.25, 1061)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (404, 22, CAST(21 AS Decimal(10, 0)), 20, 0.25, 1062)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (405, 30, CAST(25 AS Decimal(10, 0)), 2, 0.25, 1063)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (405, 42, CAST(14 AS Decimal(10, 0)), 20, 0, 1064)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (406, 16, CAST(17 AS Decimal(10, 0)), 30, 0.1, 1065)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (406, 60, CAST(34 AS Decimal(10, 0)), 20, 0.1, 1066)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (407, 4, CAST(22 AS Decimal(10, 0)), 12, 0.1, 1067)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (407, 39, CAST(18 AS Decimal(10, 0)), 20, 0.1, 1068)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (407, 54, CAST(7 AS Decimal(10, 0)), 6, 0.1, 1069)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (408, 41, CAST(9 AS Decimal(10, 0)), 20, 0.2, 1070)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (409, 14, CAST(23 AS Decimal(10, 0)), 3, 0.1, 1071)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (409, 44, CAST(19 AS Decimal(10, 0)), 28, 0.1, 1072)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (409, 47, CAST(9 AS Decimal(10, 0)), 6, 0.1, 1073)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (410, 15, CAST(15 AS Decimal(10, 0)), 50, 0, 1074)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (410, 41, CAST(9 AS Decimal(10, 0)), 24, 0, 1075)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (410, 46, CAST(12 AS Decimal(10, 0)), 45, 0, 1076)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (410, 47, CAST(9 AS Decimal(10, 0)), 10, 0, 1077)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (410, 56, CAST(38 AS Decimal(10, 0)), 45, 0, 1078)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (410, 60, CAST(34 AS Decimal(10, 0)), 30, 0, 1079)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (411, 21, CAST(10 AS Decimal(10, 0)), 60, 0, 1080)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (411, 40, CAST(18 AS Decimal(10, 0)), 70, 0.05, 1081)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (411, 60, CAST(34 AS Decimal(10, 0)), 55, 0.05, 1082)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (411, 77, CAST(13 AS Decimal(10, 0)), 70, 0.05, 1083)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (412, 31, CAST(12 AS Decimal(10, 0)), 20, 0.05, 1084)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (412, 40, CAST(18 AS Decimal(10, 0)), 24, 0.05, 1085)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (412, 70, CAST(15 AS Decimal(10, 0)), 40, 0.05, 1086)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (413, 20, CAST(81 AS Decimal(10, 0)), 21, 0, 1087)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (414, 39, CAST(18 AS Decimal(10, 0)), 3, 0.2, 1088)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (414, 58, CAST(13 AS Decimal(10, 0)), 49, 0.2, 1089)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (415, 68, CAST(12 AS Decimal(10, 0)), 10, 0, 1090)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (416, 40, CAST(18 AS Decimal(10, 0)), 30, 0.05, 1091)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (416, 42, CAST(14 AS Decimal(10, 0)), 30, 0.05, 1092)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (416, 51, CAST(53 AS Decimal(10, 0)), 20, 0.05, 1093)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (417, 10, CAST(31 AS Decimal(10, 0)), 24, 0.15, 1094)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (417, 56, CAST(38 AS Decimal(10, 0)), 12, 0.15, 1095)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (417, 65, CAST(21 AS Decimal(10, 0)), 15, 0.15, 1096)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (418, 51, CAST(53 AS Decimal(10, 0)), 20, 0, 1097)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (418, 59, CAST(55 AS Decimal(10, 0)), 1, 0, 1098)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (418, 76, CAST(18 AS Decimal(10, 0)), 10, 0, 1099)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (419, 29, CAST(123 AS Decimal(10, 0)), 36, 0, 1100)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (419, 65, CAST(21 AS Decimal(10, 0)), 10, 0, 1101)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (420, 69, CAST(36 AS Decimal(10, 0)), 45, 0.2, 1102)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (420, 71, CAST(21 AS Decimal(10, 0)), 14, 0.2, 1103)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (421, 31, CAST(12 AS Decimal(10, 0)), 8, 0.1, 1104)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (421, 55, CAST(24 AS Decimal(10, 0)), 4, 0.1, 1105)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (421, 64, CAST(33 AS Decimal(10, 0)), 15, 0.1, 1106)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (422, 36, CAST(19 AS Decimal(10, 0)), 30, 0, 1107)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (423, 23, CAST(9 AS Decimal(10, 0)), 32, 0, 1108)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (423, 46, CAST(12 AS Decimal(10, 0)), 60, 0, 1109)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (423, 67, CAST(14 AS Decimal(10, 0)), 25, 0, 1110)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (423, 73, CAST(15 AS Decimal(10, 0)), 50, 0, 1111)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (423, 75, CAST(7 AS Decimal(10, 0)), 25, 0, 1112)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (424, 16, CAST(17 AS Decimal(10, 0)), 10, 0, 1113)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (424, 62, CAST(49 AS Decimal(10, 0)), 10, 0, 1114)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (424, 65, CAST(21 AS Decimal(10, 0)), 12, 0, 1115)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (425, 38, CAST(263 AS Decimal(10, 0)), 15, 0.1, 1116)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (425, 71, CAST(21 AS Decimal(10, 0)), 12, 0, 1117)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (426, 16, CAST(17 AS Decimal(10, 0)), 3, 0, 1118)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (426, 42, CAST(14 AS Decimal(10, 0)), 6, 0, 1119)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (426, 43, CAST(46 AS Decimal(10, 0)), 6, 0, 1120)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (427, 23, CAST(9 AS Decimal(10, 0)), 5, 0, 1121)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (428, 14, CAST(23 AS Decimal(10, 0)), 30, 0, 1122)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (428, 53, CAST(32 AS Decimal(10, 0)), 10, 0, 1123)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (428, 58, CAST(13 AS Decimal(10, 0)), 30, 0, 1124)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (429, 10, CAST(31 AS Decimal(10, 0)), 2, 0, 1125)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (429, 19, CAST(9 AS Decimal(10, 0)), 7, 0, 1126)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (429, 44, CAST(19 AS Decimal(10, 0)), 21, 0, 1127)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (430, 26, CAST(31 AS Decimal(10, 0)), 30, 0.15, 1128)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (430, 33, CAST(2 AS Decimal(10, 0)), 8, 0.15, 1129)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (431, 12, CAST(38 AS Decimal(10, 0)), 100, 0, 1130)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (431, 33, CAST(2 AS Decimal(10, 0)), 30, 0, 1131)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (431, 41, CAST(9 AS Decimal(10, 0)), 120, 0, 1132)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (431, 54, CAST(7 AS Decimal(10, 0)), 30, 0, 1133)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (432, 59, CAST(55 AS Decimal(10, 0)), 12, 0, 1134)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (433, 16, CAST(17 AS Decimal(10, 0)), 50, 0.25, 1135)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (433, 31, CAST(12 AS Decimal(10, 0)), 20, 0.25, 1136)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (433, 42, CAST(14 AS Decimal(10, 0)), 40, 0.25, 1137)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (434, 19, CAST(9 AS Decimal(10, 0)), 30, 0.1, 1138)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (434, 21, CAST(10 AS Decimal(10, 0)), 12, 0.1, 1139)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (434, 64, CAST(33 AS Decimal(10, 0)), 28, 0, 1140)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (435, 33, CAST(2 AS Decimal(10, 0)), 30, 0, 1141)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (435, 66, CAST(17 AS Decimal(10, 0)), 4, 0, 1142)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (435, 75, CAST(7 AS Decimal(10, 0)), 30, 0, 1143)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (436, 52, CAST(7 AS Decimal(10, 0)), 9, 0, 1144)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (437, 40, CAST(18 AS Decimal(10, 0)), 20, 0, 1145)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (437, 47, CAST(9 AS Decimal(10, 0)), 40, 0, 1146)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (437, 60, CAST(34 AS Decimal(10, 0)), 30, 0, 1147)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (438, 10, CAST(31 AS Decimal(10, 0)), 20, 0, 1148)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (438, 41, CAST(9 AS Decimal(10, 0)), 4, 0, 1149)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (438, 47, CAST(9 AS Decimal(10, 0)), 15, 0, 1150)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (439, 17, CAST(39 AS Decimal(10, 0)), 30, 0.2, 1151)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (439, 26, CAST(31 AS Decimal(10, 0)), 15, 0, 1152)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (440, 9, CAST(97 AS Decimal(10, 0)), 50, 0.25, 1153)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (440, 29, CAST(123 AS Decimal(10, 0)), 10, 0, 1154)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (440, 36, CAST(19 AS Decimal(10, 0)), 6, 0.25, 1155)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (441, 10, CAST(31 AS Decimal(10, 0)), 18, 0.1, 1156)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (441, 28, CAST(45 AS Decimal(10, 0)), 60, 0.1, 1157)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (441, 34, CAST(14 AS Decimal(10, 0)), 14, 0, 1158)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (442, 1, CAST(18 AS Decimal(10, 0)), 35, 0.25, 1159)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (443, 56, CAST(38 AS Decimal(10, 0)), 20, 0.25, 1160)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (443, 77, CAST(13 AS Decimal(10, 0)), 30, 0.25, 1161)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (444, 1, CAST(18 AS Decimal(10, 0)), 30, 0, 1162)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (444, 29, CAST(123 AS Decimal(10, 0)), 40, 0, 1163)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (444, 43, CAST(46 AS Decimal(10, 0)), 40, 0, 1164)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (444, 44, CAST(19 AS Decimal(10, 0)), 24, 0, 1165)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (444, 62, CAST(49 AS Decimal(10, 0)), 48, 0, 1166)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (445, 63, CAST(43 AS Decimal(10, 0)), 20, 0, 1167)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (446, 9, CAST(97 AS Decimal(10, 0)), 6, 0, 1168)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (446, 54, CAST(7 AS Decimal(10, 0)), 60, 0.15, 1169)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (446, 69, CAST(36 AS Decimal(10, 0)), 30, 0.15, 1170)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (446, 73, CAST(15 AS Decimal(10, 0)), 15, 0.15, 1171)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (447, 7, CAST(30 AS Decimal(10, 0)), 90, 0, 1172)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (447, 59, CAST(55 AS Decimal(10, 0)), 25, 0, 1173)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (447, 70, CAST(15 AS Decimal(10, 0)), 50, 0, 1174)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (448, 8, CAST(40 AS Decimal(10, 0)), 10, 0, 1175)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (448, 12, CAST(38 AS Decimal(10, 0)), 4, 0, 1176)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (448, 24, CAST(4 AS Decimal(10, 0)), 20, 0, 1177)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (449, 17, CAST(39 AS Decimal(10, 0)), 20, 0, 1178)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (449, 46, CAST(12 AS Decimal(10, 0)), 18, 0, 1179)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (450, 19, CAST(9 AS Decimal(10, 0)), 7, 0.25, 1180)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (450, 35, CAST(18 AS Decimal(10, 0)), 9, 0.25, 1181)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (450, 58, CAST(13 AS Decimal(10, 0)), 30, 0.25, 1182)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (450, 70, CAST(15 AS Decimal(10, 0)), 30, 0.25, 1183)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (451, 11, CAST(21 AS Decimal(10, 0)), 15, 0, 1184)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (451, 17, CAST(39 AS Decimal(10, 0)), 8, 0.05, 1185)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (451, 29, CAST(123 AS Decimal(10, 0)), 12, 0.05, 1186)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (451, 65, CAST(21 AS Decimal(10, 0)), 65, 0.05, 1187)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (451, 70, CAST(15 AS Decimal(10, 0)), 8, 0.05, 1188)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (452, 47, CAST(9 AS Decimal(10, 0)), 12, 0, 1189)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (453, 1, CAST(18 AS Decimal(10, 0)), 5, 0.2, 1190)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (453, 34, CAST(14 AS Decimal(10, 0)), 12, 0.2, 1191)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (453, 68, CAST(12 AS Decimal(10, 0)), 40, 0.2, 1192)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (453, 71, CAST(21 AS Decimal(10, 0)), 60, 0.2, 1193)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (454, 59, CAST(55 AS Decimal(10, 0)), 42, 0.15, 1194)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (454, 71, CAST(21 AS Decimal(10, 0)), 20, 0.15, 1195)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (454, 76, CAST(18 AS Decimal(10, 0)), 35, 0.15, 1196)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (455, 3, CAST(10 AS Decimal(10, 0)), 6, 0, 1197)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (455, 76, CAST(18 AS Decimal(10, 0)), 15, 0, 1198)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (456, 2, CAST(19 AS Decimal(10, 0)), 5, 0, 1199)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (456, 59, CAST(55 AS Decimal(10, 0)), 35, 0, 1200)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (456, 73, CAST(15 AS Decimal(10, 0)), 35, 0, 1201)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (457, 4, CAST(22 AS Decimal(10, 0)), 6, 0, 1202)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (457, 24, CAST(4 AS Decimal(10, 0)), 35, 0, 1203)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (457, 48, CAST(12 AS Decimal(10, 0)), 24, 0, 1204)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (458, 31, CAST(12 AS Decimal(10, 0)), 20, 0, 1205)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (458, 32, CAST(32 AS Decimal(10, 0)), 4, 0, 1206)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (459, 16, CAST(17 AS Decimal(10, 0)), 20, 0, 1207)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (459, 43, CAST(46 AS Decimal(10, 0)), 24, 0, 1208)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (459, 59, CAST(55 AS Decimal(10, 0)), 8, 0, 1209)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (460, 55, CAST(24 AS Decimal(10, 0)), 21, 0, 1210)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (460, 57, CAST(19 AS Decimal(10, 0)), 40, 0, 1211)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (460, 70, CAST(15 AS Decimal(10, 0)), 28, 0.15, 1212)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (461, 5, CAST(21 AS Decimal(10, 0)), 4, 0, 1213)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (461, 36, CAST(19 AS Decimal(10, 0)), 5, 0, 1214)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (462, 8, CAST(40 AS Decimal(10, 0)), 40, 0, 1215)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (462, 51, CAST(53 AS Decimal(10, 0)), 28, 0, 1216)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (462, 60, CAST(34 AS Decimal(10, 0)), 10, 0, 1217)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (463, 19, CAST(9 AS Decimal(10, 0)), 5, 0, 1218)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (463, 47, CAST(9 AS Decimal(10, 0)), 5, 0, 1219)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (464, 19, CAST(9 AS Decimal(10, 0)), 12, 0, 1220)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (464, 41, CAST(9 AS Decimal(10, 0)), 42, 0, 1221)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (464, 53, CAST(32 AS Decimal(10, 0)), 120, 0, 1222)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (465, 53, CAST(32 AS Decimal(10, 0)), 3, 0.05, 1223)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (465, 56, CAST(38 AS Decimal(10, 0)), 30, 0, 1224)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (466, 10, CAST(31 AS Decimal(10, 0)), 18, 0, 1225)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (466, 26, CAST(31 AS Decimal(10, 0)), 30, 0, 1226)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (466, 45, CAST(9 AS Decimal(10, 0)), 110, 0, 1227)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (466, 46, CAST(12 AS Decimal(10, 0)), 24, 0, 1228)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (467, 2, CAST(19 AS Decimal(10, 0)), 30, 0.25, 1229)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (467, 17, CAST(39 AS Decimal(10, 0)), 27, 0.25, 1230)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (467, 47, CAST(9 AS Decimal(10, 0)), 50, 0.25, 1231)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (467, 56, CAST(38 AS Decimal(10, 0)), 18, 0.25, 1232)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (467, 58, CAST(13 AS Decimal(10, 0)), 12, 0.25, 1233)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (468, 10, CAST(31 AS Decimal(10, 0)), 21, 0, 1234)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (468, 71, CAST(21 AS Decimal(10, 0)), 30, 0, 1235)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (469, 21, CAST(10 AS Decimal(10, 0)), 5, 0, 1236)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (469, 51, CAST(53 AS Decimal(10, 0)), 7, 0, 1237)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (469, 61, CAST(28 AS Decimal(10, 0)), 10, 0, 1238)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (470, 21, CAST(10 AS Decimal(10, 0)), 32, 0.05, 1239)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (470, 54, CAST(7 AS Decimal(10, 0)), 15, 0, 1240)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (470, 69, CAST(36 AS Decimal(10, 0)), 25, 0.05, 1241)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (471, 12, CAST(38 AS Decimal(10, 0)), 36, 0, 1242)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (471, 16, CAST(17 AS Decimal(10, 0)), 20, 0, 1243)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (471, 36, CAST(19 AS Decimal(10, 0)), 40, 0, 1244)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (471, 62, CAST(49 AS Decimal(10, 0)), 20, 0, 1245)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (472, 18, CAST(62 AS Decimal(10, 0)), 12, 0.25, 1246)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (472, 30, CAST(25 AS Decimal(10, 0)), 3, 0.25, 1247)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (472, 54, CAST(7 AS Decimal(10, 0)), 40, 0.25, 1248)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (473, 35, CAST(18 AS Decimal(10, 0)), 21, 0, 1249)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (473, 71, CAST(21 AS Decimal(10, 0)), 8, 0, 1250)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (474, 44, CAST(19 AS Decimal(10, 0)), 50, 0.05, 1251)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (475, 2, CAST(19 AS Decimal(10, 0)), 3, 0, 1252)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (475, 31, CAST(12 AS Decimal(10, 0)), 50, 0, 1253)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (475, 68, CAST(12 AS Decimal(10, 0)), 45, 0, 1254)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (475, 75, CAST(7 AS Decimal(10, 0)), 42, 0, 1255)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (476, 26, CAST(31 AS Decimal(10, 0)), 15, 0, 1256)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (477, 10, CAST(31 AS Decimal(10, 0)), 16, 0, 1257)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (477, 61, CAST(28 AS Decimal(10, 0)), 5, 0, 1258)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (478, 41, CAST(9 AS Decimal(10, 0)), 12, 0, 1259)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (478, 52, CAST(7 AS Decimal(10, 0)), 4, 0, 1260)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (478, 55, CAST(24 AS Decimal(10, 0)), 6, 0, 1261)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (479, 4, CAST(22 AS Decimal(10, 0)), 25, 0, 1262)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (479, 11, CAST(21 AS Decimal(10, 0)), 5, 0, 1263)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (480, 17, CAST(39 AS Decimal(10, 0)), 20, 0.05, 1264)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (480, 56, CAST(38 AS Decimal(10, 0)), 10, 0.05, 1265)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (480, 59, CAST(55 AS Decimal(10, 0)), 10, 0.05, 1266)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (481, 30, CAST(25 AS Decimal(10, 0)), 15, 0, 1267)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (481, 40, CAST(18 AS Decimal(10, 0)), 6, 0, 1268)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (481, 55, CAST(24 AS Decimal(10, 0)), 12, 0, 1269)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (481, 60, CAST(34 AS Decimal(10, 0)), 15, 0, 1270)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (482, 1, CAST(18 AS Decimal(10, 0)), 50, 0, 1271)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (482, 21, CAST(10 AS Decimal(10, 0)), 30, 0, 1272)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (482, 50, CAST(16 AS Decimal(10, 0)), 40, 0, 1273)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (483, 16, CAST(17 AS Decimal(10, 0)), 15, 0.05, 1274)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (483, 31, CAST(12 AS Decimal(10, 0)), 3, 0.05, 1275)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (483, 65, CAST(21 AS Decimal(10, 0)), 10, 0.05, 1276)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (484, 21, CAST(10 AS Decimal(10, 0)), 40, 0.05, 1277)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (484, 51, CAST(53 AS Decimal(10, 0)), 30, 0.05, 1278)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (485, 76, CAST(18 AS Decimal(10, 0)), 20, 0, 1279)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (486, 14, CAST(23 AS Decimal(10, 0)), 16, 0, 1280)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (486, 28, CAST(45 AS Decimal(10, 0)), 20, 0, 1281)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (486, 52, CAST(7 AS Decimal(10, 0)), 25, 0, 1282)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (487, 6, CAST(25 AS Decimal(10, 0)), 30, 0, 1283)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (487, 30, CAST(25 AS Decimal(10, 0)), 15, 0, 1284)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (487, 76, CAST(18 AS Decimal(10, 0)), 20, 0, 1285)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (488, 61, CAST(28 AS Decimal(10, 0)), 20, 0.1, 1286)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (488, 77, CAST(13 AS Decimal(10, 0)), 2, 0.1, 1287)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (489, 65, CAST(21 AS Decimal(10, 0)), 40, 0, 1288)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (489, 75, CAST(7 AS Decimal(10, 0)), 20, 0, 1289)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (490, 13, CAST(6 AS Decimal(10, 0)), 4, 0, 1290)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (490, 41, CAST(9 AS Decimal(10, 0)), 12, 0, 1291)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (491, 16, CAST(17 AS Decimal(10, 0)), 3, 0, 1292)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (492, 36, CAST(19 AS Decimal(10, 0)), 6, 0, 1293)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (492, 52, CAST(7 AS Decimal(10, 0)), 18, 0, 1294)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (493, 28, CAST(45 AS Decimal(10, 0)), 5, 0.2, 1295)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (493, 35, CAST(18 AS Decimal(10, 0)), 35, 0.2, 1296)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (493, 45, CAST(9 AS Decimal(10, 0)), 40, 0.2, 1297)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (493, 56, CAST(38 AS Decimal(10, 0)), 14, 0.2, 1298)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (494, 2, CAST(19 AS Decimal(10, 0)), 15, 0.2, 1299)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (495, 3, CAST(10 AS Decimal(10, 0)), 20, 0, 1300)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (495, 60, CAST(34 AS Decimal(10, 0)), 50, 0, 1301)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (495, 72, CAST(34 AS Decimal(10, 0)), 35, 0, 1302)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (496, 46, CAST(12 AS Decimal(10, 0)), 28, 0.05, 1303)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (497, 40, CAST(18 AS Decimal(10, 0)), 50, 0.2, 1304)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (498, 18, CAST(62 AS Decimal(10, 0)), 24, 0, 1305)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (498, 44, CAST(19 AS Decimal(10, 0)), 16, 0, 1306)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (498, 59, CAST(55 AS Decimal(10, 0)), 45, 0, 1307)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (498, 72, CAST(34 AS Decimal(10, 0)), 7, 0, 1308)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (499, 13, CAST(6 AS Decimal(10, 0)), 6, 0, 1309)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (499, 42, CAST(14 AS Decimal(10, 0)), 28, 0, 1310)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (499, 62, CAST(49 AS Decimal(10, 0)), 9, 0, 1311)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (499, 69, CAST(36 AS Decimal(10, 0)), 40, 0, 1312)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (500, 31, CAST(12 AS Decimal(10, 0)), 8, 0, 1313)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (500, 41, CAST(9 AS Decimal(10, 0)), 35, 0, 1314)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (500, 63, CAST(43 AS Decimal(10, 0)), 9, 0, 1315)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (500, 69, CAST(36 AS Decimal(10, 0)), 30, 0, 1316)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (501, 23, CAST(9 AS Decimal(10, 0)), 44, 0, 1317)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (501, 40, CAST(18 AS Decimal(10, 0)), 40, 0, 1318)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (501, 56, CAST(38 AS Decimal(10, 0)), 28, 0, 1319)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (502, 56, CAST(38 AS Decimal(10, 0)), 15, 0, 1320)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (502, 59, CAST(55 AS Decimal(10, 0)), 6, 0, 1321)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (502, 76, CAST(18 AS Decimal(10, 0)), 10, 0, 1322)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (503, 14, CAST(23 AS Decimal(10, 0)), 5, 0.15, 1323)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (503, 45, CAST(9 AS Decimal(10, 0)), 40, 0.15, 1324)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (503, 59, CAST(55 AS Decimal(10, 0)), 25, 0.15, 1325)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (504, 26, CAST(31 AS Decimal(10, 0)), 12, 0.1, 1326)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (504, 30, CAST(25 AS Decimal(10, 0)), 30, 0, 1327)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (504, 50, CAST(16 AS Decimal(10, 0)), 20, 0.1, 1328)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (504, 73, CAST(15 AS Decimal(10, 0)), 15, 0, 1329)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (505, 1, CAST(18 AS Decimal(10, 0)), 8, 0, 1330)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (505, 69, CAST(36 AS Decimal(10, 0)), 3, 0, 1331)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (506, 45, CAST(9 AS Decimal(10, 0)), 4, 0, 1332)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (506, 74, CAST(10 AS Decimal(10, 0)), 5, 0, 1333)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (507, 40, CAST(18 AS Decimal(10, 0)), 3, 0, 1334)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (508, 47, CAST(9 AS Decimal(10, 0)), 30, 0.25, 1335)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (508, 56, CAST(38 AS Decimal(10, 0)), 30, 0.25, 1336)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (508, 57, CAST(19 AS Decimal(10, 0)), 14, 0.25, 1337)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (508, 69, CAST(36 AS Decimal(10, 0)), 25, 0.25, 1338)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (509, 18, CAST(62 AS Decimal(10, 0)), 21, 0.2, 1339)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (509, 36, CAST(19 AS Decimal(10, 0)), 20, 0.2, 1340)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (509, 68, CAST(12 AS Decimal(10, 0)), 6, 0.2, 1341)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (509, 69, CAST(36 AS Decimal(10, 0)), 20, 0.2, 1342)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (510, 34, CAST(14 AS Decimal(10, 0)), 30, 0, 1343)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (510, 59, CAST(55 AS Decimal(10, 0)), 7, 0, 1344)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (510, 62, CAST(49 AS Decimal(10, 0)), 30, 0, 1345)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (510, 64, CAST(33 AS Decimal(10, 0)), 24, 0, 1346)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (511, 26, CAST(31 AS Decimal(10, 0)), 20, 0, 1347)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (511, 52, CAST(7 AS Decimal(10, 0)), 60, 0, 1348)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (511, 70, CAST(15 AS Decimal(10, 0)), 40, 0, 1349)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (512, 32, CAST(32 AS Decimal(10, 0)), 10, 0, 1350)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (513, 25, CAST(14 AS Decimal(10, 0)), 12, 0.25, 1351)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (513, 27, CAST(43 AS Decimal(10, 0)), 40, 0, 1352)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (513, 43, CAST(46 AS Decimal(10, 0)), 30, 0.25, 1353)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (514, 25, CAST(14 AS Decimal(10, 0)), 35, 0.25, 1354)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (514, 75, CAST(7 AS Decimal(10, 0)), 18, 0, 1355)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (515, 39, CAST(18 AS Decimal(10, 0)), 16, 0, 1356)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (515, 47, CAST(9 AS Decimal(10, 0)), 30, 0, 1357)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (515, 51, CAST(53 AS Decimal(10, 0)), 28, 0, 1358)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (515, 56, CAST(38 AS Decimal(10, 0)), 60, 0, 1359)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (516, 21, CAST(10 AS Decimal(10, 0)), 40, 0, 1360)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (516, 22, CAST(21 AS Decimal(10, 0)), 6, 0, 1361)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (516, 24, CAST(4 AS Decimal(10, 0)), 20, 0, 1362)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (517, 3, CAST(10 AS Decimal(10, 0)), 20, 0.1, 1363)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (517, 39, CAST(18 AS Decimal(10, 0)), 130, 0.1, 1364)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (518, 65, CAST(21 AS Decimal(10, 0)), 80, 0.1, 1365)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (519, 2, CAST(19 AS Decimal(10, 0)), 40, 0, 1366)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (519, 7, CAST(30 AS Decimal(10, 0)), 35, 0, 1367)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (519, 68, CAST(12 AS Decimal(10, 0)), 40, 0, 1368)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (520, 42, CAST(14 AS Decimal(10, 0)), 2, 0, 1369)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (521, 22, CAST(21 AS Decimal(10, 0)), 4, 0, 1370)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (521, 31, CAST(12 AS Decimal(10, 0)), 50, 0, 1371)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (521, 60, CAST(34 AS Decimal(10, 0)), 15, 0, 1372)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (521, 71, CAST(21 AS Decimal(10, 0)), 12, 0, 1373)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (522, 41, CAST(9 AS Decimal(10, 0)), 30, 0.05, 1374)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (522, 52, CAST(7 AS Decimal(10, 0)), 15, 0.05, 1375)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (522, 61, CAST(28 AS Decimal(10, 0)), 20, 0, 1376)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (522, 62, CAST(49 AS Decimal(10, 0)), 15, 0, 1377)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (523, 11, CAST(21 AS Decimal(10, 0)), 15, 0.25, 1378)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (524, 71, CAST(21 AS Decimal(10, 0)), 16, 0, 1379)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (525, 29, CAST(123 AS Decimal(10, 0)), 18, 0, 1380)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (525, 59, CAST(55 AS Decimal(10, 0)), 25, 0, 1381)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (526, 17, CAST(39 AS Decimal(10, 0)), 33, 0, 1382)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (526, 31, CAST(12 AS Decimal(10, 0)), 70, 0.2, 1383)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (526, 75, CAST(7 AS Decimal(10, 0)), 7, 0.2, 1384)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (527, 31, CAST(12 AS Decimal(10, 0)), 2, 0.25, 1385)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (527, 66, CAST(17 AS Decimal(10, 0)), 50, 0, 1386)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (528, 10, CAST(31 AS Decimal(10, 0)), 6, 0, 1387)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (528, 67, CAST(14 AS Decimal(10, 0)), 3, 0, 1388)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (529, 31, CAST(12 AS Decimal(10, 0)), 16, 0.05, 1389)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (529, 42, CAST(14 AS Decimal(10, 0)), 12, 0.05, 1390)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (529, 45, CAST(9 AS Decimal(10, 0)), 27, 0.05, 1391)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (529, 51, CAST(53 AS Decimal(10, 0)), 120, 0.05, 1392)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (530, 42, CAST(14 AS Decimal(10, 0)), 20, 0.2, 1393)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (531, 41, CAST(9 AS Decimal(10, 0)), 10, 0, 1394)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (532, 16, CAST(17 AS Decimal(10, 0)), 20, 0, 1395)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (532, 62, CAST(49 AS Decimal(10, 0)), 20, 0, 1396)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (533, 70, CAST(15 AS Decimal(10, 0)), 35, 0, 1397)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (533, 77, CAST(13 AS Decimal(10, 0)), 15, 0, 1398)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (534, 54, CAST(7 AS Decimal(10, 0)), 3, 0.2, 1399)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (534, 56, CAST(38 AS Decimal(10, 0)), 20, 0.2, 1400)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (534, 74, CAST(10 AS Decimal(10, 0)), 35, 0, 1401)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (535, 31, CAST(12 AS Decimal(10, 0)), 1, 0, 1402)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (536, 31, CAST(12 AS Decimal(10, 0)), 10, 0, 1403)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (536, 38, CAST(263 AS Decimal(10, 0)), 5, 0, 1404)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (537, 36, CAST(19 AS Decimal(10, 0)), 30, 0, 1405)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (537, 39, CAST(18 AS Decimal(10, 0)), 2, 0.15, 1406)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (537, 72, CAST(34 AS Decimal(10, 0)), 30, 0.15, 1407)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (538, 10, CAST(31 AS Decimal(10, 0)), 10, 0, 1408)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (538, 75, CAST(7 AS Decimal(10, 0)), 10, 0, 1409)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (539, 8, CAST(40 AS Decimal(10, 0)), 30, 0.2, 1410)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (539, 30, CAST(25 AS Decimal(10, 0)), 15, 0.2, 1411)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (539, 75, CAST(7 AS Decimal(10, 0)), 42, 0.2, 1412)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (540, 2, CAST(19 AS Decimal(10, 0)), 15, 0.05, 1413)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (540, 29, CAST(123 AS Decimal(10, 0)), 20, 0.05, 1414)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (541, 19, CAST(9 AS Decimal(10, 0)), 50, 0.05, 1415)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (541, 75, CAST(7 AS Decimal(10, 0)), 40, 0.05, 1416)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (542, 18, CAST(62 AS Decimal(10, 0)), 30, 0, 1417)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (542, 35, CAST(18 AS Decimal(10, 0)), 15, 0, 1418)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (542, 63, CAST(43 AS Decimal(10, 0)), 30, 0, 1419)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (542, 68, CAST(12 AS Decimal(10, 0)), 18, 0, 1420)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (543, 7, CAST(30 AS Decimal(10, 0)), 3, 0.15, 1421)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (543, 56, CAST(38 AS Decimal(10, 0)), 20, 0.15, 1422)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (544, 29, CAST(123 AS Decimal(10, 0)), 14, 0.05, 1423)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (544, 41, CAST(9 AS Decimal(10, 0)), 20, 0.05, 1424)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (545, 2, CAST(19 AS Decimal(10, 0)), 10, 0, 1425)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (545, 54, CAST(7 AS Decimal(10, 0)), 3, 0, 1426)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (545, 68, CAST(12 AS Decimal(10, 0)), 15, 0, 1427)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (546, 41, CAST(9 AS Decimal(10, 0)), 14, 0, 1428)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (546, 52, CAST(7 AS Decimal(10, 0)), 8, 0, 1429)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (547, 14, CAST(23 AS Decimal(10, 0)), 15, 0.2, 1430)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (547, 54, CAST(7 AS Decimal(10, 0)), 6, 0.2, 1431)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (548, 16, CAST(17 AS Decimal(10, 0)), 65, 0, 1432)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (548, 17, CAST(39 AS Decimal(10, 0)), 35, 0.25, 1433)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (549, 26, CAST(31 AS Decimal(10, 0)), 21, 0.2, 1434)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (549, 44, CAST(19 AS Decimal(10, 0)), 10, 0, 1435)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (549, 64, CAST(33 AS Decimal(10, 0)), 35, 0.2, 1436)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (549, 69, CAST(36 AS Decimal(10, 0)), 24, 0.2, 1437)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (550, 11, CAST(21 AS Decimal(10, 0)), 20, 0, 1438)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (551, 62, CAST(49 AS Decimal(10, 0)), 2, 0, 1439)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (551, 72, CAST(34 AS Decimal(10, 0)), 10, 0, 1440)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (552, 13, CAST(6 AS Decimal(10, 0)), 20, 0.15, 1441)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (552, 24, CAST(4 AS Decimal(10, 0)), 20, 0.15, 1442)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (552, 59, CAST(55 AS Decimal(10, 0)), 25, 0, 1443)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (553, 11, CAST(21 AS Decimal(10, 0)), 50, 0.1, 1444)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (553, 51, CAST(53 AS Decimal(10, 0)), 10, 0.1, 1445)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (553, 54, CAST(7 AS Decimal(10, 0)), 7, 0.1, 1446)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (554, 17, CAST(39 AS Decimal(10, 0)), 40, 0.25, 1447)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (554, 29, CAST(123 AS Decimal(10, 0)), 20, 0.25, 1448)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (555, 30, CAST(25 AS Decimal(10, 0)), 25, 0.25, 1449)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (555, 51, CAST(53 AS Decimal(10, 0)), 30, 0.25, 1450)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (555, 55, CAST(24 AS Decimal(10, 0)), 60, 0.25, 1451)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (555, 62, CAST(49 AS Decimal(10, 0)), 5, 0.25, 1452)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (556, 19, CAST(9 AS Decimal(10, 0)), 24, 0.05, 1453)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (556, 25, CAST(14 AS Decimal(10, 0)), 15, 0.05, 1454)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (556, 59, CAST(55 AS Decimal(10, 0)), 15, 0.05, 1455)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (557, 10, CAST(31 AS Decimal(10, 0)), 36, 0, 1456)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (557, 28, CAST(45 AS Decimal(10, 0)), 24, 0, 1457)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (557, 49, CAST(20 AS Decimal(10, 0)), 4, 0.15, 1458)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (558, 34, CAST(14 AS Decimal(10, 0)), 10, 0, 1459)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (558, 38, CAST(263 AS Decimal(10, 0)), 10, 0, 1460)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (559, 2, CAST(19 AS Decimal(10, 0)), 20, 0.25, 1461)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (559, 65, CAST(21 AS Decimal(10, 0)), 2, 0, 1462)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (559, 74, CAST(10 AS Decimal(10, 0)), 15, 0.25, 1463)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (560, 40, CAST(18 AS Decimal(10, 0)), 1, 0, 1464)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (561, 56, CAST(38 AS Decimal(10, 0)), 20, 0.15, 1465)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (561, 76, CAST(18 AS Decimal(10, 0)), 50, 0.15, 1466)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (562, 52, CAST(7 AS Decimal(10, 0)), 20, 0, 1467)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (563, 13, CAST(6 AS Decimal(10, 0)), 7, 0, 1468)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (563, 25, CAST(14 AS Decimal(10, 0)), 5, 0, 1469)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (563, 70, CAST(15 AS Decimal(10, 0)), 5, 0, 1470)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (564, 19, CAST(9 AS Decimal(10, 0)), 15, 0, 1471)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (564, 23, CAST(9 AS Decimal(10, 0)), 18, 0, 1472)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (564, 40, CAST(18 AS Decimal(10, 0)), 30, 0, 1473)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (565, 31, CAST(12 AS Decimal(10, 0)), 16, 0.1, 1474)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (565, 72, CAST(34 AS Decimal(10, 0)), 40, 0.1, 1475)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (565, 77, CAST(13 AS Decimal(10, 0)), 20, 0, 1476)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (566, 2, CAST(19 AS Decimal(10, 0)), 12, 0.2, 1477)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (566, 46, CAST(12 AS Decimal(10, 0)), 35, 0, 1478)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (567, 41, CAST(9 AS Decimal(10, 0)), 20, 0, 1479)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (567, 43, CAST(46 AS Decimal(10, 0)), 20, 0.15, 1480)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (567, 48, CAST(12 AS Decimal(10, 0)), 8, 0.15, 1481)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (567, 61, CAST(28 AS Decimal(10, 0)), 30, 0.15, 1482)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (568, 33, CAST(2 AS Decimal(10, 0)), 16, 0, 1483)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (569, 38, CAST(263 AS Decimal(10, 0)), 30, 0.05, 1484)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (569, 62, CAST(49 AS Decimal(10, 0)), 20, 0.05, 1485)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (570, 26, CAST(31 AS Decimal(10, 0)), 40, 0.15, 1486)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (570, 38, CAST(263 AS Decimal(10, 0)), 30, 0, 1487)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (570, 40, CAST(18 AS Decimal(10, 0)), 60, 0.15, 1488)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (570, 62, CAST(49 AS Decimal(10, 0)), 25, 0.15, 1489)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (571, 32, CAST(32 AS Decimal(10, 0)), 20, 0, 1490)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (571, 41, CAST(9 AS Decimal(10, 0)), 20, 0, 1491)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (572, 43, CAST(46 AS Decimal(10, 0)), 7, 0, 1492)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (572, 75, CAST(7 AS Decimal(10, 0)), 20, 0, 1493)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (573, 56, CAST(38 AS Decimal(10, 0)), 30, 0, 1494)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (574, 35, CAST(18 AS Decimal(10, 0)), 20, 0, 1495)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (574, 51, CAST(53 AS Decimal(10, 0)), 6, 0, 1496)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (575, 62, CAST(49 AS Decimal(10, 0)), 3, 0, 1497)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (575, 70, CAST(15 AS Decimal(10, 0)), 6, 0, 1498)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (576, 11, CAST(21 AS Decimal(10, 0)), 20, 0.1, 1499)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (576, 57, CAST(19 AS Decimal(10, 0)), 15, 0, 1500)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (576, 59, CAST(55 AS Decimal(10, 0)), 40, 0.1, 1501)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (576, 77, CAST(13 AS Decimal(10, 0)), 15, 0.1, 1502)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (577, 41, CAST(9 AS Decimal(10, 0)), 12, 0, 1503)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (577, 70, CAST(15 AS Decimal(10, 0)), 9, 0, 1504)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (578, 26, CAST(31 AS Decimal(10, 0)), 12, 0, 1505)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (578, 53, CAST(32 AS Decimal(10, 0)), 20, 0, 1506)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (579, 31, CAST(12 AS Decimal(10, 0)), 35, 0, 1507)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (579, 57, CAST(19 AS Decimal(10, 0)), 15, 0, 1508)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (580, 10, CAST(31 AS Decimal(10, 0)), 15, 0, 1509)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (580, 39, CAST(18 AS Decimal(10, 0)), 21, 0, 1510)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (581, 20, CAST(81 AS Decimal(10, 0)), 5, 0, 1511)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (581, 38, CAST(263 AS Decimal(10, 0)), 2, 0, 1512)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (582, 2, CAST(19 AS Decimal(10, 0)), 10, 0, 1513)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (582, 8, CAST(40 AS Decimal(10, 0)), 20, 0, 1514)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (582, 13, CAST(6 AS Decimal(10, 0)), 10, 0, 1515)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (582, 60, CAST(34 AS Decimal(10, 0)), 21, 0, 1516)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (583, 6, CAST(25 AS Decimal(10, 0)), 6, 0, 1517)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (583, 39, CAST(18 AS Decimal(10, 0)), 28, 0, 1518)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (583, 60, CAST(34 AS Decimal(10, 0)), 30, 0, 1519)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (583, 68, CAST(12 AS Decimal(10, 0)), 24, 0, 1520)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (584, 19, CAST(9 AS Decimal(10, 0)), 2, 0, 1521)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (584, 35, CAST(18 AS Decimal(10, 0)), 8, 0, 1522)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (584, 38, CAST(263 AS Decimal(10, 0)), 8, 0, 1523)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (584, 43, CAST(46 AS Decimal(10, 0)), 9, 0, 1524)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (585, 13, CAST(6 AS Decimal(10, 0)), 3, 0.2, 1525)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (585, 25, CAST(14 AS Decimal(10, 0)), 10, 0.2, 1526)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (585, 44, CAST(19 AS Decimal(10, 0)), 16, 0.2, 1527)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (585, 64, CAST(33 AS Decimal(10, 0)), 3, 0, 1528)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (586, 7, CAST(30 AS Decimal(10, 0)), 20, 0.1, 1529)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (586, 31, CAST(12 AS Decimal(10, 0)), 9, 0.1, 1530)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (586, 53, CAST(32 AS Decimal(10, 0)), 9, 0.1, 1531)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (587, 29, CAST(123 AS Decimal(10, 0)), 8, 0.05, 1532)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (587, 30, CAST(25 AS Decimal(10, 0)), 20, 0.05, 1533)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (588, 59, CAST(55 AS Decimal(10, 0)), 15, 0, 1534)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (588, 77, CAST(13 AS Decimal(10, 0)), 2, 0.2, 1535)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (589, 22, CAST(21 AS Decimal(10, 0)), 52, 0, 1536)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (589, 35, CAST(18 AS Decimal(10, 0)), 6, 0, 1537)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (589, 57, CAST(19 AS Decimal(10, 0)), 24, 0, 1538)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (589, 60, CAST(34 AS Decimal(10, 0)), 60, 0, 1539)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (589, 64, CAST(33 AS Decimal(10, 0)), 30, 0, 1540)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (590, 13, CAST(6 AS Decimal(10, 0)), 6, 0, 1541)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (590, 40, CAST(18 AS Decimal(10, 0)), 25, 0, 1542)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (590, 47, CAST(9 AS Decimal(10, 0)), 40, 0.25, 1543)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (590, 76, CAST(18 AS Decimal(10, 0)), 21, 0.25, 1544)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (591, 1, CAST(18 AS Decimal(10, 0)), 4, 0.25, 1545)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (591, 18, CAST(62 AS Decimal(10, 0)), 25, 0.25, 1546)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (591, 36, CAST(19 AS Decimal(10, 0)), 50, 0.25, 1547)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (592, 58, CAST(13 AS Decimal(10, 0)), 30, 0.1, 1548)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (592, 72, CAST(34 AS Decimal(10, 0)), 15, 0.1, 1549)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (593, 25, CAST(14 AS Decimal(10, 0)), 6, 0.2, 1550)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (593, 39, CAST(18 AS Decimal(10, 0)), 10, 0.2, 1551)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (594, 10, CAST(31 AS Decimal(10, 0)), 16, 0, 1552)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (594, 56, CAST(38 AS Decimal(10, 0)), 30, 0, 1553)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (594, 59, CAST(55 AS Decimal(10, 0)), 50, 0, 1554)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (594, 77, CAST(13 AS Decimal(10, 0)), 15, 0, 1555)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (595, 11, CAST(21 AS Decimal(10, 0)), 15, 0, 1556)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (595, 43, CAST(46 AS Decimal(10, 0)), 5, 0, 1557)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (595, 68, CAST(12 AS Decimal(10, 0)), 20, 0, 1558)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (595, 70, CAST(15 AS Decimal(10, 0)), 12, 0, 1559)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (596, 51, CAST(53 AS Decimal(10, 0)), 4, 0.25, 1560)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (597, 22, CAST(21 AS Decimal(10, 0)), 35, 0, 1561)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (598, 23, CAST(9 AS Decimal(10, 0)), 70, 0.1, 1562)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (598, 35, CAST(18 AS Decimal(10, 0)), 25, 0.1, 1563)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (598, 42, CAST(14 AS Decimal(10, 0)), 42, 0.1, 1564)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (598, 58, CAST(13 AS Decimal(10, 0)), 60, 0.1, 1565)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (598, 64, CAST(33 AS Decimal(10, 0)), 48, 0, 1566)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (599, 4, CAST(22 AS Decimal(10, 0)), 21, 0, 1567)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (599, 70, CAST(15 AS Decimal(10, 0)), 30, 0, 1568)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (599, 74, CAST(10 AS Decimal(10, 0)), 20, 0, 1569)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (600, 1, CAST(18 AS Decimal(10, 0)), 80, 0.2, 1570)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (600, 19, CAST(9 AS Decimal(10, 0)), 12, 0.2, 1571)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (600, 37, CAST(26 AS Decimal(10, 0)), 60, 0.2, 1572)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (600, 45, CAST(9 AS Decimal(10, 0)), 36, 0.2, 1573)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (600, 60, CAST(34 AS Decimal(10, 0)), 45, 0.2, 1574)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (600, 71, CAST(21 AS Decimal(10, 0)), 55, 0.2, 1575)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (601, 5, CAST(21 AS Decimal(10, 0)), 30, 0, 1576)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (601, 9, CAST(97 AS Decimal(10, 0)), 3, 0, 1577)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (602, 3, CAST(10 AS Decimal(10, 0)), 49, 0, 1578)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (602, 26, CAST(31 AS Decimal(10, 0)), 18, 0.15, 1579)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (603, 25, CAST(14 AS Decimal(10, 0)), 20, 0.15, 1580)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (603, 33, CAST(2 AS Decimal(10, 0)), 4, 0.15, 1581)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (603, 70, CAST(15 AS Decimal(10, 0)), 30, 0.15, 1582)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (604, 2, CAST(19 AS Decimal(10, 0)), 5, 0.05, 1583)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (604, 25, CAST(14 AS Decimal(10, 0)), 10, 0.05, 1584)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (604, 57, CAST(19 AS Decimal(10, 0)), 10, 0.05, 1585)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (604, 59, CAST(55 AS Decimal(10, 0)), 42, 0.05, 1586)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (605, 2, CAST(19 AS Decimal(10, 0)), 15, 0, 1587)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (605, 17, CAST(39 AS Decimal(10, 0)), 6, 0, 1588)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (605, 62, CAST(49 AS Decimal(10, 0)), 50, 0, 1589)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (606, 18, CAST(62 AS Decimal(10, 0)), 10, 0, 1590)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (607, 10, CAST(31 AS Decimal(10, 0)), 100, 0.15, 1591)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (607, 13, CAST(6 AS Decimal(10, 0)), 65, 0.15, 1592)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (608, 16, CAST(17 AS Decimal(10, 0)), 50, 0, 1593)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (608, 31, CAST(12 AS Decimal(10, 0)), 14, 0, 1594)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (608, 56, CAST(38 AS Decimal(10, 0)), 24, 0, 1595)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (608, 65, CAST(21 AS Decimal(10, 0)), 15, 0.15, 1596)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (609, 2, CAST(19 AS Decimal(10, 0)), 20, 0, 1597)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (609, 42, CAST(14 AS Decimal(10, 0)), 20, 0, 1598)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (610, 3, CAST(10 AS Decimal(10, 0)), 30, 0, 1599)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (610, 26, CAST(31 AS Decimal(10, 0)), 35, 0.25, 1600)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (610, 29, CAST(123 AS Decimal(10, 0)), 10, 0.25, 1601)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (611, 7, CAST(30 AS Decimal(10, 0)), 5, 0, 1602)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (611, 27, CAST(43 AS Decimal(10, 0)), 10, 0, 1603)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (611, 70, CAST(15 AS Decimal(10, 0)), 4, 0, 1604)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (612, 24, CAST(4 AS Decimal(10, 0)), 40, 0.25, 1605)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (612, 54, CAST(7 AS Decimal(10, 0)), 35, 0.25, 1606)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (612, 64, CAST(33 AS Decimal(10, 0)), 30, 0.25, 1607)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (613, 51, CAST(53 AS Decimal(10, 0)), 3, 0, 1608)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (613, 76, CAST(18 AS Decimal(10, 0)), 20, 0, 1609)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (614, 17, CAST(39 AS Decimal(10, 0)), 42, 0, 1610)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (614, 18, CAST(62 AS Decimal(10, 0)), 20, 0, 1611)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (614, 21, CAST(10 AS Decimal(10, 0)), 40, 0, 1612)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (614, 33, CAST(2 AS Decimal(10, 0)), 35, 0, 1613)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (614, 62, CAST(49 AS Decimal(10, 0)), 3, 0, 1614)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (615, 11, CAST(21 AS Decimal(10, 0)), 25, 0, 1615)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (615, 52, CAST(7 AS Decimal(10, 0)), 8, 0, 1616)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (616, 1, CAST(18 AS Decimal(10, 0)), 20, 0.15, 1617)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (616, 58, CAST(13 AS Decimal(10, 0)), 12, 0.15, 1618)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (617, 35, CAST(18 AS Decimal(10, 0)), 4, 0, 1619)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (617, 67, CAST(14 AS Decimal(10, 0)), 15, 0, 1620)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (618, 38, CAST(263 AS Decimal(10, 0)), 60, 0.05, 1621)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (618, 39, CAST(18 AS Decimal(10, 0)), 80, 0.05, 1622)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (619, 2, CAST(19 AS Decimal(10, 0)), 21, 0.25, 1623)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (619, 24, CAST(4 AS Decimal(10, 0)), 6, 0.25, 1624)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (619, 30, CAST(25 AS Decimal(10, 0)), 40, 0.25, 1625)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (620, 53, CAST(32 AS Decimal(10, 0)), 3, 0, 1626)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (621, 26, CAST(31 AS Decimal(10, 0)), 20, 0, 1627)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (621, 35, CAST(18 AS Decimal(10, 0)), 30, 0, 1628)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (621, 49, CAST(20 AS Decimal(10, 0)), 42, 0.1, 1629)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (622, 1, CAST(18 AS Decimal(10, 0)), 40, 0, 1630)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (622, 11, CAST(21 AS Decimal(10, 0)), 10, 0, 1631)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (622, 23, CAST(9 AS Decimal(10, 0)), 50, 0, 1632)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (622, 68, CAST(12 AS Decimal(10, 0)), 20, 0, 1633)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (623, 35, CAST(18 AS Decimal(10, 0)), 3, 0, 1634)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (623, 51, CAST(53 AS Decimal(10, 0)), 2, 0, 1635)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (624, 6, CAST(25 AS Decimal(10, 0)), 50, 0.05, 1636)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (624, 16, CAST(17 AS Decimal(10, 0)), 12, 0.05, 1637)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (624, 17, CAST(39 AS Decimal(10, 0)), 16, 0.05, 1638)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (625, 55, CAST(24 AS Decimal(10, 0)), 10, 0.05, 1639)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (625, 62, CAST(49 AS Decimal(10, 0)), 20, 0.05, 1640)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (625, 64, CAST(33 AS Decimal(10, 0)), 15, 0.05, 1641)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (625, 65, CAST(21 AS Decimal(10, 0)), 21, 0.05, 1642)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (626, 21, CAST(10 AS Decimal(10, 0)), 20, 0, 1643)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (626, 28, CAST(45 AS Decimal(10, 0)), 3, 0, 1644)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (627, 10, CAST(31 AS Decimal(10, 0)), 10, 0, 1645)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (628, 19, CAST(9 AS Decimal(10, 0)), 25, 0, 1646)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (628, 47, CAST(9 AS Decimal(10, 0)), 21, 0.1, 1647)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (628, 49, CAST(20 AS Decimal(10, 0)), 15, 0, 1648)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (629, 46, CAST(12 AS Decimal(10, 0)), 21, 0, 1649)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (629, 64, CAST(33 AS Decimal(10, 0)), 20, 0, 1650)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (630, 16, CAST(17 AS Decimal(10, 0)), 30, 0.25, 1651)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (630, 18, CAST(62 AS Decimal(10, 0)), 25, 0, 1652)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (631, 20, CAST(81 AS Decimal(10, 0)), 20, 0.05, 1653)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (632, 40, CAST(18 AS Decimal(10, 0)), 12, 0, 1654)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (632, 65, CAST(21 AS Decimal(10, 0)), 10, 0, 1655)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (632, 76, CAST(18 AS Decimal(10, 0)), 10, 0, 1656)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (633, 23, CAST(9 AS Decimal(10, 0)), 30, 0.2, 1657)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (633, 61, CAST(28 AS Decimal(10, 0)), 30, 0.2, 1658)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (633, 70, CAST(15 AS Decimal(10, 0)), 50, 0.2, 1659)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (634, 73, CAST(15 AS Decimal(10, 0)), 10, 0, 1660)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (635, 42, CAST(14 AS Decimal(10, 0)), 25, 0, 1661)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (635, 49, CAST(20 AS Decimal(10, 0)), 20, 0.15, 1662)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (635, 54, CAST(7 AS Decimal(10, 0)), 32, 0.15, 1663)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (636, 24, CAST(4 AS Decimal(10, 0)), 8, 0, 1664)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (637, 21, CAST(10 AS Decimal(10, 0)), 40, 0.05, 1665)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (637, 56, CAST(38 AS Decimal(10, 0)), 21, 0.05, 1666)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (637, 65, CAST(21 AS Decimal(10, 0)), 12, 0.05, 1667)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (638, 2, CAST(19 AS Decimal(10, 0)), 20, 0, 1668)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (638, 24, CAST(4 AS Decimal(10, 0)), 12, 0, 1669)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (638, 70, CAST(15 AS Decimal(10, 0)), 30, 0, 1670)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (638, 77, CAST(13 AS Decimal(10, 0)), 25, 0, 1671)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (639, 10, CAST(31 AS Decimal(10, 0)), 70, 0, 1672)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (639, 31, CAST(12 AS Decimal(10, 0)), 35, 0, 1673)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (639, 77, CAST(13 AS Decimal(10, 0)), 40, 0, 1674)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (640, 25, CAST(14 AS Decimal(10, 0)), 5, 0, 1675)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (641, 2, CAST(19 AS Decimal(10, 0)), 20, 0, 1676)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (641, 68, CAST(12 AS Decimal(10, 0)), 18, 0, 1677)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (642, 11, CAST(21 AS Decimal(10, 0)), 40, 0, 1678)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (642, 38, CAST(263 AS Decimal(10, 0)), 40, 0, 1679)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (643, 17, CAST(39 AS Decimal(10, 0)), 15, 0, 1680)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (643, 34, CAST(14 AS Decimal(10, 0)), 10, 0, 1681)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (643, 41, CAST(9 AS Decimal(10, 0)), 14, 0, 1682)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (644, 30, CAST(25 AS Decimal(10, 0)), 15, 0.05, 1683)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (645, 59, CAST(55 AS Decimal(10, 0)), 40, 0.05, 1684)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (646, 8, CAST(40 AS Decimal(10, 0)), 30, 0, 1685)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (646, 24, CAST(4 AS Decimal(10, 0)), 10, 0, 1686)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (646, 29, CAST(123 AS Decimal(10, 0)), 24, 0, 1687)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (646, 30, CAST(25 AS Decimal(10, 0)), 35, 0, 1688)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (646, 36, CAST(19 AS Decimal(10, 0)), 20, 0, 1689)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (647, 13, CAST(6 AS Decimal(10, 0)), 28, 0.05, 1690)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (647, 69, CAST(36 AS Decimal(10, 0)), 50, 0.05, 1691)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (647, 75, CAST(7 AS Decimal(10, 0)), 120, 0.05, 1692)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (648, 24, CAST(4 AS Decimal(10, 0)), 110, 0, 1693)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (648, 39, CAST(18 AS Decimal(10, 0)), 45, 0, 1694)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (648, 40, CAST(18 AS Decimal(10, 0)), 91, 0, 1695)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (648, 60, CAST(34 AS Decimal(10, 0)), 100, 0, 1696)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (649, 45, CAST(9 AS Decimal(10, 0)), 15, 0, 1697)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (649, 56, CAST(38 AS Decimal(10, 0)), 16, 0, 1698)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (650, 29, CAST(123 AS Decimal(10, 0)), 80, 0, 1699)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (650, 30, CAST(25 AS Decimal(10, 0)), 36, 0, 1700)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (651, 13, CAST(6 AS Decimal(10, 0)), 5, 0, 1701)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (652, 39, CAST(18 AS Decimal(10, 0)), 8, 0.15, 1702)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (653, 70, CAST(15 AS Decimal(10, 0)), 3, 0.25, 1703)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (654, 41, CAST(9 AS Decimal(10, 0)), 30, 0, 1704)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (654, 71, CAST(21 AS Decimal(10, 0)), 30, 0, 1705)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (655, 55, CAST(24 AS Decimal(10, 0)), 30, 0.15, 1706)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (655, 62, CAST(49 AS Decimal(10, 0)), 6, 0.15, 1707)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (656, 13, CAST(6 AS Decimal(10, 0)), 40, 0, 1708)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (656, 65, CAST(21 AS Decimal(10, 0)), 21, 0, 1709)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (656, 68, CAST(12 AS Decimal(10, 0)), 20, 0, 1710)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (657, 58, CAST(13 AS Decimal(10, 0)), 15, 0, 1711)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (657, 62, CAST(49 AS Decimal(10, 0)), 35, 0, 1712)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (658, 1, CAST(18 AS Decimal(10, 0)), 20, 0.05, 1713)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (659, 61, CAST(28 AS Decimal(10, 0)), 15, 0, 1714)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (660, 75, CAST(7 AS Decimal(10, 0)), 14, 0, 1715)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (661, 7, CAST(30 AS Decimal(10, 0)), 20, 0.05, 1716)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (661, 52, CAST(7 AS Decimal(10, 0)), 14, 0.05, 1717)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (662, 7, CAST(30 AS Decimal(10, 0)), 12, 0, 1718)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (662, 16, CAST(17 AS Decimal(10, 0)), 15, 0, 1719)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (662, 41, CAST(9 AS Decimal(10, 0)), 5, 0, 1720)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (663, 19, CAST(9 AS Decimal(10, 0)), 12, 0, 1721)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (663, 49, CAST(20 AS Decimal(10, 0)), 10, 0, 1722)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (663, 61, CAST(28 AS Decimal(10, 0)), 5, 0, 1723)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (664, 1, CAST(18 AS Decimal(10, 0)), 10, 0, 1724)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (664, 17, CAST(39 AS Decimal(10, 0)), 12, 0, 1725)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (664, 67, CAST(14 AS Decimal(10, 0)), 15, 0, 1726)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (665, 11, CAST(21 AS Decimal(10, 0)), 40, 0.25, 1727)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (665, 29, CAST(123 AS Decimal(10, 0)), 60, 0.25, 1728)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (666, 4, CAST(22 AS Decimal(10, 0)), 30, 0.25, 1729)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (666, 33, CAST(2 AS Decimal(10, 0)), 40, 0.25, 1730)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (666, 58, CAST(13 AS Decimal(10, 0)), 15, 0, 1731)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (667, 71, CAST(21 AS Decimal(10, 0)), 25, 0, 1732)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (668, 17, CAST(39 AS Decimal(10, 0)), 10, 0, 1733)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (668, 33, CAST(2 AS Decimal(10, 0)), 30, 0, 1734)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (668, 54, CAST(7 AS Decimal(10, 0)), 10, 0, 1735)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (669, 16, CAST(17 AS Decimal(10, 0)), 6, 0, 1736)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (669, 32, CAST(32 AS Decimal(10, 0)), 6, 0, 1737)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (669, 57, CAST(19 AS Decimal(10, 0)), 20, 0, 1738)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (670, 30, CAST(25 AS Decimal(10, 0)), 1, 0, 1739)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (670, 60, CAST(34 AS Decimal(10, 0)), 10, 0, 1740)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (671, 1, CAST(18 AS Decimal(10, 0)), 60, 0.25, 1741)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (671, 60, CAST(34 AS Decimal(10, 0)), 25, 0.25, 1742)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (672, 16, CAST(17 AS Decimal(10, 0)), 24, 0, 1743)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (672, 25, CAST(14 AS Decimal(10, 0)), 24, 0, 1744)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (672, 40, CAST(18 AS Decimal(10, 0)), 20, 0, 1745)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (673, 50, CAST(16 AS Decimal(10, 0)), 24, 0, 1746)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (674, 35, CAST(18 AS Decimal(10, 0)), 10, 0, 1747)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (674, 63, CAST(43 AS Decimal(10, 0)), 40, 0, 1748)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (675, 17, CAST(39 AS Decimal(10, 0)), 15, 0, 1749)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (675, 24, CAST(4 AS Decimal(10, 0)), 35, 0, 1750)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (676, 42, CAST(14 AS Decimal(10, 0)), 10, 0.2, 1751)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (676, 43, CAST(46 AS Decimal(10, 0)), 10, 0.2, 1752)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (676, 67, CAST(14 AS Decimal(10, 0)), 24, 0.2, 1753)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (677, 10, CAST(31 AS Decimal(10, 0)), 20, 0.1, 1754)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (677, 28, CAST(45 AS Decimal(10, 0)), 30, 0.1, 1755)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (677, 75, CAST(7 AS Decimal(10, 0)), 6, 0, 1756)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (678, 36, CAST(19 AS Decimal(10, 0)), 25, 0.15, 1757)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (678, 52, CAST(7 AS Decimal(10, 0)), 12, 0.15, 1758)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (679, 11, CAST(21 AS Decimal(10, 0)), 2, 0, 1759)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (679, 13, CAST(6 AS Decimal(10, 0)), 10, 0, 1760)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (679, 19, CAST(9 AS Decimal(10, 0)), 7, 0, 1761)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (679, 72, CAST(34 AS Decimal(10, 0)), 10, 0, 1762)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (680, 20, CAST(81 AS Decimal(10, 0)), 5, 0, 1763)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (680, 52, CAST(7 AS Decimal(10, 0)), 5, 0, 1764)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (680, 76, CAST(18 AS Decimal(10, 0)), 20, 0, 1765)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (681, 47, CAST(9 AS Decimal(10, 0)), 5, 0, 1766)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (681, 76, CAST(18 AS Decimal(10, 0)), 5, 0, 1767)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (682, 21, CAST(10 AS Decimal(10, 0)), 60, 0, 1768)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (682, 75, CAST(7 AS Decimal(10, 0)), 49, 0, 1769)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (682, 77, CAST(13 AS Decimal(10, 0)), 15, 0, 1770)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (683, 21, CAST(10 AS Decimal(10, 0)), 36, 0, 1771)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (683, 27, CAST(43 AS Decimal(10, 0)), 25, 0, 1772)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (683, 55, CAST(24 AS Decimal(10, 0)), 25, 0.2, 1773)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (683, 58, CAST(13 AS Decimal(10, 0)), 30, 0.2, 1774)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (684, 13, CAST(6 AS Decimal(10, 0)), 42, 0.15, 1775)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (684, 57, CAST(19 AS Decimal(10, 0)), 30, 0, 1776)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (685, 16, CAST(17 AS Decimal(10, 0)), 30, 0.1, 1777)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (685, 62, CAST(49 AS Decimal(10, 0)), 14, 0.1, 1778)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (685, 72, CAST(34 AS Decimal(10, 0)), 16, 0, 1779)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (685, 75, CAST(7 AS Decimal(10, 0)), 20, 0.1, 1780)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (686, 53, CAST(32 AS Decimal(10, 0)), 2, 0, 1781)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (686, 61, CAST(28 AS Decimal(10, 0)), 30, 0, 1782)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (687, 6, CAST(25 AS Decimal(10, 0)), 20, 0, 1783)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (688, 1, CAST(18 AS Decimal(10, 0)), 21, 0, 1784)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (688, 18, CAST(62 AS Decimal(10, 0)), 4, 0.25, 1785)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (688, 23, CAST(9 AS Decimal(10, 0)), 8, 0.25, 1786)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (689, 36, CAST(19 AS Decimal(10, 0)), 30, 0.2, 1787)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (690, 28, CAST(45 AS Decimal(10, 0)), 8, 0, 1788)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (690, 34, CAST(14 AS Decimal(10, 0)), 20, 0, 1789)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (691, 13, CAST(6 AS Decimal(10, 0)), 20, 0.25, 1790)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (691, 43, CAST(46 AS Decimal(10, 0)), 24, 0.25, 1791)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (691, 60, CAST(34 AS Decimal(10, 0)), 49, 0.25, 1792)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (691, 71, CAST(21 AS Decimal(10, 0)), 35, 0.25, 1793)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (692, 2, CAST(19 AS Decimal(10, 0)), 10, 0.15, 1794)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (692, 67, CAST(14 AS Decimal(10, 0)), 40, 0.15, 1795)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (693, 7, CAST(30 AS Decimal(10, 0)), 8, 0, 1796)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (693, 13, CAST(6 AS Decimal(10, 0)), 20, 0, 1797)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (694, 31, CAST(12 AS Decimal(10, 0)), 44, 0.25, 1798)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (694, 62, CAST(49 AS Decimal(10, 0)), 30, 0.25, 1799)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (694, 68, CAST(12 AS Decimal(10, 0)), 80, 0.25, 1800)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (694, 72, CAST(34 AS Decimal(10, 0)), 50, 0, 1801)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (695, 49, CAST(20 AS Decimal(10, 0)), 28, 0, 1802)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (696, 13, CAST(6 AS Decimal(10, 0)), 15, 0, 1803)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (696, 22, CAST(21 AS Decimal(10, 0)), 21, 0, 1804)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (696, 46, CAST(12 AS Decimal(10, 0)), 15, 0, 1805)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (697, 11, CAST(21 AS Decimal(10, 0)), 5, 0.25, 1806)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (697, 44, CAST(19 AS Decimal(10, 0)), 18, 0.25, 1807)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (697, 56, CAST(38 AS Decimal(10, 0)), 18, 0, 1808)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (698, 13, CAST(6 AS Decimal(10, 0)), 20, 0, 1809)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (698, 31, CAST(12 AS Decimal(10, 0)), 10, 0, 1810)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (699, 10, CAST(31 AS Decimal(10, 0)), 25, 0, 1811)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (699, 24, CAST(4 AS Decimal(10, 0)), 25, 0, 1812)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (699, 77, CAST(13 AS Decimal(10, 0)), 40, 0, 1813)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (700, 59, CAST(55 AS Decimal(10, 0)), 4, 0, 1814)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (701, 50, CAST(16 AS Decimal(10, 0)), 9, 0, 1815)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (701, 51, CAST(53 AS Decimal(10, 0)), 40, 0, 1816)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (701, 55, CAST(24 AS Decimal(10, 0)), 4, 0, 1817)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (702, 6, CAST(25 AS Decimal(10, 0)), 12, 0, 1818)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (702, 10, CAST(31 AS Decimal(10, 0)), 30, 0, 1819)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (702, 17, CAST(39 AS Decimal(10, 0)), 6, 0, 1820)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (702, 62, CAST(49 AS Decimal(10, 0)), 60, 0, 1821)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (703, 4, CAST(22 AS Decimal(10, 0)), 5, 0, 1822)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (704, 33, CAST(2 AS Decimal(10, 0)), 15, 0.05, 1823)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (704, 41, CAST(9 AS Decimal(10, 0)), 6, 0.05, 1824)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (704, 75, CAST(7 AS Decimal(10, 0)), 50, 0.05, 1825)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (705, 6, CAST(25 AS Decimal(10, 0)), 16, 0.05, 1826)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (705, 28, CAST(45 AS Decimal(10, 0)), 2, 0, 1827)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (706, 20, CAST(81 AS Decimal(10, 0)), 50, 0.05, 1828)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (706, 31, CAST(12 AS Decimal(10, 0)), 50, 0.05, 1829)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (707, 16, CAST(17 AS Decimal(10, 0)), 28, 0.15, 1830)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (707, 31, CAST(12 AS Decimal(10, 0)), 25, 0.15, 1831)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (707, 45, CAST(9 AS Decimal(10, 0)), 30, 0, 1832)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (707, 60, CAST(34 AS Decimal(10, 0)), 24, 0.15, 1833)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (708, 75, CAST(7 AS Decimal(10, 0)), 12, 0.2, 1834)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (709, 21, CAST(10 AS Decimal(10, 0)), 12, 0, 1835)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (709, 47, CAST(9 AS Decimal(10, 0)), 14, 0, 1836)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (709, 51, CAST(53 AS Decimal(10, 0)), 8, 0, 1837)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (710, 30, CAST(25 AS Decimal(10, 0)), 30, 0, 1838)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (710, 35, CAST(18 AS Decimal(10, 0)), 40, 0, 1839)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (710, 64, CAST(33 AS Decimal(10, 0)), 8, 0, 1840)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (711, 5, CAST(21 AS Decimal(10, 0)), 20, 0, 1841)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (711, 7, CAST(30 AS Decimal(10, 0)), 6, 0, 1842)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (711, 72, CAST(34 AS Decimal(10, 0)), 5, 0, 1843)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (712, 75, CAST(7 AS Decimal(10, 0)), 20, 0.15, 1844)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (713, 24, CAST(4 AS Decimal(10, 0)), 10, 0.25, 1845)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (713, 41, CAST(9 AS Decimal(10, 0)), 24, 0, 1846)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (714, 52, CAST(7 AS Decimal(10, 0)), 6, 0.05, 1847)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (714, 76, CAST(18 AS Decimal(10, 0)), 60, 0, 1848)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (715, 7, CAST(30 AS Decimal(10, 0)), 45, 0, 1849)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (715, 13, CAST(6 AS Decimal(10, 0)), 77, 0, 1850)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (715, 53, CAST(32 AS Decimal(10, 0)), 20, 0, 1851)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (715, 69, CAST(36 AS Decimal(10, 0)), 9, 0, 1852)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (715, 76, CAST(18 AS Decimal(10, 0)), 44, 0, 1853)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (716, 60, CAST(34 AS Decimal(10, 0)), 2, 0.15, 1854)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (717, 18, CAST(62 AS Decimal(10, 0)), 6, 0, 1855)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (717, 38, CAST(263 AS Decimal(10, 0)), 5, 0, 1856)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (717, 69, CAST(36 AS Decimal(10, 0)), 10, 0, 1857)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (718, 51, CAST(53 AS Decimal(10, 0)), 16, 0, 1858)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (719, 37, CAST(26 AS Decimal(10, 0)), 8, 0, 1859)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (719, 56, CAST(38 AS Decimal(10, 0)), 12, 0.15, 1860)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (719, 62, CAST(49 AS Decimal(10, 0)), 12, 0.15, 1861)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (720, 19, CAST(9 AS Decimal(10, 0)), 12, 0, 1862)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (720, 49, CAST(20 AS Decimal(10, 0)), 40, 0, 1863)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (721, 12, CAST(38 AS Decimal(10, 0)), 30, 0, 1864)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (721, 24, CAST(4 AS Decimal(10, 0)), 30, 0, 1865)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (721, 64, CAST(33 AS Decimal(10, 0)), 4, 0, 1866)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (722, 46, CAST(12 AS Decimal(10, 0)), 9, 0, 1867)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (723, 52, CAST(7 AS Decimal(10, 0)), 40, 0.2, 1868)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (724, 29, CAST(123 AS Decimal(10, 0)), 14, 0, 1869)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (725, 17, CAST(39 AS Decimal(10, 0)), 6, 0, 1870)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (725, 33, CAST(2 AS Decimal(10, 0)), 7, 0, 1871)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (726, 26, CAST(31 AS Decimal(10, 0)), 5, 0, 1872)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (726, 41, CAST(9 AS Decimal(10, 0)), 6, 0, 1873)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (726, 75, CAST(7 AS Decimal(10, 0)), 10, 0, 1874)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (727, 63, CAST(43 AS Decimal(10, 0)), 10, 0, 1875)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (728, 8, CAST(40 AS Decimal(10, 0)), 16, 0, 1876)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (728, 75, CAST(7 AS Decimal(10, 0)), 10, 0, 1877)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (729, 28, CAST(45 AS Decimal(10, 0)), 20, 0, 1878)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (730, 39, CAST(18 AS Decimal(10, 0)), 30, 0, 1879)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (730, 47, CAST(9 AS Decimal(10, 0)), 30, 0, 1880)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (730, 51, CAST(53 AS Decimal(10, 0)), 10, 0, 1881)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (730, 63, CAST(43 AS Decimal(10, 0)), 20, 0, 1882)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (731, 8, CAST(40 AS Decimal(10, 0)), 20, 0.15, 1883)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (731, 21, CAST(10 AS Decimal(10, 0)), 40, 0.15, 1884)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (731, 40, CAST(18 AS Decimal(10, 0)), 10, 0, 1885)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (731, 44, CAST(19 AS Decimal(10, 0)), 6, 0.15, 1886)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (732, 7, CAST(30 AS Decimal(10, 0)), 18, 0, 1887)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (732, 12, CAST(38 AS Decimal(10, 0)), 20, 0, 1888)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (732, 24, CAST(4 AS Decimal(10, 0)), 80, 0, 1889)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (732, 27, CAST(43 AS Decimal(10, 0)), 30, 0, 1890)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (732, 31, CAST(12 AS Decimal(10, 0)), 24, 0, 1891)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (732, 63, CAST(43 AS Decimal(10, 0)), 35, 0, 1892)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (733, 75, CAST(7 AS Decimal(10, 0)), 40, 0.2, 1893)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (734, 38, CAST(263 AS Decimal(10, 0)), 60, 0, 1894)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (735, 7, CAST(30 AS Decimal(10, 0)), 20, 0, 1895)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (735, 43, CAST(46 AS Decimal(10, 0)), 9, 0, 1896)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (736, 13, CAST(6 AS Decimal(10, 0)), 84, 0.15, 1897)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (736, 57, CAST(19 AS Decimal(10, 0)), 15, 0, 1898)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (737, 16, CAST(17 AS Decimal(10, 0)), 55, 0, 1899)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (737, 24, CAST(4 AS Decimal(10, 0)), 20, 0, 1900)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (737, 36, CAST(19 AS Decimal(10, 0)), 40, 0, 1901)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (738, 16, CAST(17 AS Decimal(10, 0)), 36, 0.1, 1902)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (738, 18, CAST(62 AS Decimal(10, 0)), 8, 0.1, 1903)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (738, 32, CAST(32 AS Decimal(10, 0)), 35, 0.1, 1904)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (739, 11, CAST(21 AS Decimal(10, 0)), 30, 0, 1905)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (739, 20, CAST(81 AS Decimal(10, 0)), 15, 0, 1906)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (739, 76, CAST(18 AS Decimal(10, 0)), 10, 0, 1907)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (739, 77, CAST(13 AS Decimal(10, 0)), 15, 0, 1908)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (740, 7, CAST(30 AS Decimal(10, 0)), 60, 0, 1909)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (740, 43, CAST(46 AS Decimal(10, 0)), 6, 0, 1910)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (740, 72, CAST(34 AS Decimal(10, 0)), 20, 0, 1911)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (741, 7, CAST(30 AS Decimal(10, 0)), 60, 0, 1912)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (741, 62, CAST(49 AS Decimal(10, 0)), 40, 0.1, 1913)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (742, 6, CAST(25 AS Decimal(10, 0)), 40, 0, 1914)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (742, 11, CAST(21 AS Decimal(10, 0)), 15, 0, 1915)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (742, 41, CAST(9 AS Decimal(10, 0)), 4, 0, 1916)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (743, 21, CAST(10 AS Decimal(10, 0)), 65, 0, 1917)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (743, 34, CAST(14 AS Decimal(10, 0)), 60, 0.15, 1918)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (743, 55, CAST(24 AS Decimal(10, 0)), 65, 0.15, 1919)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (743, 61, CAST(28 AS Decimal(10, 0)), 66, 0.15, 1920)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (744, 2, CAST(19 AS Decimal(10, 0)), 50, 0.2, 1921)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (744, 70, CAST(15 AS Decimal(10, 0)), 20, 0.2, 1922)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (744, 76, CAST(18 AS Decimal(10, 0)), 90, 0.2, 1923)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (745, 72, CAST(34 AS Decimal(10, 0)), 2, 0, 1924)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (746, 29, CAST(123 AS Decimal(10, 0)), 50, 0.25, 1925)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (746, 41, CAST(9 AS Decimal(10, 0)), 35, 0.25, 1926)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (747, 59, CAST(55 AS Decimal(10, 0)), 18, 0.05, 1927)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (748, 51, CAST(53 AS Decimal(10, 0)), 20, 0, 1928)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (748, 60, CAST(34 AS Decimal(10, 0)), 4, 0, 1929)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (749, 42, CAST(14 AS Decimal(10, 0)), 40, 0, 1930)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (750, 32, CAST(32 AS Decimal(10, 0)), 50, 0, 1931)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (750, 46, CAST(12 AS Decimal(10, 0)), 20, 0.25, 1932)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (750, 52, CAST(7 AS Decimal(10, 0)), 20, 0.25, 1933)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (751, 24, CAST(4 AS Decimal(10, 0)), 12, 0, 1934)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (751, 61, CAST(28 AS Decimal(10, 0)), 7, 0, 1935)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (751, 74, CAST(10 AS Decimal(10, 0)), 20, 0, 1936)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (751, 75, CAST(7 AS Decimal(10, 0)), 30, 0, 1937)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (752, 41, CAST(9 AS Decimal(10, 0)), 20, 0.05, 1938)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (752, 51, CAST(53 AS Decimal(10, 0)), 15, 0.05, 1939)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (752, 77, CAST(13 AS Decimal(10, 0)), 21, 0.05, 1940)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (753, 4, CAST(22 AS Decimal(10, 0)), 25, 0.25, 1941)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (753, 24, CAST(4 AS Decimal(10, 0)), 30, 0.25, 1942)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (753, 77, CAST(13 AS Decimal(10, 0)), 30, 0, 1943)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (754, 7, CAST(30 AS Decimal(10, 0)), 60, 0, 1944)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (754, 22, CAST(21 AS Decimal(10, 0)), 25, 0, 1945)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (754, 46, CAST(12 AS Decimal(10, 0)), 25, 0, 1946)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (754, 55, CAST(24 AS Decimal(10, 0)), 6, 0, 1947)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (755, 13, CAST(6 AS Decimal(10, 0)), 56, 0, 1948)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (755, 35, CAST(18 AS Decimal(10, 0)), 15, 0.15, 1949)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (755, 42, CAST(14 AS Decimal(10, 0)), 24, 0.15, 1950)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (755, 55, CAST(24 AS Decimal(10, 0)), 40, 0, 1951)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (756, 1, CAST(18 AS Decimal(10, 0)), 4, 0, 1952)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (756, 40, CAST(18 AS Decimal(10, 0)), 10, 0, 1953)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (756, 52, CAST(7 AS Decimal(10, 0)), 10, 0, 1954)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (757, 26, CAST(31 AS Decimal(10, 0)), 6, 0, 1955)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (757, 76, CAST(18 AS Decimal(10, 0)), 6, 0, 1956)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (758, 1, CAST(18 AS Decimal(10, 0)), 2, 0, 1957)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (758, 59, CAST(55 AS Decimal(10, 0)), 10, 0, 1958)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (759, 1, CAST(18 AS Decimal(10, 0)), 8, 0, 1959)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (759, 29, CAST(123 AS Decimal(10, 0)), 2, 0.25, 1960)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (760, 8, CAST(40 AS Decimal(10, 0)), 30, 0, 1961)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (760, 29, CAST(123 AS Decimal(10, 0)), 10, 0, 1962)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (760, 42, CAST(14 AS Decimal(10, 0)), 14, 0, 1963)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (761, 28, CAST(45 AS Decimal(10, 0)), 70, 0.05, 1964)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (761, 34, CAST(14 AS Decimal(10, 0)), 90, 0.05, 1965)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (761, 71, CAST(21 AS Decimal(10, 0)), 21, 0, 1966)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (762, 24, CAST(4 AS Decimal(10, 0)), 12, 0, 1967)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (762, 36, CAST(19 AS Decimal(10, 0)), 18, 0.25, 1968)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (762, 60, CAST(34 AS Decimal(10, 0)), 9, 0, 1969)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (763, 7, CAST(30 AS Decimal(10, 0)), 20, 0, 1970)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (763, 24, CAST(4 AS Decimal(10, 0)), 10, 0, 1971)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (764, 58, CAST(13 AS Decimal(10, 0)), 40, 0.05, 1972)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (764, 71, CAST(21 AS Decimal(10, 0)), 20, 0, 1973)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (765, 19, CAST(9 AS Decimal(10, 0)), 50, 0.05, 1974)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (765, 60, CAST(34 AS Decimal(10, 0)), 36, 0.05, 1975)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (765, 71, CAST(21 AS Decimal(10, 0)), 60, 0.05, 1976)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (766, 23, CAST(9 AS Decimal(10, 0)), 10, 0, 1977)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (766, 42, CAST(14 AS Decimal(10, 0)), 4, 0, 1978)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (766, 45, CAST(9 AS Decimal(10, 0)), 20, 0, 1979)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (766, 68, CAST(12 AS Decimal(10, 0)), 2, 0, 1980)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (767, 41, CAST(9 AS Decimal(10, 0)), 28, 0.1, 1981)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (768, 30, CAST(25 AS Decimal(10, 0)), 15, 0, 1982)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (768, 77, CAST(13 AS Decimal(10, 0)), 18, 0, 1983)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (769, 31, CAST(12 AS Decimal(10, 0)), 15, 0, 1984)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (769, 36, CAST(19 AS Decimal(10, 0)), 16, 0, 1985)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (770, 3, CAST(10 AS Decimal(10, 0)), 25, 0, 1986)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (770, 59, CAST(55 AS Decimal(10, 0)), 110, 0, 1987)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (770, 70, CAST(15 AS Decimal(10, 0)), 30, 0, 1988)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (771, 12, CAST(38 AS Decimal(10, 0)), 20, 0, 1989)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (771, 18, CAST(62 AS Decimal(10, 0)), 10, 0, 1990)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (771, 56, CAST(38 AS Decimal(10, 0)), 5, 0, 1991)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (772, 46, CAST(12 AS Decimal(10, 0)), 3, 0, 1992)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (772, 49, CAST(20 AS Decimal(10, 0)), 2, 0, 1993)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (773, 10, CAST(31 AS Decimal(10, 0)), 24, 0.15, 1994)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (774, 2, CAST(19 AS Decimal(10, 0)), 11, 0.25, 1995)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (774, 20, CAST(81 AS Decimal(10, 0)), 15, 0, 1996)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (774, 26, CAST(31 AS Decimal(10, 0)), 63, 0, 1997)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (774, 51, CAST(53 AS Decimal(10, 0)), 44, 0.25, 1998)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (774, 72, CAST(34 AS Decimal(10, 0)), 35, 0, 1999)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (775, 19, CAST(9 AS Decimal(10, 0)), 35, 0, 2000)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (775, 69, CAST(36 AS Decimal(10, 0)), 30, 0, 2001)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (776, 7, CAST(30 AS Decimal(10, 0)), 4, 0, 2002)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (776, 43, CAST(46 AS Decimal(10, 0)), 30, 0, 2003)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (777, 26, CAST(31 AS Decimal(10, 0)), 12, 0, 2004)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (777, 33, CAST(2 AS Decimal(10, 0)), 30, 0, 2005)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (777, 65, CAST(21 AS Decimal(10, 0)), 21, 0, 2006)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (777, 71, CAST(21 AS Decimal(10, 0)), 50, 0, 2007)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (778, 1, CAST(18 AS Decimal(10, 0)), 10, 0.1, 2008)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (778, 13, CAST(6 AS Decimal(10, 0)), 20, 0.1, 2009)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (779, 18, CAST(62 AS Decimal(10, 0)), 8, 0, 2010)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (779, 51, CAST(53 AS Decimal(10, 0)), 10, 0, 2011)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (780, 24, CAST(4 AS Decimal(10, 0)), 30, 0.25, 2012)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (780, 62, CAST(49 AS Decimal(10, 0)), 21, 0.25, 2013)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (781, 55, CAST(24 AS Decimal(10, 0)), 35, 0, 2014)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (781, 59, CAST(55 AS Decimal(10, 0)), 24, 0, 2015)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (782, 56, CAST(38 AS Decimal(10, 0)), 20, 0, 2016)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (782, 63, CAST(43 AS Decimal(10, 0)), 12, 0, 2017)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (783, 2, CAST(19 AS Decimal(10, 0)), 100, 0.25, 2018)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (783, 5, CAST(21 AS Decimal(10, 0)), 70, 0, 2019)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (783, 29, CAST(123 AS Decimal(10, 0)), 60, 0.25, 2020)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (783, 59, CAST(55 AS Decimal(10, 0)), 100, 0.25, 2021)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (784, 1, CAST(18 AS Decimal(10, 0)), 45, 0, 2022)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (784, 13, CAST(6 AS Decimal(10, 0)), 80, 0, 2023)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (784, 24, CAST(4 AS Decimal(10, 0)), 21, 0, 2024)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (784, 64, CAST(33 AS Decimal(10, 0)), 20, 0, 2025)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (784, 71, CAST(21 AS Decimal(10, 0)), 16, 0, 2026)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (785, 36, CAST(19 AS Decimal(10, 0)), 35, 0, 2027)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (785, 38, CAST(263 AS Decimal(10, 0)), 25, 0, 2028)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (785, 59, CAST(55 AS Decimal(10, 0)), 30, 0, 2029)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (786, 53, CAST(32 AS Decimal(10, 0)), 70, 0.1, 2030)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (786, 69, CAST(36 AS Decimal(10, 0)), 36, 0.1, 2031)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (787, 21, CAST(10 AS Decimal(10, 0)), 15, 0.1, 2032)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (787, 44, CAST(19 AS Decimal(10, 0)), 12, 0, 2033)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (787, 61, CAST(28 AS Decimal(10, 0)), 6, 0, 2034)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (788, 1, CAST(18 AS Decimal(10, 0)), 10, 0, 2035)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (788, 35, CAST(18 AS Decimal(10, 0)), 60, 0, 2036)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (788, 42, CAST(14 AS Decimal(10, 0)), 30, 0, 2037)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (788, 54, CAST(7 AS Decimal(10, 0)), 10, 0, 2038)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (789, 13, CAST(6 AS Decimal(10, 0)), 7, 0, 2039)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (789, 59, CAST(55 AS Decimal(10, 0)), 30, 0, 2040)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (790, 70, CAST(15 AS Decimal(10, 0)), 4, 0, 2041)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (791, 40, CAST(18 AS Decimal(10, 0)), 5, 0.2, 2042)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (791, 52, CAST(7 AS Decimal(10, 0)), 2, 0, 2043)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (791, 71, CAST(21 AS Decimal(10, 0)), 30, 0, 2044)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (792, 28, CAST(45 AS Decimal(10, 0)), 20, 0, 2045)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (792, 35, CAST(18 AS Decimal(10, 0)), 24, 0, 2046)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (792, 49, CAST(20 AS Decimal(10, 0)), 60, 0, 2047)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (792, 57, CAST(19 AS Decimal(10, 0)), 28, 0, 2048)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (793, 21, CAST(10 AS Decimal(10, 0)), 20, 0, 2049)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (794, 2, CAST(19 AS Decimal(10, 0)), 30, 0.2, 2050)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (794, 63, CAST(43 AS Decimal(10, 0)), 30, 0, 2051)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (795, 44, CAST(19 AS Decimal(10, 0)), 15, 0, 2052)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (795, 61, CAST(28 AS Decimal(10, 0)), 4, 0, 2053)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (796, 11, CAST(21 AS Decimal(10, 0)), 10, 0, 2054)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (797, 62, CAST(49 AS Decimal(10, 0)), 12, 0, 2055)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (798, 33, CAST(2 AS Decimal(10, 0)), 15, 0, 2056)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (798, 51, CAST(53 AS Decimal(10, 0)), 24, 0, 2057)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (799, 12, CAST(38 AS Decimal(10, 0)), 20, 0.05, 2058)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (799, 32, CAST(32 AS Decimal(10, 0)), 15, 0.05, 2059)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (799, 35, CAST(18 AS Decimal(10, 0)), 18, 0.05, 2060)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (800, 1, CAST(18 AS Decimal(10, 0)), 25, 0.25, 2061)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (800, 5, CAST(21 AS Decimal(10, 0)), 30, 0.25, 2062)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (801, 68, CAST(12 AS Decimal(10, 0)), 42, 0, 2063)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (802, 2, CAST(19 AS Decimal(10, 0)), 10, 0.2, 2064)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (802, 12, CAST(38 AS Decimal(10, 0)), 4, 0.2, 2065)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (803, 76, CAST(18 AS Decimal(10, 0)), 50, 0.1, 2066)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (804, 24, CAST(4 AS Decimal(10, 0)), 10, 0.2, 2067)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (805, 43, CAST(46 AS Decimal(10, 0)), 30, 0.2, 2068)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (805, 61, CAST(28 AS Decimal(10, 0)), 10, 0.2, 2069)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (806, 18, CAST(62 AS Decimal(10, 0)), 35, 0.2, 2070)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (806, 32, CAST(32 AS Decimal(10, 0)), 20, 0, 2071)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (806, 64, CAST(33 AS Decimal(10, 0)), 25, 0.2, 2072)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (807, 33, CAST(2 AS Decimal(10, 0)), 10, 0, 2073)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (807, 67, CAST(14 AS Decimal(10, 0)), 20, 0, 2074)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (808, 24, CAST(4 AS Decimal(10, 0)), 15, 0, 2075)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (808, 25, CAST(14 AS Decimal(10, 0)), 15, 0, 2076)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (808, 51, CAST(53 AS Decimal(10, 0)), 20, 0, 2077)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (808, 57, CAST(19 AS Decimal(10, 0)), 20, 0, 2078)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (809, 7, CAST(30 AS Decimal(10, 0)), 40, 0, 2079)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (809, 55, CAST(24 AS Decimal(10, 0)), 35, 0, 2080)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (809, 60, CAST(34 AS Decimal(10, 0)), 50, 0, 2081)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (810, 70, CAST(15 AS Decimal(10, 0)), 3, 0, 2082)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (811, 21, CAST(10 AS Decimal(10, 0)), 3, 0, 2083)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (811, 60, CAST(34 AS Decimal(10, 0)), 21, 0, 2084)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (811, 61, CAST(28 AS Decimal(10, 0)), 4, 0, 2085)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (812, 13, CAST(6 AS Decimal(10, 0)), 30, 0, 2086)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (812, 17, CAST(39 AS Decimal(10, 0)), 12, 0, 2087)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (812, 60, CAST(34 AS Decimal(10, 0)), 35, 0, 2088)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (813, 60, CAST(34 AS Decimal(10, 0)), 4, 0, 2089)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (813, 77, CAST(13 AS Decimal(10, 0)), 10, 0, 2090)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (814, 60, CAST(34 AS Decimal(10, 0)), 15, 0, 2091)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (815, 53, CAST(32 AS Decimal(10, 0)), 10, 0.2, 2092)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (815, 70, CAST(15 AS Decimal(10, 0)), 12, 0.2, 2093)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (816, 34, CAST(14 AS Decimal(10, 0)), 30, 0, 2094)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (816, 40, CAST(18 AS Decimal(10, 0)), 40, 0.1, 2095)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (816, 41, CAST(9 AS Decimal(10, 0)), 30, 0.1, 2096)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (817, 17, CAST(39 AS Decimal(10, 0)), 77, 0.1, 2097)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (817, 41, CAST(9 AS Decimal(10, 0)), 12, 0, 2098)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (817, 53, CAST(32 AS Decimal(10, 0)), 25, 0.1, 2099)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (817, 55, CAST(24 AS Decimal(10, 0)), 4, 0.1, 2100)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (817, 68, CAST(12 AS Decimal(10, 0)), 55, 0, 2101)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (818, 30, CAST(25 AS Decimal(10, 0)), 4, 0.25, 2102)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (818, 54, CAST(7 AS Decimal(10, 0)), 20, 0.25, 2103)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (819, 16, CAST(17 AS Decimal(10, 0)), 3, 0, 2104)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (819, 19, CAST(9 AS Decimal(10, 0)), 42, 0, 2105)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (819, 34, CAST(14 AS Decimal(10, 0)), 35, 0, 2106)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (820, 41, CAST(9 AS Decimal(10, 0)), 9, 0, 2107)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (821, 28, CAST(45 AS Decimal(10, 0)), 8, 0.15, 2108)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (821, 43, CAST(46 AS Decimal(10, 0)), 36, 0.15, 2109)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (821, 77, CAST(13 AS Decimal(10, 0)), 28, 0.15, 2110)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (822, 39, CAST(18 AS Decimal(10, 0)), 20, 0, 2111)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (823, 1, CAST(18 AS Decimal(10, 0)), 40, 0.15, 2112)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (823, 2, CAST(19 AS Decimal(10, 0)), 20, 0.15, 2113)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (823, 16, CAST(17 AS Decimal(10, 0)), 30, 0.15, 2114)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (823, 31, CAST(12 AS Decimal(10, 0)), 20, 0, 2115)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (824, 7, CAST(30 AS Decimal(10, 0)), 15, 0.05, 2116)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (824, 13, CAST(6 AS Decimal(10, 0)), 10, 0.05, 2117)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (825, 2, CAST(19 AS Decimal(10, 0)), 8, 0, 2118)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (825, 41, CAST(9 AS Decimal(10, 0)), 40, 0, 2119)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (825, 50, CAST(16 AS Decimal(10, 0)), 22, 0, 2120)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (825, 64, CAST(33 AS Decimal(10, 0)), 130, 0, 2121)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (826, 11, CAST(21 AS Decimal(10, 0)), 10, 0, 2122)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (826, 24, CAST(4 AS Decimal(10, 0)), 20, 0, 2123)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (827, 16, CAST(17 AS Decimal(10, 0)), 14, 0.05, 2124)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (828, 2, CAST(19 AS Decimal(10, 0)), 10, 0.15, 2125)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (828, 46, CAST(12 AS Decimal(10, 0)), 30, 0.15, 2126)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (828, 76, CAST(18 AS Decimal(10, 0)), 2, 0.15, 2127)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (829, 6, CAST(25 AS Decimal(10, 0)), 20, 0.25, 2128)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (829, 14, CAST(23 AS Decimal(10, 0)), 20, 0.25, 2129)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (829, 19, CAST(9 AS Decimal(10, 0)), 10, 0.25, 2130)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 2, CAST(19 AS Decimal(10, 0)), 24, 0.2, 2131)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 3, CAST(10 AS Decimal(10, 0)), 4, 0, 2132)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 4, CAST(22 AS Decimal(10, 0)), 1, 0, 2133)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 6, CAST(25 AS Decimal(10, 0)), 1, 0.02, 2134)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 7, CAST(30 AS Decimal(10, 0)), 1, 0.05, 2135)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 8, CAST(40 AS Decimal(10, 0)), 2, 0.1, 2136)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 10, CAST(31 AS Decimal(10, 0)), 1, 0, 2137)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 12, CAST(38 AS Decimal(10, 0)), 2, 0.05, 2138)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 13, CAST(6 AS Decimal(10, 0)), 4, 0, 2139)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 14, CAST(23 AS Decimal(10, 0)), 1, 0.03, 2140)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 16, CAST(17 AS Decimal(10, 0)), 2, 0.03, 2141)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 20, CAST(81 AS Decimal(10, 0)), 1, 0.04, 2142)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 23, CAST(9 AS Decimal(10, 0)), 2, 0, 2143)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 32, CAST(32 AS Decimal(10, 0)), 1, 0, 2144)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 39, CAST(18 AS Decimal(10, 0)), 2, 0.05, 2145)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 41, CAST(9 AS Decimal(10, 0)), 3, 0, 2146)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 46, CAST(12 AS Decimal(10, 0)), 3, 0.02, 2147)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 52, CAST(7 AS Decimal(10, 0)), 2, 0, 2148)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 55, CAST(24 AS Decimal(10, 0)), 2, 0, 2149)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 60, CAST(34 AS Decimal(10, 0)), 2, 0.06, 2150)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 64, CAST(33 AS Decimal(10, 0)), 2, 0.03, 2151)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 66, CAST(17 AS Decimal(10, 0)), 1, 0, 2152)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 73, CAST(15 AS Decimal(10, 0)), 2, 0.01, 2153)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 75, CAST(7 AS Decimal(10, 0)), 4, 0, 2154)
GO
INSERT [Ventas].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnidad], [Cantidad], [Descuento], [IdDetalle]) VALUES (830, 77, CAST(13 AS Decimal(10, 0)), 2, 0, 2155)
GO
SET IDENTITY_INSERT [Ventas].[PedidosDetalle] OFF
GO
ALTER TABLE [Compras].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [Compras].[Categorias] ([IdCategoria])
GO
ALTER TABLE [Compras].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
ALTER TABLE [Compras].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Proveedores] FOREIGN KEY([IdProveedor])
REFERENCES [Compras].[Proveedores] ([IdProveedor])
GO
ALTER TABLE [Compras].[Productos] CHECK CONSTRAINT [FK_Productos_Proveedores]
GO
ALTER TABLE [Compras].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Paises] FOREIGN KEY([IdPais])
REFERENCES [Ventas].[Paises] ([IdPais])
GO
ALTER TABLE [Compras].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Paises]
GO
ALTER TABLE [RRHH].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Cargos] FOREIGN KEY([IdCargo])
REFERENCES [RRHH].[Cargos] ([IdCargo])
GO
ALTER TABLE [RRHH].[Empleados] CHECK CONSTRAINT [FK_Empleados_Cargos]
GO
ALTER TABLE [RRHH].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Distritos] FOREIGN KEY([IdDistrito])
REFERENCES [RRHH].[Distritos] ([IdDistrito])
GO
ALTER TABLE [RRHH].[Empleados] CHECK CONSTRAINT [FK_Empleados_Distritos]
GO
ALTER TABLE [Ventas].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Paises] FOREIGN KEY([IdPais])
REFERENCES [Ventas].[Paises] ([IdPais])
GO
ALTER TABLE [Ventas].[Clientes] CHECK CONSTRAINT [FK_Clientes_Paises]
GO
ALTER TABLE [Ventas].[PedidosCabecera]  WITH CHECK ADD  CONSTRAINT [FK_PedidosCabecera_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [Ventas].[Clientes] ([IdCliente])
GO
ALTER TABLE [Ventas].[PedidosCabecera] CHECK CONSTRAINT [FK_PedidosCabecera_Clientes]
GO
ALTER TABLE [Ventas].[PedidosCabecera]  WITH CHECK ADD  CONSTRAINT [FK_PedidosCabecera_Empleados] FOREIGN KEY([IdEmpleado])
REFERENCES [RRHH].[Empleados] ([IdEmpleado])
GO
ALTER TABLE [Ventas].[PedidosCabecera] CHECK CONSTRAINT [FK_PedidosCabecera_Empleados]
GO
ALTER TABLE [Ventas].[PedidosCabecera]  WITH CHECK ADD  CONSTRAINT [FK_PedidosCabecera_Paises] FOREIGN KEY([IdPaisDestinatario])
REFERENCES [Ventas].[Paises] ([IdPais])
GO
ALTER TABLE [Ventas].[PedidosCabecera] CHECK CONSTRAINT [FK_PedidosCabecera_Paises]
GO
ALTER TABLE [Ventas].[PedidosDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PedidosDetalle_PedidosCabecera] FOREIGN KEY([IdPedido])
REFERENCES [Ventas].[PedidosCabecera] ([IdPedido])
GO
ALTER TABLE [Ventas].[PedidosDetalle] CHECK CONSTRAINT [FK_PedidosDetalle_PedidosCabecera]
GO
ALTER TABLE [Ventas].[PedidosDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PedidosDetalle_Productos] FOREIGN KEY([IdProducto])
REFERENCES [Compras].[Productos] ([IdProducto])
GO
ALTER TABLE [Ventas].[PedidosDetalle] CHECK CONSTRAINT [FK_PedidosDetalle_Productos]
GO
