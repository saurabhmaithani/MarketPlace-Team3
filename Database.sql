USE [MarketPlace]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 10/12/2020 1:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCredential]    Script Date: 10/12/2020 1:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCredential](
	[Credential_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Type] [varchar](50) NULL,
 CONSTRAINT [PK_tblCredential] PRIMARY KEY CLUSTERED 
(
	[Credential_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblManufacturer]    Script Date: 10/12/2020 1:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblManufacturer](
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer_Name] [varchar](50) NULL,
 CONSTRAINT [PK_tblManufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 10/12/2020 1:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[CategoryID] [int] NULL,
	[Picture] [varchar](50) NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductDetail]    Script Date: 10/12/2020 1:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductDetail](
	[Product_Detail_ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelName] [varchar](50) NULL,
	[ManufacturerID] [int] NULL,
	[Fan_Speed_Min] [varchar](50) NULL,
	[Power_Min] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Height] [varchar](50) NULL,
	[Weight] [varchar](50) NULL,
	[ProductID] [int] NULL,
	[Series] [varchar](50) NULL,
	[Model_Year] [varchar](50) NULL,
	[Application] [varchar](50) NULL,
	[Airflow] [varchar](50) NULL,
	[Operating_Voltage_Min] [varchar](50) NULL,
	[Accessories] [varchar](50) NULL,
	[Fan_Sweep_Diameter] [varchar](50) NULL,
	[Sound_Max_Speed] [varchar](50) NULL,
	[Picture] [varchar](50) NULL,
	[Power_Max] [varchar](50) NULL,
	[Operating_Voltage_Max] [varchar](50) NULL,
	[Fan_Speed_Max] [varchar](50) NULL,
	[Mounting_Location] [varchar](50) NULL,
 CONSTRAINT [PK_tblProductDetail] PRIMARY KEY CLUSTERED 
(
	[Product_Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 10/12/2020 1:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[credential_ID] [int] NULL,
	[picture] [varbinary](50) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([categoryID], [CategoryName]) VALUES (1, N'Electrical')
INSERT [dbo].[tblCategory] ([categoryID], [CategoryName]) VALUES (2, N'Mechanical')
INSERT [dbo].[tblCategory] ([categoryID], [CategoryName]) VALUES (3, N'Stationary')
INSERT [dbo].[tblCategory] ([categoryID], [CategoryName]) VALUES (4, N'Furniture')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCredential] ON 

INSERT [dbo].[tblCredential] ([Credential_ID], [User_Type]) VALUES (1, N'Manager')
INSERT [dbo].[tblCredential] ([Credential_ID], [User_Type]) VALUES (2, N'Sale Rep')
INSERT [dbo].[tblCredential] ([Credential_ID], [User_Type]) VALUES (3, N'Admin')
SET IDENTITY_INSERT [dbo].[tblCredential] OFF
GO
SET IDENTITY_INSERT [dbo].[tblManufacturer] ON 

INSERT [dbo].[tblManufacturer] ([ManufacturerID], [Manufacturer_Name]) VALUES (1, N'Sony')
INSERT [dbo].[tblManufacturer] ([ManufacturerID], [Manufacturer_Name]) VALUES (2, N'Apple')
INSERT [dbo].[tblManufacturer] ([ManufacturerID], [Manufacturer_Name]) VALUES (3, N'Toshiba')
INSERT [dbo].[tblManufacturer] ([ManufacturerID], [Manufacturer_Name]) VALUES (4, N'LG')
INSERT [dbo].[tblManufacturer] ([ManufacturerID], [Manufacturer_Name]) VALUES (5, N'Bruhm')
INSERT [dbo].[tblManufacturer] ([ManufacturerID], [Manufacturer_Name]) VALUES (6, N'Hunter')
INSERT [dbo].[tblManufacturer] ([ManufacturerID], [Manufacturer_Name]) VALUES (7, N'Casablanca')
SET IDENTITY_INSERT [dbo].[tblManufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (1, N'Portable Fan', 1, N'fan.png')
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (2, N'Phone', 1, N'sample.png')
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (3, N'Bed', 4, N'sample.png')
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (4, N'Chair', 4, N'sample.png')
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (5, N'Motor Grader', 2, N'sample.png')
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (6, N'Pencil', 3, N'sample.png')
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (7, N'White Fan', 1, N'whitefan.png')
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (8, N'Black Fan', 1, N'blackfan.png')
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [CategoryID], [Picture]) VALUES (9, N'Brown Standing Fan', 1, N'brownfan.png')
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductDetail] ON 

INSERT [dbo].[tblProductDetail] ([Product_Detail_ID], [ModelName], [ManufacturerID], [Fan_Speed_Min], [Power_Min], [Color], [Height], [Weight], [ProductID], [Series], [Model_Year], [Application], [Airflow], [Operating_Voltage_Min], [Accessories], [Fan_Sweep_Diameter], [Sound_Max_Speed], [Picture], [Power_Max], [Operating_Voltage_Max], [Fan_Speed_Max], [Mounting_Location]) VALUES (1, N'WindMeter', 1, N'5467 CMF', N'20 HP', N'White', N'20 M', N'10 LB', 1, N'ASC-300', N'2020', N'Indoor', N'20', N'21', N'With Light', N'12', N'35', N'path to picture', N'5', N'200', N'400', N'Indoors')
INSERT [dbo].[tblProductDetail] ([Product_Detail_ID], [ModelName], [ManufacturerID], [Fan_Speed_Min], [Power_Min], [Color], [Height], [Weight], [ProductID], [Series], [Model_Year], [Application], [Airflow], [Operating_Voltage_Min], [Accessories], [Fan_Sweep_Diameter], [Sound_Max_Speed], [Picture], [Power_Max], [Operating_Voltage_Max], [Fan_Speed_Max], [Mounting_Location]) VALUES (2, N'MegaTone', 1, N'6377 CFM', N'40 HP', N'Black', N'30 M', N'15 LB', 7, N'DNK -700', N'2019', N'Outdoor', N'50', N'30', N'With Heater', N'10', N'5', N'path to picture', N'10', N'20', N'600', N'Outdoor/Indoor')
INSERT [dbo].[tblProductDetail] ([Product_Detail_ID], [ModelName], [ManufacturerID], [Fan_Speed_Min], [Power_Min], [Color], [Height], [Weight], [ProductID], [Series], [Model_Year], [Application], [Airflow], [Operating_Voltage_Min], [Accessories], [Fan_Sweep_Diameter], [Sound_Max_Speed], [Picture], [Power_Max], [Operating_Voltage_Max], [Fan_Speed_Max], [Mounting_Location]) VALUES (3, N'Nasco', 1, N'7000 CFM', N'70 HP', N'Brown', N'40 M', N'30 LB', 8, N'BIK-898', N'2018', N'Indoor', N'60', N'70', N'With Charger', N'20', N'98', N'path to picture', N'20', N'300', N'1200', N'Outdoor')
SET IDENTITY_INSERT [dbo].[tblProductDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([userID], [username], [firstname], [lastname], [email], [password], [credential_ID], [picture]) VALUES (1, N'sammy', N'Sam', N'Django', N'sam@gmail.com', N'sam', 1, NULL)
INSERT [dbo].[tblUser] ([userID], [username], [firstname], [lastname], [email], [password], [credential_ID], [picture]) VALUES (2, N'johny', N'John', N'Doe', N'john@yahoo.com', N'john', 2, NULL)
INSERT [dbo].[tblUser] ([userID], [username], [firstname], [lastname], [email], [password], [credential_ID], [picture]) VALUES (3, N'kobe', N'Kobe', N'Micheal', N'kobe@gmail.com', N'kobe', 3, NULL)
INSERT [dbo].[tblUser] ([userID], [username], [firstname], [lastname], [email], [password], [credential_ID], [picture]) VALUES (4, N'admin', N'Adom', N'Worlanyo', N'admin@gmail.com', N'admin', 4, NULL)
INSERT [dbo].[tblUser] ([userID], [username], [firstname], [lastname], [email], [password], [credential_ID], [picture]) VALUES (5, N'fdf', NULL, NULL, N'fdfd@jfdf.com', N'jdfd', NULL, NULL)
INSERT [dbo].[tblUser] ([userID], [username], [firstname], [lastname], [email], [password], [credential_ID], [picture]) VALUES (6, N'saint', NULL, NULL, N'saint@gmail.com', N'123456', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
