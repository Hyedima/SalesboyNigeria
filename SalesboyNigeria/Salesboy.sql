USE [master]
GO
/****** Object:  Database [codeicon_salesboy]    Script Date: 10/2/2023 10:50:32 AM ******/
CREATE DATABASE [codeicon_salesboy]
GO
USE [codeicon_salesboy]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [nvarchar](200) NOT NULL,
	[userid] [varchar](200) NULL,
	[useremail] [nvarchar](200) NULL,
	[userip] [nvarchar](200) NULL,
	[usermacaddress] [nvarchar](200) NULL,
	[productid] [varchar](200) NULL,
	[qty] [int] NULL,
	[size] [nvarchar](200) NULL,
	[discount] [decimal](18, 2) NULL,
	[insertdate] [datetime] NULL,
 CONSTRAINT [PK_dbo.cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [varchar](200) NOT NULL,
	[cat] [varchar](200) NULL,
	[name] [varchar](200) NULL,
	[description] [varchar](200) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorysub]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorysub](
	[id] [varchar](200) NOT NULL,
	[cat] [varchar](200) NULL,
	[name] [varchar](200) NULL,
	[description] [varchar](200) NULL,
 CONSTRAINT [PK_categoryMajor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LGAs]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LGAs](
	[lga_name] [varchar](100) NULL,
	[lgaid] [varchar](50) NOT NULL,
	[stateid] [varchar](50) NULL,
 CONSTRAINT [PK_LGAs] PRIMARY KEY CLUSTERED 
(
	[lgaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [varchar](200) NOT NULL,
	[firstname] [varchar](200) NULL,
	[lastname] [varchar](200) NULL,
	[address] [varchar](200) NULL,
	[batchid] [varchar](200) NULL,
	[useremail] [varchar](200) NULL,
	[paymentid] [varchar](200) NULL,
	[orderdate] [datetime] NULL,
	[shipmentdate] [datetime] NULL,
	[IsShipping] [varchar](200) NULL,
	[shipperid] [varchar](200) NULL,
	[frieght] [varchar](200) NULL,
	[insertdate] [varchar](200) NULL,
	[customerid] [varchar](200) NULL,
	[status] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
	[customeremail] [varchar](200) NULL,
	[paymentstatus] [varchar](200) NULL,
	[shipmentaddress] [varchar](200) NULL,
	[Country] [varchar](200) NULL,
	[city] [varchar](200) NULL,
	[zip] [varchar](200) NULL,
	[phone] [varchar](200) NULL,
	[landmark] [varchar](200) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[id] [varchar](200) NOT NULL,
	[name] [varchar](200) NULL,
	[trnxid] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[userid] [varchar](200) NULL,
	[phone] [varchar](200) NULL,
	[amount] [decimal](18, 2) NULL,
	[trnxdate] [datetime] NULL,
	[status] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
	[gatewayref] [varchar](200) NULL,
	[paymenttype] [varchar](200) NULL,
	[category] [varchar](200) NULL,
	[title] [varchar](200) NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [varchar](200) NOT NULL,
	[userid] [varchar](200) NULL,
	[productname] [varchar](max) NULL,
	[producttype] [varchar](200) NULL,
	[description] [varchar](max) NULL,
	[bgphoto] [varchar](max) NULL,
	[photo1] [varchar](max) NULL,
	[photo2] [varchar](max) NULL,
	[photo3] [varchar](max) NULL,
	[photo4] [varchar](max) NULL,
	[photo5] [varchar](max) NULL,
	[photo6] [varchar](max) NULL,
	[category] [varchar](max) NULL,
	[tags] [varchar](max) NULL,
	[size1] [varchar](max) NULL,
	[size2] [varchar](max) NULL,
	[size3] [varchar](max) NULL,
	[size4] [varchar](max) NULL,
	[color1] [varchar](max) NULL,
	[color2] [varchar](max) NULL,
	[color3] [varchar](max) NULL,
	[color4] [varchar](max) NULL,
	[price] [decimal](18, 2) NULL,
	[discount] [int] NULL,
	[status] [varchar](max) NULL,
	[qty] [int] NOT NULL,
	[inserdate] [datetime2](7) NULL,
	[modelno] [varchar](max) NULL,
	[brandname] [varchar](max) NULL,
	[otherfeatures] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [varchar](200) NOT NULL,
	[userid] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[productid] [varchar](200) NULL,
	[productname] [varchar](200) NULL,
	[description] [varchar](200) NULL,
	[amountpaid] [decimal](18, 2) NULL,
	[qty] [int] NOT NULL,
	[unitprice] [decimal](18, 2) NOT NULL,
	[totalcost] [decimal](18, 2) NOT NULL,
	[discountperc] [int] NOT NULL,
	[discountamount] [decimal](18, 2) NOT NULL,
	[insertdate] [datetime] NULL,
	[orderid] [varchar](200) NULL,
 CONSTRAINT [PK_dbo.sale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceProvider]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceProvider](
	[Id] [varchar](200) NOT NULL,
	[firstname] [varchar](200) NOT NULL,
	[lastname] [varchar](200) NOT NULL,
	[phone] [varchar](200) NOT NULL,
	[usertype] [varchar](200) NULL,
	[address] [varchar](200) NULL,
	[active] [bit] NULL,
	[Email] [varchar](200) NOT NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordSalt] [varchar](max) NULL,
	[PasswordHash] [varchar](max) NULL,
	[SecurityStamp] [varchar](max) NULL,
	[PhoneNumber] [varchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[UserName] [varchar](max) NULL,
	[country] [varchar](200) NULL,
	[state] [varchar](200) NULL,
	[city] [varchar](200) NULL,
	[lat] [varchar](200) NULL,
	[longi] [varchar](200) NULL,
	[regdate] [datetime] NULL,
	[brandname] [varchar](max) NULL,
	[category] [varchar](max) NULL,
	[about] [varchar](max) NULL,
	[logo] [varchar](max) NULL,
	[tags] [varchar](max) NULL,
	[insertdate] [datetime] NULL,
	[status] [varchar](max) NULL,
	[notes] [varchar](max) NULL,
	[amountpaid] [decimal](18, 2) NULL,
	[paymentdate] [datetime] NULL,
	[duedate] [datetime] NULL,
	[paymentstatus] [varchar](max) NULL,
	[SPtype] [varchar](max) NULL,
	[bg] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
 CONSTRAINT [PK_ServiceProvider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[Id] [varchar](200) NOT NULL,
	[firstname] [varchar](200) NOT NULL,
	[lastname] [varchar](200) NOT NULL,
	[phone] [varchar](200) NOT NULL,
	[usertype] [varchar](200) NULL,
	[address] [varchar](200) NULL,
	[active] [bit] NULL,
	[Email] [varchar](200) NOT NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordSalt] [varchar](max) NULL,
	[PasswordHash] [varchar](max) NULL,
	[SecurityStamp] [varchar](max) NULL,
	[PhoneNumber] [varchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[UserName] [varchar](max) NULL,
	[country] [varchar](200) NULL,
	[state] [varchar](200) NULL,
	[city] [varchar](200) NULL,
	[lat] [varchar](200) NULL,
	[longi] [varchar](200) NULL,
	[regdate] [datetime] NULL,
	[brandname] [varchar](max) NULL,
	[category] [varchar](max) NULL,
	[about] [varchar](max) NULL,
	[logo] [varchar](max) NULL,
	[tags] [varchar](max) NULL,
	[insertdate] [datetime] NULL,
	[status] [varchar](max) NULL,
	[notes] [varchar](max) NULL,
	[amountpaid] [decimal](18, 2) NULL,
	[paymentdate] [datetime] NULL,
	[duedate] [datetime] NULL,
	[paymentstatus] [varchar](max) NULL,
	[shippertype] [varchar](max) NULL,
	[bg] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingPayments]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingPayments](
	[id] [varchar](200) NOT NULL,
	[name] [varchar](200) NULL,
	[orderid] [varchar](200) NULL,
	[shipperemail] [varchar](200) NULL,
	[customerid] [varchar](200) NULL,
	[shipperid] [varchar](200) NULL,
	[phone] [varchar](200) NULL,
	[amount] [decimal](18, 2) NULL,
	[trnxdate] [datetime] NULL,
	[status] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
	[gatewayref] [varchar](200) NULL,
	[paymenttype] [varchar](200) NULL,
	[category] [varchar](200) NULL,
	[title] [varchar](200) NULL,
 CONSTRAINT [PK_ShippingPayments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[states] [varchar](100) NULL,
	[stateid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[stateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [varchar](200) NOT NULL,
	[firstname] [varchar](200) NOT NULL,
	[lastname] [varchar](200) NOT NULL,
	[phone] [varchar](200) NOT NULL,
	[usertype] [varchar](200) NULL,
	[address] [varchar](200) NULL,
	[active] [bit] NULL,
	[Email] [varchar](200) NOT NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordSalt] [varchar](max) NULL,
	[PasswordHash] [varchar](max) NULL,
	[SecurityStamp] [varchar](max) NULL,
	[PhoneNumber] [varchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[UserName] [varchar](max) NULL,
	[country] [varchar](200) NULL,
	[state] [varchar](200) NULL,
	[city] [varchar](200) NULL,
	[lat] [varchar](200) NULL,
	[longi] [varchar](200) NULL,
	[regdate] [datetime] NULL,
	[brandname] [varchar](max) NULL,
	[category] [varchar](max) NULL,
	[about] [varchar](max) NULL,
	[logo] [varchar](max) NULL,
	[tags] [varchar](max) NULL,
	[insertdate] [datetime] NULL,
	[status] [varchar](max) NULL,
	[notes] [varchar](max) NULL,
	[amountpaid] [decimal](18, 2) NULL,
	[paymentdate] [datetime] NULL,
	[duedate] [datetime] NULL,
	[paymentstatus] [varchar](max) NULL,
	[vendortype] [varchar](max) NULL,
	[bg] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 10/2/2023 10:50:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[Id] [varchar](200) NOT NULL,
	[firstname] [varchar](200) NOT NULL,
	[lastname] [varchar](200) NOT NULL,
	[phone] [varchar](200) NOT NULL,
	[usertype] [varchar](200) NULL,
	[address] [varchar](200) NULL,
	[active] [bit] NULL,
	[Email] [varchar](200) NOT NULL,
	[EmailConfirmed] [bit] NULL,
	[PasswordSalt] [varchar](max) NULL,
	[PasswordHash] [varchar](max) NULL,
	[SecurityStamp] [varchar](max) NULL,
	[PhoneNumber] [varchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NULL,
	[AccessFailedCount] [int] NULL,
	[UserName] [varchar](max) NULL,
	[country] [varchar](200) NULL,
	[state] [varchar](200) NULL,
	[city] [varchar](200) NULL,
	[lat] [varchar](200) NULL,
	[longi] [varchar](200) NULL,
	[regdate] [datetime] NULL,
	[brandname] [varchar](max) NULL,
	[category] [varchar](max) NULL,
	[about] [varchar](max) NULL,
	[logo] [varchar](max) NULL,
	[tags] [varchar](max) NULL,
	[insertdate] [datetime] NULL,
	[status] [varchar](max) NULL,
	[notes] [varchar](max) NULL,
	[amountpaid] [decimal](18, 2) NULL,
	[paymentdate] [datetime] NULL,
	[duedate] [datetime] NULL,
	[paymentstatus] [varchar](max) NULL,
	[vendortype] [varchar](max) NULL,
	[bg] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'5BCFB0B6', NULL, N'bakgudnes98@gmail.com', NULL, NULL, N'226b7bfe-29f0-479b-bbc7-aa404dac51bc', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-07-31T09:59:36.373' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'5CA1A864', NULL, N'admin@gmail.com', NULL, NULL, N'2a25c048-b33a-4b99-84f2-72f9ef0b715f', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-09T12:43:58.647' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'830EEDA7', NULL, N'sedache7@gmail.com', NULL, NULL, N'3e514beb-cadd-49ae-a697-fd0e690e36f3', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-04-24T12:25:56.203' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'A5210B86', NULL, N'admin@gmail.com', NULL, NULL, N'226b7bfe-29f0-479b-bbc7-aa404dac51bc', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-09T12:44:01.047' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'BB59D9E6', NULL, N'hyedimawaha@gmail.com', NULL, NULL, N'ba420dd5-5c69-4e5e-948b-8ec90f51aa39', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-09-28T08:57:04.597' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'BCB1A76A', NULL, N'bunyameendauda@gmail.com', NULL, NULL, N'4fd26fb1-34f2-4d8d-8a8f-ca17b8ebed4a', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-09T16:50:49.587' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'BE69C8CE', NULL, N'hannatdave@gmail.com', NULL, NULL, N'4fa6aa0f-5a89-4891-91d4-e964230c46a4', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-01T12:31:42.947' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'C0F83FEB', NULL, N'bakgudnes98@gmail.com', NULL, NULL, N'b40ffe59-91dc-4fd8-8a24-3f6149eb4b73', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-07-31T09:59:33.050' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'C10C6B40', NULL, N'admin@gmail.com', NULL, NULL, N'3e514beb-cadd-49ae-a697-fd0e690e36f3', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-05-09T12:44:06.007' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'DC4F9E65', NULL, N'hyedimawaha@gmail.com', NULL, NULL, N'294406e1-50f4-4f6c-a833-e159c3787143', 2, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-09-28T08:57:16.393' AS DateTime))
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'E4A04669', NULL, N'bunyameendauda@gmail.com', NULL, NULL, N'c29bc86b-ddc7-44ef-bdff-8d0653ba9710', 1, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-09T16:51:08.053' AS DateTime))
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'1', N'SERVICE', N'Mechanic', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'10', N'SERVICE', N'Ambulance', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'11', N'SERVICE', N'Carpenter', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'12', N'SERVICE', N'Photo Studio', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'13', N'SERVICE', N'Printing', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'14', N'SERVICE', N'Immediate Errands', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'15', N'SERVICE', N'Saloon', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'2', N'SERVICE', N'Plumbing', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'3', N'SERVICE', N'Electrician', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'4', N'SERVICE', N'Painting', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'5', N'SERVICE', N'Shoe Maker', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'6', N'SERVICE', N'Tailoring', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'7', N'SERVICE', N'Gas', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'8', N'SERVICE', N'House Keeping', NULL)
GO
INSERT [dbo].[Category] ([id], [cat], [name], [description]) VALUES (N'9', N'SERVICE', N'Shop Keeping', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'1', N'Mechanic', N'Tire', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'10', N'Mechanic', N'Tesla', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'11', N'Mechanic', N'Toyota', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'12', N'Mechanic', N'General Car Service', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'13', N'Plumbing', N'Pump Installtion', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'14', N'Plumbing', N'Pipeline Services / Installation', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'15', N'Plumbing', N'Borehole Drilling', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'16', N'Plumbing', N'Tanks', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'17', N'Electrician', N'Wiring', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'18', N'Electrician', N'Transformer Expert', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'19', N'Electrician', N'General Electrical Services', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'2', N'Mechanic', N'Engine', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'20', N'Painting', N'House Painting ', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'21', N'Painting', N'Paint Producer', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'22', N'Painting', N'Oil Painter Expert', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'23', N'Painting', N'Painting Company', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'24', N'Shoe Maker', N'Shoe Cobbler', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'25', N'Shoe Maker', N'Mobile Shoe Maker', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'26', N'Tailoring', N'Fashion Designers', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'27', N'Tailoring', N'Mobile Tailor', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'28', N'Gas', N'Mobile Gas', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'29', N'House Keeping', N'Professional Cleaners', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'3', N'Mechanic', N'Motor Spareparts', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'30', N'House Keeping', N'House Boy', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'31', N'House Keeping', N'House Girl', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'32', N'Shop Keeping', N'Sales Boy', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'33', N'Shop Keeping', N'Sales Girl', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'34', N'Shop Keeping', N'Sales Manager', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'35', N'Ambulance', N'Quick Response Ambulance', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'36', N'Ambulance', N'Fire Emergency', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'37', N'Ambulance', N'Mobile First Aid', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'38', N'Ambulance', N'Nurse Around', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'39', N'Carpenter', N'Professional Carpenters', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'4', N'Mechanic', N'Mobile Car Wash', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'40', N'Carpenter', N'Chairs tables and cabinat', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'41', N'Carpenter', N'General Carpenter', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'42', N'Photo Studio', N'Passport Photograph', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'43', N'Photo Studio', N'Professional photo/Video Shoot', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'44', N'Photo Studio', N'Outdoor Photoshool', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'45', N'Photo Studio', N'Mobile Photography', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'46', N'Photo Studio', N'General Photo Service', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'47', N'Printing', N'Mobile Printing', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'48', N'Printing', N'Banner', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'49', N'immediate Errands', N'Errand Boy (Verified)', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'5', N'Mechanic', N'Car Painting', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'50', N'immediate Errands', N'Errand Girl (Verified)', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'51', N'immediate Errands', N'Delivery Company (Verified)', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'52', N'Saloon', N'Mobile Saloon', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'53', N'Saloon', N'Men Saloon', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'54', N'Saloon', N'Women Saloon', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'6', N'Mechanic', N'BMW Experts', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'7', N'Mechanic', N'Mercedes Benz', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'8', N'Mechanic', N'Kia Expert', NULL)
GO
INSERT [dbo].[categorysub] ([id], [cat], [name], [description]) VALUES (N'9', N'Mechanic', N'Range Rover', NULL)
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aba North', N'1', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ohafia', N'10', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Itas/Gadau', N'100', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jama''are', N'101', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Katagum', N'102', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kirfi', N'103', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Misau', N'104', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ningi', N'105', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shira', N'106', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tafawa Balewa', N'107', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Toro', N'108', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Warji', N'109', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Osisioma', N'11', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Zaki', N'110', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Brass', N'111', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ekeremor', N'112', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kolokuma/Opokuma', N'113', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nembe', N'114', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogbia', N'115', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sagbama', N'116', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Southern Ijaw', N'117', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yenagoa', N'118', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Agatu', N'119', N'6')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ugwunagbo', N'12', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Apa', N'120', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ado', N'121', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Buruku', N'122', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gboko', N'123', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Guma', N'124', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwer East', N'125', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwer West', N'126', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Katsina-Ala', N'127', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Konshisha', N'128', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kwande', N'129', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ukwa East', N'13', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Logo', N'130', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Makurdi', N'131', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obi', N'132', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogbadibo', N'133', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ohimini', N'134', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oju', N'135', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Okpokwu', N'136', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oturkpo', N'137', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tarka', N'138', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ukum', N'139', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ukwa West', N'14', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ushongo', N'140', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Vandeikya', N'141', N'7')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Abadam', N'142', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Askira/Uba', N'143', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bama', N'144', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bayo', N'145', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Biu', N'146', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Chibok', N'147', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Damboa', N'148', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dikwa', N'149', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Umuahia North', N'15', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gubio', N'150', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Guzamala', N'151', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwoza', N'152', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Hawul', N'153', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jere', N'154', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaga', N'155', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kala/Balge', N'156', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Konduga', N'157', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kukawa', N'158', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kwaya Kusar', N'159', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Umuahia South', N'16', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mafa', N'160', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Magumeri', N'161', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Maiduguri', N'162', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Marte', N'163', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mobbar', N'164', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Monguno', N'165', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ngala', N'166', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nganzai', N'167', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shani', N'168', N'8')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Abi', N'169', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Umu Nneochi', N'17', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akamkpa', N'170', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akpabuyo', N'171', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bakassi', N'172', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bekwarra', N'173', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Biase', N'174', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Boki', N'175', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Calabar Municipal', N'176', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Calabar South', N'177', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Etung', N'178', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikom', N'179', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Demsa', N'18', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obanliku', N'180', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obubra', N'181', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obudu', N'182', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Odukpani', N'183', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogoja', N'184', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yakuur', N'185', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yala', N'186', N'9')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aniocha North', N'187', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aniocha South', N'188', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bomadi', N'189', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Fufure', N'19', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Burutu', N'190', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ethiope East', N'191', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ethiope West', N'192', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ika North East', N'193', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ika South', N'194', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isoko North', N'195', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isoko South', N'196', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ndokwa East', N'197', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ndokwa West', N'198', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Okpe', N'199', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aba South', N'2', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ganye', N'20', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oshimili North', N'200', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oshimili South', N'201', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Patani', N'202', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sapele', N'203', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Udu', N'204', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ughelli North', N'205', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ughelli South', N'206', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ukwuani', N'207', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Uvwie', N'208', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Warri North', N'209', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gayuk', N'21', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Warri South', N'210', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Warri South West', N'211', N'10')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Abakaliki', N'212', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Afikpo North', N'213', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Afikpo South', N'214', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ebonyi', N'215', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ezza North', N'216', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ezza South', N'217', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikwo', N'218', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ishielu', N'219', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gombi', N'22', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ivo', N'220', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Izzi', N'221', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ohaozara', N'222', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ohaukwu', N'223', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Onicha', N'224', N'11')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akoko-Edo', N'225', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Egor', N'226', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Esan Central', N'227', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Esan North-East', N'228', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Esan South-East', N'229', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Grie', N'23', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Esan West', N'230', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Etsako Central', N'231', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Etsako East', N'232', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Etsako West', N'233', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Igueben', N'234', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikpoba Okha', N'235', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Orhionmwon', N'236', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oredo', N'237', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ovia North-East', N'238', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ovia South-West', N'239', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Hong', N'24', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Owan East', N'240', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Owan West', N'241', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Uhunmwonde', N'242', N'12')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ado Ekiti', N'243', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Efon', N'244', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ekiti East', N'245', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ekiti South-West', N'246', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ekiti West', N'247', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Emure', N'248', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gbonyin', N'249', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jada', N'25', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ido Osi', N'250', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ijero', N'251', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikere', N'252', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikole', N'253', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ilejemeje', N'254', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Irepodun/Ifelodun', N'255', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ise/Orun', N'256', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Moba', N'257', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oye', N'258', N'13')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aninri', N'259', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lamurde', N'26', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Awgu', N'260', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Enugu East', N'261', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Enugu North', N'262', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Enugu South', N'263', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ezeagu', N'264', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Igbo Etiti', N'265', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Igbo Eze North', N'266', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Igbo Eze South', N'267', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isi Uzo', N'268', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nkanu East', N'269', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Madagali', N'27', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nkanu West', N'270', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nsukka', N'271', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oji River', N'272', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Udenu', N'273', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Udi', N'274', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Uzo Uwani', N'275', N'14')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Abaji', N'276', N'15')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bwari', N'277', N'15')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwagwalada', N'278', N'15')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kuje', N'279', N'15')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Maiha', N'28', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kwali', N'280', N'15')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Municipal Area Council', N'281', N'15')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akko', N'282', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Balanga', N'283', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Billiri', N'284', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dukku', N'285', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Funakaye', N'286', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gombe', N'287', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaltungo', N'288', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kwami', N'289', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mayo Belwa', N'29', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nafada', N'290', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shongom', N'291', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yamaltu/Deba', N'292', N'16')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aboh Mbaise', N'293', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ahiazu Mbaise', N'294', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ehime Mbano', N'295', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ezinihitte', N'296', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ideato North', N'297', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ideato South', N'298', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ihitte/Uboma', N'299', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Arochukwu', N'3', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Michika', N'30', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikeduru', N'300', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isiala Mbano', N'301', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isu', N'302', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mbaitoli', N'303', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ngor Okpala', N'304', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Njaba', N'305', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nkwerre', N'306', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nwangele', N'307', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obowo', N'308', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oguta', N'309', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mubi North', N'31', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ohaji/Egbema', N'310', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Okigwe', N'311', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Orlu', N'312', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Orsu', N'313', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oru East', N'314', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oru West', N'315', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Owerri Municipal', N'316', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Owerri North', N'317', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Owerri West', N'318', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Unuimo', N'319', N'17')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mubi South', N'32', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Auyo', N'320', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Babura', N'321', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Biriniwa', N'322', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Birnin Kudu', N'323', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Buji', N'324', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dutse', N'325', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gagarawa', N'326', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Garki', N'327', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gumel', N'328', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Guri', N'329', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Numan', N'33', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwaram', N'330', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwiwa', N'331', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Hadejia', N'332', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jahun', N'333', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kafin Hausa', N'334', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kazaure', N'335', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kiri Kasama', N'336', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kiyawa', N'337', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaugama', N'338', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Maigatari', N'339', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shelleng', N'34', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Malam Madori', N'340', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Miga', N'341', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ringim', N'342', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Roni', N'343', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sule Tankarkar', N'344', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Taura', N'345', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yankwashi', N'346', N'18')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Birnin Gwari', N'347', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Chikun', N'348', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Giwa', N'349', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Song', N'35', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Igabi', N'350', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikara', N'351', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jaba', N'352', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jema''a', N'353', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kachia', N'354', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaduna North', N'355', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaduna South', N'356', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kagarko', N'357', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kajuru', N'358', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaura', N'359', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Toungo', N'36', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kauru', N'360', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kubau', N'361', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kudan', N'362', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lere', N'363', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Makarfi', N'364', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sabon Gari', N'365', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sanga', N'366', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Soba', N'367', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Zangon Kataf', N'368', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Zaria', N'369', N'19')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yola North', N'37', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ajingi', N'370', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Albasu', N'371', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bagwai', N'372', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bebeji', N'373', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bichi', N'374', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bunkure', N'375', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dala', N'376', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dambatta', N'377', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dawakin Kudu', N'378', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dawakin Tofa', N'379', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yola South', N'38', N'2')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Doguwa', N'380', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Fagge', N'381', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gabasawa', N'382', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Garko', N'383', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Garun Mallam', N'384', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gaya', N'385', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gezawa', N'386', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwale', N'387', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwarzo', N'388', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kabo', N'389', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Abak', N'39', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kano Municipal', N'390', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Karaye', N'391', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kibiya', N'392', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kiru', N'393', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kumbotso', N'394', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kunchi', N'395', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kura', N'396', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Madobi', N'397', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Makoda', N'398', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Minjibir', N'399', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bende', N'4', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Eastern Obolo', N'40', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nasarawa', N'400', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Rano', N'401', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Rimin Gado', N'402', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Rogo', N'403', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shanono', N'404', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sumaila', N'405', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Takai', N'406', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tarauni', N'407', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tofa', N'408', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tsanyawa', N'409', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Eket', N'41', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tudun Wada', N'410', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ungogo', N'411', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Warawa', N'412', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Wudil', N'413', N'20')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bakori', N'414', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Batagarawa', N'415', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Batsari', N'416', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Baure', N'417', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bindawa', N'418', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Charanchi', N'419', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Esit Eket', N'42', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dandume', N'420', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Danja', N'421', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dan Musa', N'422', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Daura', N'423', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dutsi', N'424', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dutsin Ma', N'425', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Faskari', N'426', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Funtua', N'427', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ingawa', N'428', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jibia', N'429', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Essien Udim', N'43', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kafur', N'430', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaita', N'431', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kankara', N'432', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kankia', N'433', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Katsina', N'434', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kurfi', N'435', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kusada', N'436', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mai''Adua', N'437', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Malumfashi', N'438', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mani', N'439', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Etim Ekpo', N'44', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mashi', N'440', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Matazu', N'441', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Musawa', N'442', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Rimi', N'443', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sabuwa', N'444', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Safana', N'445', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sandamu', N'446', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Zango', N'447', N'21')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aleiro', N'448', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Arewa Dandi', N'449', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Etinan', N'45', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Argungu', N'450', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Augie', N'451', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bagudo', N'452', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Birnin Kebbi', N'453', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bunza', N'454', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dandi', N'455', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Fakai', N'456', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwandu', N'457', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jega', N'458', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kalgo', N'459', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibeno', N'46', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Koko/Besse', N'460', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Maiyama', N'461', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ngaski', N'462', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sakaba', N'463', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shanga', N'464', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Suru', N'465', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Wasagu/Danko', N'466', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yauri', N'467', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Zuru', N'468', N'22')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Adavi', N'469', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibesikpo Asutan', N'47', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ajaokuta', N'470', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ankpa', N'471', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bassa', N'472', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dekina', N'473', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibaji', N'474', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Idah', N'475', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Igalamela Odolu', N'476', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ijumu', N'477', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kabba/Bunu', N'478', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kogi', N'479', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibiono-Ibom', N'48', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lokoja', N'480', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mopa Muro', N'481', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ofu', N'482', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogori/Magongo', N'483', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Okehi', N'484', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Okene', N'485', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Olamaboro', N'486', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Omala', N'487', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yagba East', N'488', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yagba West', N'489', N'23')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ika', N'49', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Asa', N'490', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Baruten', N'491', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Edu', N'492', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ekiti', N'493', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ifelodun', N'494', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ilorin East', N'495', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ilorin South', N'496', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ilorin West', N'497', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Irepodun', N'498', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isin', N'499', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikwuano', N'5', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikono', N'50', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaiama', N'500', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Moro', N'501', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Offa', N'502', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oke Ero', N'503', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oyun', N'504', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Pategi', N'505', N'24')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Agege', N'506', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ajeromi-Ifelodun', N'507', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Alimosho', N'508', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Amuwo-Odofin', N'509', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikot Abasi', N'51', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Apapa', N'510', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Badagry', N'511', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Epe', N'512', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Eti Osa', N'513', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibeju-Lekki', N'514', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ifako-Ijaiye', N'515', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikeja', N'516', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikorodu', N'517', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kosofe', N'518', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lagos Island', N'519', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikot Ekpene', N'52', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lagos Mainland', N'520', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mushin', N'521', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ojo', N'522', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oshodi-Isolo', N'523', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shomolu', N'524', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Surulere', N'525', N'25')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akwanga', N'526', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Awe', N'527', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Doma', N'528', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Karu', N'529', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ini', N'53', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Keana', N'530', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Keffi', N'531', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kokona', N'532', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lafia', N'533', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nasarawa', N'534', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nasarawa Egon', N'535', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obi', N'536', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Toto', N'537', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Wamba', N'538', N'26')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Agaie', N'539', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Itu', N'54', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Agwara', N'540', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bida', N'541', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Borgu', N'542', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bosso', N'543', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Chanchaga', N'544', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Edati', N'545', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gbako', N'546', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gurara', N'547', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Katcha', N'548', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kontagora', N'549', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mbo', N'55', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lapai', N'550', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lavun', N'551', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Magama', N'552', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mariga', N'553', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mashegu', N'554', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mokwa', N'555', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Moya', N'556', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Paikoro', N'557', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Rafi', N'558', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Rijau', N'559', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mkpat-Enin', N'56', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shiroro', N'560', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Suleja', N'561', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tafa', N'562', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Wushishi', N'563', N'27')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Abeokuta North', N'564', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Abeokuta South', N'565', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ado-Odo/Ota', N'566', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Egbado North', N'567', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Egbado South', N'568', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ewekoro', N'569', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nsit-Atai', N'57', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ifo', N'570', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ijebu East', N'571', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ijebu North', N'572', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ijebu North East', N'573', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ijebu Ode', N'574', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikenne', N'575', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Imeko Afon', N'576', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ipokia', N'577', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obafemi Owode', N'578', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Odeda', N'579', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nsit-Ibom', N'58', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Odogbolu', N'580', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogun Waterside', N'581', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Remo North', N'582', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shagamu', N'583', N'28')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akoko North-East', N'584', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akoko North-West', N'585', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akoko South-West', N'586', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akoko South-East', N'587', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akure North', N'588', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akure South', N'589', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nsit-Ubium', N'59', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ese Odo', N'590', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Idanre', N'591', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ifedore', N'592', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ilaje', N'593', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ile Oluji/Okeigbo', N'594', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Irele', N'595', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Odigbo', N'596', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Okitipupa', N'597', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ondo East', N'598', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ondo West', N'599', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isiala Ngwa North', N'6', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obot Akara', N'60', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ose', N'600', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Owo', N'601', N'29')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Atakunmosa East', N'602', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Atakunmosa West', N'603', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aiyedaade', N'604', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aiyedire', N'605', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Boluwaduro', N'606', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Boripe', N'607', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ede North', N'608', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ede South', N'609', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Okobo', N'61', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ife Central', N'610', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ife East', N'611', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ife North', N'612', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ife South', N'613', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Egbedore', N'614', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ejigbo', N'615', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ifedayo', N'616', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ifelodun', N'617', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ila', N'618', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ilesa East', N'619', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Onna', N'62', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ilesa West', N'620', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Irepodun', N'621', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Irewole', N'622', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isokan', N'623', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Iwo', N'624', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obokun', N'625', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Odo Otin', N'626', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ola Oluwa', N'627', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Olorunda', N'628', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oriade', N'629', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oron', N'63', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Orolu', N'630', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Osogbo', N'631', N'30')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Afijio', N'632', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akinyele', N'633', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Atiba', N'634', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Atisbo', N'635', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Egbeda', N'636', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibadan North', N'637', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibadan North-East', N'638', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibadan North-West', N'639', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oruk Anam', N'64', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibadan South-East', N'640', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibadan South-West', N'641', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibarapa Central', N'642', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibarapa East', N'643', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibarapa North', N'644', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ido', N'645', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Irepo', N'646', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Iseyin', N'647', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Itesiwaju', N'648', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Iwajowa', N'649', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Udung-Uko', N'65', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kajola', N'650', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lagelu', N'651', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogbomosho North', N'652', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogbomosho South', N'653', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogo Oluwa', N'654', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Olorunsogo', N'655', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oluyole', N'656', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ona Ara', N'657', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Orelope', N'658', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ori Ire', N'659', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ukanafun', N'66', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oyo', N'660', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oyo East', N'661', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Saki East', N'662', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Saki West', N'663', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Surulere', N'664', N'31')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bokkos', N'665', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Barkin Ladi', N'666', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bassa', N'667', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jos East', N'668', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jos North', N'669', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Uruan', N'67', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jos South', N'670', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kanam', N'671', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kanke', N'672', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Langtang South', N'673', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Langtang North', N'674', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mangu', N'675', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Mikang', N'676', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Pankshin', N'677', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Qua''an Pan', N'678', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Riyom', N'679', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Urue-Offong/Oruko', N'68', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shendam', N'680', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Wase', N'681', N'32')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Abua/Odual', N'682', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ahoada East', N'683', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ahoada West', N'684', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Akuku-Toru', N'685', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Andoni', N'686', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Asari-Toru', N'687', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bonny', N'688', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Degema', N'689', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Uyo', N'69', N'3')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Eleme', N'690', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Emuoha', N'691', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Etche', N'692', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gokana', N'693', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ikwerre', N'694', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Khana', N'695', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obio/Akpor', N'696', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogba/Egbema/Ndoni', N'697', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogu/Bolo', N'698', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Okrika', N'699', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isiala Ngwa South', N'7', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Aguata', N'70', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Omuma', N'700', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Opobo/Nkoro', N'701', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oyigbo', N'702', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Port Harcourt', N'703', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tai', N'704', N'33')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Binji', N'705', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bodinga', N'706', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dange Shuni', N'707', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gada', N'708', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Goronyo', N'709', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Anambra East', N'71', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gudu', N'710', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gwadabawa', N'711', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Illela', N'712', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isa', N'713', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kebbe', N'714', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kware', N'715', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Rabah', N'716', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sabon Birni', N'717', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shagari', N'718', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Silame', N'719', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Anambra West', N'72', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sokoto North', N'720', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sokoto South', N'721', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tambuwal', N'722', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tangaza', N'723', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tureta', N'724', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Wamako', N'725', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Wurno', N'726', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yabo', N'727', N'34')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ardo Kola', N'728', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bali', N'729', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Anaocha', N'73', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Donga', N'730', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gashaka', N'731', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gassol', N'732', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ibi', N'733', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jalingo', N'734', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Karim Lamido', N'735', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kumi', N'736', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Lau', N'737', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Sardauna', N'738', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Takum', N'739', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Awka North', N'74', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ussa', N'740', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Wukari', N'741', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yorro', N'742', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Zing', N'743', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bade', N'744', N'35')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bursari', N'745', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Damaturu', N'746', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Fika', N'747', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Fune', N'748', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Geidam', N'749', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Awka South', N'75', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gujba', N'750', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gulani', N'751', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Jakusko', N'752', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Karasuwa', N'753', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Machina', N'754', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nangere', N'755', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nguru', N'756', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Potiskum', N'757', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Tarmuwa', N'758', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yunusari', N'759', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ayamelum', N'76', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Yusufari', N'760', N'36')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Anka', N'761', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bakura', N'762', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Birnin Magaji/Kiyaw', N'763', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bukkuyum', N'764', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bungudu', N'765', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gummi', N'766', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gusau', N'767', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Kaura Namoda', N'768', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Maradun', N'769', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dunukofia', N'77', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Maru', N'770', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Shinkafi', N'771', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Talata Mafara', N'772', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Chafe', N'773', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Zurmi', N'774', N'37')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ekwusigo', N'78', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Idemili North', N'79', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Isuikwuato', N'8', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Idemili South', N'80', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ihiala', N'81', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Njikoka', N'82', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nnewi North', N'83', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Nnewi South', N'84', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ogbaru', N'85', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Onitsha North', N'86', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Onitsha South', N'87', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Orumba North', N'88', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Orumba South', N'89', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Obi Ngwa', N'9', N'1')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Oyi', N'90', N'4')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Alkaleri', N'91', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bauchi', N'92', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Bogoro', N'93', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Damban', N'94', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Darazo', N'95', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Dass', N'96', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Gamawa', N'97', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Ganjuwa', N'98', N'5')
GO
INSERT [dbo].[LGAs] ([lga_name], [lgaid], [stateid]) VALUES (N'Giade', N'99', N'5')
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'1F623F53', N'Hauwa ', N'Imran', N'', N'E77202C6', N'hawyimran@gmail.com', NULL, CAST(N'2023-06-26T15:24:00.403' AS DateTime), CAST(N'2023-06-26T15:24:00.403' AS DateTime), N'True', NULL, N'', N'6/26/2023 3:24:00 PM', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'PENDING', N'PENDING ORDER', N'hawyimran@gmail.com', N'PENDING', N'', N'NIGERIA', N'', N'', N'09032307443', NULL)
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'296C6F21', N'Hyedima', N'Waha', N'', N'8649C062', N'hyedimawaha@gmail.com', NULL, CAST(N'2023-06-20T11:21:12.557' AS DateTime), CAST(N'2023-06-20T11:21:12.557' AS DateTime), N'True', NULL, N'', N'6/20/2023 11:21:12 AM', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', N'PENDING ORDER', N'hyedimawaha@gmail.com', N'PENDING', N'', N'NIGERIA', N'', N'', N'0813724897876', NULL)
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'B9790B8', N'Hyedima ss', N'Waha', N'', N'3AF077C9', N'hyedimawaha@gmail.com', NULL, CAST(N'2023-05-31T10:57:53.820' AS DateTime), CAST(N'2023-05-31T10:57:53.820' AS DateTime), N'True', NULL, N'', N'5/31/2023 10:57:53 AM', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', N'PENDING ORDER', N'hyedimawaha@gmail.com', N'PENDING', N'', N'NIGERIA', N'', N'', N'0813724897876', NULL)
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'CD4C3039', N'Hyedima', N'Waha', N'', N'C35E27D0', N'hyedimawaha@gmail.com', NULL, CAST(N'2023-05-31T10:44:32.257' AS DateTime), CAST(N'2023-05-31T10:44:32.257' AS DateTime), N'True', NULL, N'', N'5/31/2023 10:44:32 AM', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', N'PENDING ORDER', N'hyedimawaha@gmail.com', N'PENDING', N'', N'NIGERIA', N'', N'', N'0813724897876', NULL)
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'E4EF501', NULL, NULL, NULL, N'FLW-e939b2cf9fbf4aebb437b8696aeb8466', N'hawyimran@gmail.com', N'FLW-e939b2cf9fbf4aebb437b8696aeb8466', CAST(N'2023-06-26T15:29:07.563' AS DateTime), NULL, N'Fales', NULL, NULL, N'6/26/2023 3:29:07 PM', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'Ordered', N'payment for items is don''t, its now on the shipment process', N'hawyimran@gmail.com', N'PAID', N'My home', N'NIGERIA', N'ABUJA', N'100208', N'08012345678', N'')
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'FC909C72', N'', N'', N'', N'C948DDF9', N'hannatdave@gmail.com', NULL, CAST(N'2023-06-01T12:32:17.273' AS DateTime), CAST(N'2023-06-01T12:32:17.273' AS DateTime), N'True', NULL, N'', N'6/1/2023 12:32:17 PM', N'aab986d9-fa59-4bd3-a6e4-78ee21d3d7fe', N'PENDING', N'PENDING ORDER', N'hannatdave@gmail.com', N'PENDING', N'', N'NIGERIA', N'', N'', N'', NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0-9CB65AE9', N'Herbs&amp;Spices Wuse', N'1030882385', N'muftahuidris7070@gmail.com', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'08012345678', CAST(20000.00 AS Decimal(18, 2)), CAST(N'2023-08-23T13:25:19.243' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 8/23/2023 1:25:19 PM Ref No: 547dffc2-16f2-46cf-935a-656a4c8deb74 Gateway_ref: FLW-03c9bccb40c64c10b7cabcd63c40a4f8 currency: NGN', N'FLW-03c9bccb40c64c10b7cabcd63c40a4f8', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'19ab65e2-f4b2-448e-90d9-8ff65906055f-EF4AD337', N'Hauwa ', N'960178139', N'hawyimran@gmail.com', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'08012345678', CAST(31900.00 AS Decimal(18, 2)), CAST(N'2023-06-26T15:29:07.533' AS DateTime), N'PAID', N'Sales Payment on 6/26/2023 3:29:07 PM, Ref No: 2581213c-ea8a-4153-9231-39b79b52557d Gateway_ref: FLW-e939b2cf9fbf4aebb437b8696aeb8466 currency: NGN', N'FLW-e939b2cf9fbf4aebb437b8696aeb8466', N'ONLINE', N'SALES', N'Purchase of items')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'1fe62c45-c13e-4c38-95c3-353693695942-818273C0', N'K2 maikaji Wuse', N'1030869188', N'nuhukatsina@gmail.com', N'1fe62c45-c13e-4c38-95c3-353693695942', N'08012345678', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-23T13:13:04.580' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 8/23/2023 1:13:04 PM Ref No: dbd1f6d3-6238-440b-b8bb-6db2474901ec Gateway_ref: FLW-e044270ba41f4906b9c6d0a7c7582202 currency: NGN', N'FLW-e044270ba41f4906b9c6d0a7c7582202', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'27d53347-cbf3-4a7b-a3c1-980dd697cac1-C4641951', N'Sunny World Interior', N'1028123425', N'es1277183@gmail.com', N'27d53347-cbf3-4a7b-a3c1-980dd697cac1', N'08012345678', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-21T12:29:45.140' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 8/21/2023 12:29:45 PM Ref No: 7050072c-2c39-4f03-97d3-d825aace6763 Gateway_ref: FLW-dc4941cee13840faaf53a9bd74a4f613 currency: NGN', N'FLW-dc4941cee13840faaf53a9bd74a4f613', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'40c01a6a-5637-4801-8dc0-a823947f9e9c-8B07CCE2', N'Basil NwIke', N'1040106683', N'basilnwike@gmail.com', N'40c01a6a-5637-4801-8dc0-a823947f9e9c', N'08012345678', CAST(20000.00 AS Decimal(18, 2)), CAST(N'2023-08-29T15:02:13.233' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 8/29/2023 3:02:13 PM Ref No: 0887eff9-53ce-4fcb-9479-5d24bdc8f019 Gateway_ref: FLW-8316506c032a4b608e4522d9d2e715d8 currency: NGN', N'FLW-8316506c032a4b608e4522d9d2e715d8', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'41d10463-47f0-49b7-ae27-027d6ca9b2fc-CB202F2A', N'DanMadam ', N'1030830817', N'daudanafiu22@gmail.com', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'08012345678', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-23T12:38:19.217' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 8/23/2023 12:38:19 PM Ref No: cc50c7f0-af8e-4975-9326-fce727557376 Gateway_ref: FLW-4b5ace459df3493ca5a52741a37aab0f currency: NGN', N'FLW-4b5ace459df3493ca5a52741a37aab0f', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'4600be22-6eef-4827-bdd9-551268615f47-49D8BC41', N'Baba Aisha', N'1019791369', N'markusapc@gmail.com', N'4600be22-6eef-4827-bdd9-551268615f47', N'08012345678', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-15T13:18:55.443' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 8/15/2023 1:18:55 PM Ref No: e196b5cf-2099-4841-86e5-b5b97a06dd05 Gateway_ref: FLW-bd8d899ede4b4819b350cc196118765f currency: NGN', N'FLW-bd8d899ede4b4819b350cc196118765f', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'7f4cc10d-978f-471b-8ae5-cecfe2a3f2b5-A746428E', N'Abdulrahhamans Store Wuse', N'1030843227', N'abdulrahmanabdull1987@gmail.com', N'7f4cc10d-978f-471b-8ae5-cecfe2a3f2b5', N'08012345678', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-23T12:49:17.003' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 8/23/2023 12:49:17 PM Ref No: 6889f6d7-4df7-4c62-a712-1b4aa5b318e5 Gateway_ref: FLW-b18da66a85c345e89a38705ab4bf0881 currency: NGN', N'FLW-b18da66a85c345e89a38705ab4bf0881', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'e0486f57-ed71-4f4e-a689-30c5e3d17f5f-96E4562C', NULL, N'987802004', NULL, N'e0486f57-ed71-4f4e-a689-30c5e3d17f5f', NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-07-24T10:48:34.427' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 7/24/2023 10:48:34 AM Ref No: 027638c9-9535-435f-9ed2-b4fff9532855 Gateway_ref: QRPE03571690195674212213 currency: NGN', N'QRPE03571690195674212213', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'01225853-cf8b-4cc7-b41c-0173b5e8261d', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Lavender 200grm ', N'Herbs&Spices', N'Lavender 200grm ', N'/Content/Images/01225853-cf8b-4cc7-b41c-0173b5e8261d/photobg.png', N'/Content/Images/01225853-cf8b-4cc7-b41c-0173b5e8261d/photo1.png', N'/Content/Images/01225853-cf8b-4cc7-b41c-0173b5e8261d/photo2.png', N'/Content/Images/01225853-cf8b-4cc7-b41c-0173b5e8261d/photo3.png', N'/Content/Images/01225853-cf8b-4cc7-b41c-0173b5e8261d/photo4.png', N'/Content/Images/01225853-cf8b-4cc7-b41c-0173b5e8261d/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T11:54:29.5094156' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'03a6d3f7-29e8-4406-849f-2c70ae8e6acd', N'4600be22-6eef-4827-bdd9-551268615f47', N'Irish potatoes', N'Food', N'Irish potatoes', N'/Content/Images/03a6d3f7-29e8-4406-849f-2c70ae8e6acd/photobg.jpg', N'/Content/Images/03a6d3f7-29e8-4406-849f-2c70ae8e6acd/photo1.jpg', N'/Content/Images/03a6d3f7-29e8-4406-849f-2c70ae8e6acd/photo2.jpg', N'/Content/Images/03a6d3f7-29e8-4406-849f-2c70ae8e6acd/photo3.jpg', N'/Content/Images/03a6d3f7-29e8-4406-849f-2c70ae8e6acd/photo4.jpg', N'/Content/Images/03a6d3f7-29e8-4406-849f-2c70ae8e6acd/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3000.00 AS Decimal(18, 2)), 0, NULL, 100, CAST(N'2023-08-16T10:11:00.6190911' AS DateTime2), N'Food', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'08907e57-4716-4bee-bb6d-7d190f932569', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Amlactin Daily Moisturizing Lotion', N'Lotion', N' AmLactin® Skin Care products contain our powerful Alpha-Hydroxy Therapy to gently exfoliate and deeply hydrate rough, dry skin. Our therapeutic moisturizers feature lactic acid, an Alpha-Hydroxy Acid (AHA), which occurs naturally within the skin, as well as rich emollients and creamy humectants that hydrate and smooth rough, dry skin.

Experience how AmLactin® Skin Care instantly hydrates, relieves roughness, and leaves your skin feeling soft and smooth today.

AmLactin alpha-hydroxy therapy. This special formula with clinically proven 12% lactic acid is pH-balanced for the skin and gently encourages natural skin cell renewal through exfoliation, creating the soft, smooth texture you''ll love. AmLactin works deep within the skin and offers long-lasting moisture retention for real comfort. What a relief.

Sunburn Alert: This product contains an alpha-hydroxy acid (AHA) that may increase your skin’s sensitivity to sunburn.
Be sun smart: Use sunscreen, wear protective clothing, and limit sun exposure while using this product and for a week afterward.', N'/Content/Images/08907e57-4716-4bee-bb6d-7d190f932569/photobg.jpeg', N'/Content/Images/08907e57-4716-4bee-bb6d-7d190f932569/photo1.jpg', N'/Content/Images/08907e57-4716-4bee-bb6d-7d190f932569/photo2.jpeg', N'/Content/Images/08907e57-4716-4bee-bb6d-7d190f932569/photo3.jpeg', N'/Content/Images/08907e57-4716-4bee-bb6d-7d190f932569/photo4.jpeg', N'/Content/Images/08907e57-4716-4bee-bb6d-7d190f932569/photo5.jpeg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(21000.00 AS Decimal(18, 2)), 0, NULL, 60, CAST(N'2023-08-09T14:39:22.4434609' AS DateTime2), N'Amlactin Daily Moisturizing Lotion', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'0a7c6533-fc7d-4699-a1c7-8dfca936f6a5', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Green pepper ', N'vegetable', N'Green pepper ', N'/Content/Images/0a7c6533-fc7d-4699-a1c7-8dfca936f6a5/photobg.png', N'/Content/Images/0a7c6533-fc7d-4699-a1c7-8dfca936f6a5/photo1.png', N'/Content/Images/0a7c6533-fc7d-4699-a1c7-8dfca936f6a5/photo2.png', N'/Content/Images/0a7c6533-fc7d-4699-a1c7-8dfca936f6a5/photo3.png', N'/Content/Images/0a7c6533-fc7d-4699-a1c7-8dfca936f6a5/photo4.png', N'/Content/Images/0a7c6533-fc7d-4699-a1c7-8dfca936f6a5/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(300.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T09:34:13.2055340' AS DateTime2), N'vegetable', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'17873278-ce3b-491c-be88-fdb6aa5fd15b', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Dilka 200grm ', N'Herbs&Spices', N'Dilka 200grm  
', N'/Content/Images/17873278-ce3b-491c-be88-fdb6aa5fd15b/photobg.jpg', N'/Content/Images/17873278-ce3b-491c-be88-fdb6aa5fd15b/photo1.jpg', N'/Content/Images/17873278-ce3b-491c-be88-fdb6aa5fd15b/photo2.jpg', N'/Content/Images/17873278-ce3b-491c-be88-fdb6aa5fd15b/photo3.jpg', N'/Content/Images/17873278-ce3b-491c-be88-fdb6aa5fd15b/photo4.jpg', N'/Content/Images/17873278-ce3b-491c-be88-fdb6aa5fd15b/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:28:11.2075688' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'1967cf3f-4ba8-4e57-9cf9-1b9130786b7b', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Dr Teal''s Glow & Radiance with Vitamin C & Citrus Essential Oils Body Lotion ', N'Lotion', N' About this item
Dr. Teal''s Pure Epsom Salt body lotion delivers the perfect blend for complete skin care
Achieve glowing and youthful skin from the effects of Vitamin C
Benefit from the uplifting of your spirits that citrus essential oils provide
The perfectly formulated blend of aloe vera, shea butter and Vitamin E will hydrate and moisturize your skin
Comes as a pack of two 18 ounce bottles', N'/Content/Images/1967cf3f-4ba8-4e57-9cf9-1b9130786b7b/photobg.jpg', N'/Content/Images/1967cf3f-4ba8-4e57-9cf9-1b9130786b7b/photo1.jpg', N'/Content/Images/1967cf3f-4ba8-4e57-9cf9-1b9130786b7b/photo2.jpg', N'/Content/Images/1967cf3f-4ba8-4e57-9cf9-1b9130786b7b/photo3.jpg', N'/Content/Images/1967cf3f-4ba8-4e57-9cf9-1b9130786b7b/photo4.jpg', N'/Content/Images/1967cf3f-4ba8-4e57-9cf9-1b9130786b7b/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(6500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-09T13:18:10.9579553' AS DateTime2), N'Dr Teal''s', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'1a341af9-5554-4235-8a75-613b886d2fa5', N'4600be22-6eef-4827-bdd9-551268615f47', N'Plantain', N'Food', N' Plantain
From 1000 to 7000', N'/Content/Images/1a341af9-5554-4235-8a75-613b886d2fa5/photobg.jpeg', N'/Content/Images/1a341af9-5554-4235-8a75-613b886d2fa5/photo1.jpeg', N'/Content/Images/1a341af9-5554-4235-8a75-613b886d2fa5/photo2.jpeg', N'/Content/Images/1a341af9-5554-4235-8a75-613b886d2fa5/photo3.jpeg', N'/Content/Images/1a341af9-5554-4235-8a75-613b886d2fa5/photo4.jpeg', N'/Content/Images/1a341af9-5554-4235-8a75-613b886d2fa5/photo5.jpeg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-16T10:05:20.7386232' AS DateTime2), N'Food', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'226b7bfe-29f0-479b-bbc7-aa404dac51bc', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Golden sella basmati rice ', N'Food', N'<p>Golden sella basmati rice&nbsp;<br></p>', N'/Content/Images/226b7bfe-29f0-479b-bbc7-aa404dac51bc/photobg.jpeg', N'/Content/Images/226b7bfe-29f0-479b-bbc7-aa404dac51bc/photo1.jpeg', N'/Content/Images/226b7bfe-29f0-479b-bbc7-aa404dac51bc/photo2.jpeg', N'/Content/Images/226b7bfe-29f0-479b-bbc7-aa404dac51bc/photo3.jpeg', N'/Content/Images/226b7bfe-29f0-479b-bbc7-aa404dac51bc/photo4.jpeg', N'/Content/Images/226b7bfe-29f0-479b-bbc7-aa404dac51bc/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(14000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-04-23T17:03:51.9695319' AS DateTime2), N'Food', N'Food', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'25dc3b02-008e-48b9-9ed6-7dfd7153b753', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Goat meat 1 kl 3500', N'Meat', N'Goat meat 1 kl  ', N'/Content/Images/25dc3b02-008e-48b9-9ed6-7dfd7153b753/photobg.jpg', N'/Content/Images/25dc3b02-008e-48b9-9ed6-7dfd7153b753/photo1.jpg', N'/Content/Images/25dc3b02-008e-48b9-9ed6-7dfd7153b753/photo2.jpg', N'/Content/Images/25dc3b02-008e-48b9-9ed6-7dfd7153b753/photo3.jpg', N'/Content/Images/25dc3b02-008e-48b9-9ed6-7dfd7153b753/photo4.jpg', N'/Content/Images/25dc3b02-008e-48b9-9ed6-7dfd7153b753/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T09:38:08.1570400' AS DateTime2), N'Meat', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'26e0534c-e67f-4dc7-b21a-aa90b7f377bc', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Vaseline Cocoa Radiant Body Oil ', N'oil', N' Vaseline Total Moisture Cocoa Radiant vitalizing body gel oil leaves your skin feeling healthy and glowing. Our rich feel formula with pure cocoa butter, used after bathing, replenishes skin and locks in moisture for naturally glowing skin.Keeping skin amazing.Body OilUnileverActive Ingredients:Mineral Oil; Hydrogenated Styrene/Butadiene Copolymer; Bertholletia Excelsa Seed Oil (Brazil Nut); Prunus Amygdalus Dulcis Oil (Sweet Almond); FragranceUses:When skin is healthy and hydrated, light reflects off the rich color below the surface, giving it an amazing natural glow. But daily showers strip natural, protecting oils from skin allowing essential moisture to evaporate. Used after bathing, replenishes skin and locks in moisture for naturally radiant skin. Brazilian nut oil - rich in essential nutrients known to boost skin''s moisture barrier. Almond oil - naturally high in minerals and known antioxidants.', N'/Content/Images/26e0534c-e67f-4dc7-b21a-aa90b7f377bc/photobg.jpg', N'/Content/Images/26e0534c-e67f-4dc7-b21a-aa90b7f377bc/photo1.jpg', N'/Content/Images/26e0534c-e67f-4dc7-b21a-aa90b7f377bc/photo2.jpg', N'/Content/Images/26e0534c-e67f-4dc7-b21a-aa90b7f377bc/photo3.jpg', N'/Content/Images/26e0534c-e67f-4dc7-b21a-aa90b7f377bc/photo4.jpg', N'/Content/Images/26e0534c-e67f-4dc7-b21a-aa90b7f377bc/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7000.00 AS Decimal(18, 2)), 0, NULL, 70, CAST(N'2023-08-10T10:09:20.5032885' AS DateTime2), N'Vaseline Cocoa Radiant Body Oil ', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'294406e1-50f4-4f6c-a833-e159c3787143', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Dill seed 200grm ', N'Herbs&Spices', N'Dill seed 200grm  
', N'/Content/Images/294406e1-50f4-4f6c-a833-e159c3787143/photobg.png', N'/Content/Images/294406e1-50f4-4f6c-a833-e159c3787143/photo1.png', N'/Content/Images/294406e1-50f4-4f6c-a833-e159c3787143/photo2.png', N'/Content/Images/294406e1-50f4-4f6c-a833-e159c3787143/photo3.png', N'/Content/Images/294406e1-50f4-4f6c-a833-e159c3787143/photo4.png', N'/Content/Images/294406e1-50f4-4f6c-a833-e159c3787143/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 60, CAST(N'2023-08-28T12:21:57.9221401' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'2a25c048-b33a-4b99-84f2-72f9ef0b715f', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Huggies Jumbo', N'Baby', N'<p>Diapers</p>', N'/Content/Images/2a25c048-b33a-4b99-84f2-72f9ef0b715f/photobg.png', N'/Content/Images/2a25c048-b33a-4b99-84f2-72f9ef0b715f/photo1.png', N'/Content/Images/2a25c048-b33a-4b99-84f2-72f9ef0b715f/photo2.png', N'/Content/Images/2a25c048-b33a-4b99-84f2-72f9ef0b715f/photo3.png', N'/Content/Images/2a25c048-b33a-4b99-84f2-72f9ef0b715f/photo4.png', N'/Content/Images/2a25c048-b33a-4b99-84f2-72f9ef0b715f/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5900.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-04-27T13:53:38.3437790' AS DateTime2), N'Huggies', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'2a8c47fb-29f9-4ad8-bbe8-b26f571f57e1', N'4600be22-6eef-4827-bdd9-551268615f47', N'Sweet Potatoes', N'Food', N'Sweet Potatoes', N'/Content/Images/2a8c47fb-29f9-4ad8-bbe8-b26f571f57e1/photobg.webp', N'/Content/Images/2a8c47fb-29f9-4ad8-bbe8-b26f571f57e1/photo1.webp', N'/Content/Images/2a8c47fb-29f9-4ad8-bbe8-b26f571f57e1/photo2.webp', N'/Content/Images/2a8c47fb-29f9-4ad8-bbe8-b26f571f57e1/photo3.webp', N'/Content/Images/2a8c47fb-29f9-4ad8-bbe8-b26f571f57e1/photo4.webp', N'/Content/Images/2a8c47fb-29f9-4ad8-bbe8-b26f571f57e1/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 100, CAST(N'2023-08-16T10:19:54.6592449' AS DateTime2), N'Food', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'2a8d280e-b4b9-4cc3-bf11-afe254e31f16', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Chamomile 200grm  ', N'Herbs&Spices', N'Chamomile 200grm 
', N'/Content/Images/2a8d280e-b4b9-4cc3-bf11-afe254e31f16/photobg.png', N'/Content/Images/2a8d280e-b4b9-4cc3-bf11-afe254e31f16/photo1.png', N'/Content/Images/2a8d280e-b4b9-4cc3-bf11-afe254e31f16/photo2.png', N'/Content/Images/2a8d280e-b4b9-4cc3-bf11-afe254e31f16/photo3.png', N'/Content/Images/2a8d280e-b4b9-4cc3-bf11-afe254e31f16/photo4.png', N'/Content/Images/2a8d280e-b4b9-4cc3-bf11-afe254e31f16/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T11:53:23.9731229' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'2aa41316-0910-414e-b318-7f6d70e35cab', N'156dfadb-828f-468a-9389-20f417e68d7f', N'Luxury Chair ', N'Chair', N'<p><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAYGBgYHBgcICAcKCwoLCg8ODAwODxYQERAREBYiFRkVFRkVIh4kHhweJB42KiYmKjY+NDI0PkxERExfWl98fKcBBgYGBgcGBwgIBwoLCgsKDw4MDA4PFhAREBEQFiIVGRUVGRUiHiQeHB4kHjYqJiYqNj40MjQ+TERETF9aX3x8p//CABEIBQADwAMBIgACEQEDEQH/xAAxAAEBAQEBAQEAAAAAAAAAAAAAAQIDBAUGAQEBAQEBAQAAAAAAAAAAAAAAAQIDBAX/2gAMAwEAAhADEAAAAvtCQBZk2lAAAAAAAAFlApLAIWUAAAELAAAALABZSLAAFABAEsAEsAAAAEsAAEAAAAAAgqAAAAQAAAA6gASiagqUAACggAAAKsCoLCAKAAAFASxAAUAAAsAQFLAEASwAAgAUABABAVKSALAAABLAAAABKIsAAAOoAAAFgWCpQAAAAAWhCoAhYKlACVQABCggFACKAIAAAABLAABAAAAQAQFAiiKIogQAQAAAAAiwAAA6gAUEohSKIsBQAAAKCAAABQAAFAAAlCUAAAAAAIogABAABLAAACLAAAAABAABEoiwAAAEFgAAA6gAWCoKAAKACAoAAIAAABagWUAAAAAAAAAAAAASiCAIABLKAAAELAAAAAAgAARLAAAAACLAADqAAUAJQAAKAAAACUAEAAqFFAAAAAAAAAAgmc3bjjlr0vLnN9jxq9bzb3nsjpAsAEFgAAEoAAAAABKIAACFIAAAACBAOoCwFAAAAAAoAAUgAgAAAFAWCglAlAAAAAiZzy8fTWJnydLhm3UzNNMStucPV1jMusNzrrhe+ezlvvjQ6ZASiUAEsoAAAACLAAACAAAAixAAOoAKlJQAAAACgAAAAgAAAFAFEoEKAAACWUc9cfNuYY+f2YZ0uU0ZkrUhbrj3PWOUIqyKszuzW+bpOuuDpn0OG+2ejF650TUoEsAAIqoAAAACAAAAQQFA6hFlIoAAAACgAABVggAEKICyxQAKAgqUEKgACMcd8/md8Y1zxqYZ2ubCQtpg5e/5P2zdjjEsGaq2QqKqC3NKkTeuV6Tvrx9e+e7jemerGuuaNQBKIsoAQsAAAACAABOoFgoAAAAoAAABRQgQBAUEBRQAQWAAAAIS88a589Y+V3xz1jaYTZEKlVL56v1fmfTw0jmJEtlEsoAAQELjStEKitXCzprldztrzuufQ467Y6Je2QAIogoAAgqAsAOqxBQAAAAKACAoCpSKlgLFIsFgAWCoLAAAAACHDt5/J0zz3z8fXPPWNpm40JVAnl7+bb6Xq4duCoyZSugghLCqlIAlMdMaoIChCpQSqczp0w3nreLpPQ89657ueuudDpkAACKqAA6hKlAAAoAAAIACiiUlSiAAAAAAAAAAACMcOnL5vfPPXPnrONY2mLKBUZOV5ero9nXnrzLJkrO62MiBYssCwVNczdlQQoEAAKzrHQsAKCyoNa5uk7a817Y9DlrtndxdzULAAOosWUAACgAABSLIUAAUAQAALAAAAAAABLjF4898/lejGNc9M41jSQqhZ5+/l2nt8/qPTczgZmaenyek1c3JYALINZCa5dK1YksCwFgWBjWa3pIAEFlpLKSyqhLUFkrpri6Z9N8ztn0zlvtn0DpigAAACgAAKgssihUoEAABSAAAAAAACHHr5/J0zz1z8fXPLfPaZZ0BbLDHk9Pl6z1enzevneubnmxzc9Ht+X9Cu9zeSxCpCsyri8NPT0xvKwhYKgWAkKx2qVJKlAAESgM9M7qSwhKsQskrXOd7PePp+ZZQAAAAKAACAKFILAWUQAAALAAAACAOfDfL5fozjXPNxjWds5s0FlS5OHC9e09Pr8/p891LMufm9XPS7nTI7YyxLmpGaZY03w3y2+hrnviqCoEStZYNpiunTG8gKgqEqQsSmdQ6wJLCSyhkuJ6qoPWPq+UoEKAKAAAWIKEoiwBQLAAqAAAAAAAIY3x5a589Y+b3xz6cts5udMpbVlhz6ca8nq83r6T1ejj381SyM53DfSWAiZ1K5c+8ryY9XDbyzv7N3n1xrlLYgkq5ZrWGTrxnXTvY5qlJQIESrJDWufYiyRmykZtR3i2xED2D6/lWUSgKAAAAWIoAEogUAUihKIoiiLAAAAIeXv5/F1xjfPzdM41jTONY0lltWWJ5+/k2ns8/rPR1xvzksJZs2TKwISySy3PLrmuXW95c7JMc+0PPn0404TpyrLPPdez53vr0JeMEKkKmasmarOa7ds3BLkRmmWK6erz98hEhK9w+v5RaAAACAAACiWFsolAQsUiwqUAAEAAAAjjy1j5Xoxy3iXONY2zjWdBVWJc+P1+HpPV7PL7MO2o4kuR25dYEiwSCsrLZKNdDJLBEpAznUrh4/fy6XrXXDN6YzJEqySrmZqzObXXzeuutl5xEJi50nPUt9mznESxGdPoD63lWCoqpQICgAgAAFAqUSgAgWUAILALAAIZ1y5a5c94+Z3xz1jbONY0xLNW2CyxeXj65659ns83q4XY5kkOupYIQQsQsKlm5dohBJLKEVnUrFujWzIQmNq4c/TnTyz0ctXljXHZ7uHaO1XlJm5qY1ztz14eyu0OcRnUmNc6+qPreUAUCggKACFgAAAUVLAACpQCAWCgQAieftx8PXPPePL058989s8942yLbYLjWDw+jy+3tPV6OXXy2xIMbOyXIRBASrEHXn0ggIKgQEtWdMdASLEpEJLKzjeK4Na3d6vXDLeJM5uazz3y1Z9HyeuAxmZudM89Y0+uPq+VYKgqUACgAgAAACwUAACpQCKIoiwqAI5c7n5Pozz1zlxz3z2zjWNpZVUHDr49Ofv8AL7NT09MXz24YL18ntNWMKkSkpELJLeus2SxIoEKIKJd6gIRARLYQmdZrn6OfpJUyZZqc94t58+k3fX0OWZLLM51isYs2+wPqeUABYKloIAAAAABQAAAAKgWUlgAAc9+by9LjWfB1xjfLTPPWNsZ1jRZbQjPg9vg6z1ezxe3F7JOScrz0e/53vjojmqC5SxJFM7rsjKpUASwEW2aNEkEBBLLUQho3uyJEJlmpm41c+jy/QKMSZubJz1z0znWdvtD6flAAqCpQAAAAAAFAAAAWCwAKgqITPLhu35PzuOv0nL8vO2P0Xn+K2+zPi2z7Gfm+vl09DjvjvpJM65+fXTrO/p5+nhefP1Yy8fH243b26Z5y2MiSrlmmWKvbyew6IwqCxCpCs2r059IpJBAS1AgHTHUsZhm5qZZtmNctOvt49sxDMmbnTPLeNJjWdT7Y+n5gAKlBCgIKAAAFAAAAAqUEKgM44a3jl8Xhr6nwPPj38ejnrvz1JCLF3i7TG8yt5tjr6vn649Onr8Xp83o+h349/DtLM3jd9a59qyxjrDg7c6553y0zlnSe3zd46XNwqCxAzDTGq6b57ypCwEQsgXNrfTGoZuSZuambi3OXbV9Y5ZS5smNYrON40ymtz7I+l5gAAFgqCoKAAAAAFAAAEzbM5829ZmfLu+K/m++OnC7+r5uV7TU5zqOOunMrGyrbJFI1gsWDOl7fe/NdvL1/QPldPB6Podsa8+7EkIESpNZtxz65t78dajDtiTKSrlKSZrW+WjtvOsqiLEESiQtzo7Ehm5My5tnPWNXH0PD9FA5yS5szm40mNZ0hOmftWPoeegAAAAqUAAAABQBIrM4b1MTzb1nM4a1nMjWc+fT43nzPt+TUk6Z1Mw3eQ6b4q7ZaRbmzURLYWS0malubIk1iX2fc/MdfL1/TT5H0Pn9+8jloloFm8eiIMrIpz6Zrhz9WK8s78d2XXarrN5zSIS5pGaskXXTh6DcTMZuambm2cunLV9PqzrnlLImdZsxnWdMY1ncudZ9PP7Y9XJYKgoAAAAKFAAJnlrc5zza3nM8295zM3Uzk3nObdYmLNfM9n5/185Jfpec1rUmpqy75a1nWNQ4ztjOrrnqzd501FIBLCLJctSXBrNzrnZfrfR/N9PJ1/RMa+f3tiN9MWKkioCKksXHPtm3rnImuiTld5M5sqZubbi4016/H641ExJnWbc5uNXO+XsruOWYRJnWNJjXPTKXcyPbx+2OuQASoKQoAUBZOd1MTzb1mTz7sk53UzDUyLmS2zMq4nLU3zzz24fK9ni+h57vN9HO3LU0xSsVOk52tudXolQqwozUNSColTWTJMazZrNms6NfU+Q56/T35H1/m+joy461IKgqFAi7GiIQSwc9yuWO2NXz8Om+l5fQ59MTUZyZZpz1y1X0vJ68yyzERLJm4rONY2hO2Fl9fL7jnvUTQysAoBYKznhrcxPL01MThrcxDczDUkLJK1nMrUzm2zGbNcpz2vFz6Z83m7+f28NI64tilXUXVsms2zWbTlOmZVxTTI0yNzA2zSpYmN5mszecUyC2M/R8LOv1Ly+n5Pp0zc2pYAWVXTGosQsQQGbKmdYt8vadtp11rnOOe/O3lnfLScemtX2bs45sCZubMzWNM89Z2uNT1cll7Y+rYs1vhuurGijNkmfPveZnzb1nM53WUEijI1JFrMqyZLmTUSZq4vPSc7z6Scrz6Z5cO/D0cqk641rG9S2LLcq1M1Nsqrml6MbsqiAhIsRbc0u8SNcu3HOrMyNs03IN/b+Fnjv8AU3xez5no0zc23Ni2F1rKKgRKsQsQiq5+nHSEZLi5tnPXLTl7PH9QSzlEsplnUmNY0xDciX28bZdT62bqzKTN3MPH03I8+7JI1mSkk0rIMw0zF1JKuZC5Zsskq5TSc9Y1Mc9c+kxz3z6THDvw7c5c6641c2zTKzUiqzDUvQ5O8s4a3mNXna3JDUaM61k1mZi3ULneTM3mXJc00Oe5mOv6D839Ty9fqXj08HfbKNM6XoiQgEWxAKLTpLmGUJGbc8d8Ol9XszrlkMmbKzjWdTGNc9hOuZZfZxtlPrRLLi4+d2Z05bs5bNSRLmymbmjK2yAgRBLmpEsRmrlNJi41OeNc+kzz3jpnHLrz6Z56zrrzpLKitRadM3WdMrNXNGd4Gdpc6CpCxkdZUkDeNYWyyJjbNxqWXUxSavPN+36PifV8Ho9V464b6b49s3bKSoWwCAlL059ISQZS1zvPTOuH0dOtOElikuaznWLMct53LjWfVil781lPpumI5TL5ffbBdZKlkNSSkuREqywSwSKmbKksqZ1myRKzjfPU58946zPPpjcxnWdZ5NZ7c6NSFS2WrY1FzS2BmwXA6a41Okgaz0rWbmyXPSGNZVLmFJWNWWZtiXFln0/ndue/qa4vD6PZ28np5N3Fy0iVEqyC3I6aiGbkZmbXHXHpev0Ofo5ZzdMMzUrM1is468dTlZdzMPdxtl1KD7HPtiPGzPmejTNFlokDNGJupUCZLEqxCRKRKZssmbnSY1jTnjfPpmY1ncxNZ1M8+vPeMk6Z1qLKhLc2lnc4ySlukUsqypndCwJCdMU1kIlhFlSombZXPVlzrnqPqc+WvJ6fX7Pn+njr13F4tyRbELJF2zo7SMyZubc41y2zvn9Q3qXhEok1lMpNJ5+3DaGe2BfZyoqlj6rQ8GN4+Z6AFlAJm5rUzaVIZ1KhCCpLCSzSZ1myY1mpz3jc551nbOdZ1M53nWcTU1ODWevPaLBDTNq6wG11CE1cWtSQskjpMK2g2qySyIlllzSoizWVuNSWS2PR6fB7fP2vV08/Tt183XlerLN1mZLM51d+nyezKxMyZ1m3HLpdO/qmuMUyiyyZ1is41z2nKzcZT187Tri2Wgj7DUs8PLty+b6YsyjQzVMyys6mK3JCxSAkspEEZ0kSmNZ1Jm50xjWdyY1NTMudSZ1nUzz6Y3iDWbCyyUupaty1LAqUJIam7M2qiizOiIiazRLJasCUliJUlfT+Z9Dj09Hbh08nbtc9Odk7azfLn0cNXHJOl9Hr8fr5TUTCZuKx9Dl6cxqXnAJLmpjWNHLXPcwTpM2X3clEpQD7SLPL5/T5vnegMaAysRCpm4pc6qxIsFSypEsY1KzLKmdZ0znWdTnnWdyZudSZ1jUmbnUmbnWSNYsKalpYsoLAICbstizWuarJI1lolsJpIRF3LCXNhNZNY6Yle7w+3j09O8a8vbr049Od73lvF1y6YXydXfbPbeuc553zJrHtlu5rnkISwmbmpi52xi46Rm59GFPRzalAKD7c1NTy+X2eT5/eWXjuoGNSsyyySSozaoLBUCSypLLJnWamdZ0zjfPUxmzpJi51Ji41lmNZjeznnvmzhTWaKWLLYAIapSxYBC5I3rN1N5kq5TNTUjcglzsRJbki+7wfR5dOu+evL23vnrN7a5bxemUlerl3yEzEU31awWWRAkuaZuazz3jbnLnpMw93FqWxZRZQD7lNTh4vofP8XaXLzdNXNGNZrGdZsk1nSRk0lUAQkspEqS51Jm50zz3y3JljeWJjeWd9LOe+mpeeum8XnrtvL5/m+75t5+W1nvzChCpbLqKWEsFJBqUqEpCJV0gsZjVzRFhLJX0vnfQ5dN6xrz9t6xqOmuesXpJqX0dOHXnNRMtdp0yaMxASwkuamdY0zz1jbOOnH0YpfXyWUWUWIor7qWzPzvp/N8vXA8fVNDM3K543jUzEpjWa1ZVCEuaS5pEqZuNRi40nLXDpm85vpjn16bl5666xeXTp0w5b7axee+m+bnraPD8T9R8X1Y8MufVyqUtiqLKgQEotgsQtzTNCgQipQhaI37fP6OHbesa5dN3NjesXN3vnrLtvjvDt35+jkblxAJKJLKmbmpm40zjU3Mc693JZemVlFlFlAPtyWy+H3ePz74yzw9wJNSsY6c7MSzSS5q6xosslRKY1jS5uLGWNHJy6Zme/XU49OusXlvp0w5b69MXlvp0w5b3cstSMyqznea+P879P5PVz+HfV5fTzE1KQ1IoCpQBKEsFAUiC3NgC6fT578+/Rz4ds3NXdzZd3Ny3cWOvo5fS4rpeMLIEBKZuRm50zjWNMS465xT3cVlqpRZQC2D7arL5fV5uWvLNZ+d6ICSjGOnPTE1nUkWsb59AFkuamLNJm89ScW955d+m4xre8XGunTDn03vFxvdzM2ok1DLUJNDGema58+uNzy/N+t5O+flTrz9nKBApKACwAAAoJYFUlnuzrt2zvx+i6ms1y7WPG9nPTjWNN9eX18N9l8kUiLCAksqS5qZudM89Y2ct8/TzpfTzAoKlFgoPuyrJx7883xY1n5fpSwk1Cc940553jUlKxvG1SwmWaZvDcc99tTG97yxvW8XO99MMb3rLOtMstQikiwSwk0rOdwxnpjTlx9WNT53h+v4/TnwY9XPvjzumNZgsCgBCgAsAUa79+e8+jPTz9rvO8aupcqWFJWN+mTPta4xTIBEEuasQkSpi89sy53MZr3cVl3AKCpQCg+41mwQ+fnry+X6YM1EGNY0xnWNArGs6GbKzmctRd70m7vDPTXTDHTW8M7usJaIsE0MtQk1Eiqy1CZ1DM3KxNyuXH1Svm+X7HHtn4+Ppef0Z8WfZnc8efZy1ng6Y1JQKIojp2l8/r6b5bztvlttrGmms1VhSUvWL7prlkMAKgSwhKZsrMuKcNZ2vPWOuc093FQWUAqUFAPuy5sJTy8PT5vm+jMs56SypnWKxjWdArNypyk1M9dbM730wx03vDHTWsM60yKIoiiKJKIsIqsqJKMtSszQxOkMZ6Szjw9mdPm8/qcus+dn3c+jx59cs8j1zTyvSPNrvY5a6al5a6M3OtWWW6yltllrIux75vkUxIoiwSykgsSpLKmNctOcrUzjWfVzWX0YAUAKACoPupqyNDzeX3ePw9uU1PP0mdZqY1jTEs0hKzx3jUnfXeOXbrvkxvWsM6tyloFiKIoiiKIsEspKJNDKiTUqTQzNDM0MzSs56Q5Y7q8uPZNTxZ9s08U9ua8l9KvNe6Xg7Dm6VcOiMXaM3SJ7c9sFlxAAISrIIZqxBm50nHpy1EZ2kPdxo1BSUAKlAFlPupbJQng+l83ydeedZ8nVLms41jTOdZ0Y1xrn7J6kdG+JqWFiNIi2UCKAUAiiLCKICKqKICKMqMtQkqooy1CLKk0MtDE6QxOg5ui3m6I5tq5tjHWemBcRQSwAksqS5pAkSmbNOeU1JjWO2RfZyAqUAVCgWCg+6ixrGY6eD18OG/PnWfD3mbKzjfPTMudJw7c9PodJeCiTVxTVzqFgtlhYLYi2CgELAAAiiACkogIsJLAqkokoiiAiiBQIsAJZ2NalkUgBAIJLmkqszWakuanPfLRnWdTONZ9XOjvhZRZRYKlAACw+7ESXcJ5/Tw568uOnP53eZ1m3PPpjTGdZ0xZuvcs4FEILrI3c0tzYtzYtzSoNIKkNMbAgAKAggKiwAiiSiCosAEogEpZKIBLTXaWKJFhUEQqAkSiKRCZ1z0zjWdRm40zY9/GixYSgWUJSpQAD7rUFlqcusjwcuvP5fpxLFzjeNMZ1nTn34eivWOBACykFg0zTdwjoyjSDTNLFJqWKgqCkAAAEsAEogAJNDKyiwixYBKIgvbPWKJDGLeucUjrmzDcMTpK556yue8866TGa6crzsM6qY1jtmj18gBQAEWCgAoPusDaWrnUPFy78fm+jnnWcaznWNM43jTn6PP6T1DiixAoAlEsJqDVwOl506Mo3IjVyNM00zYqUAEKgqAQLKCAEACC1LBAQJZ2OlmI3xdTO5CzMNZksrErUzK3MDTErWE0zy6ctTe805ZPZy1rnrpnbFNRQmiAWCpQEWD9DnVrhd8zd5aOPn9Pm8PblnWeHTGdZ0xnedMenz+o7yziSyxKCUAgACKsUazI6XmOrGo0gtiLcjSIqCpaEAAEsKgEikAVCoQIL6eW4Ybq5SEkq4ZrWZmtTKtTIsksskqySpG9S43z6Zxpr1chk1ILcDpedraAoiwAoT9BeHamdYDPQ8vH3/P8fXnjpz83WZ1ms46c9Meryeuu8OJLLEogACCwoQtgsADTI3eezVxctXI0ZjSUWCyUsCxRAAgLBRBAS5Bo7YaLGYRikmdLMqRKJCpKqRLCkspuLMw9nHLWNTOgLk0kNAA1rnTbNLNCLK+125WzrhyN6zR4vb5+G/Lz6Y8PbON5txnWNOft8XuOg5EspLAACBIKAqCgAAmoJvFN3nTd52Noi2QtgpI0logsIsACBYSkCdeXQ1pIkZGLjRm5pEqzKqgSkgqKDPWycOmPRjO2e/MzDpGTUg1ci3OwAAgtyOrno+5da1MTrgiUY3I8HL6Xg8XblnWeW843i3l9D531BDmQIsBChJLKAgKBYKhbFQBEKCagbxTdxY0lipRYKgpCoiwEstSwksLvHQ1m5iZuamLnRIpCpKJUKKQRLk1q895wufbx1YLjoOM7Q52Q0oagsmTpMU2zoymyWQ/R2XU1jcOc1k1M01Fjz+H605b+Lj6Hk8/Xy/S+d9DndZs5kCwUEEApKIAAhbAWC3IoQABNDNDTI3c2NM00zYqCoKQBUQZsrXbGomdYM43zqZs0EAoQLCLLFlMdefWuefJ6/TyZ1O+CaFyNZItzo5TsOa4CUWaCBvFLEP0U1nU1rns1jVOU3kVSAlsPneDfzuPb7r4v1fJrojnbAXNKliCksAAIFLAAQoKlALKSLCKALcU3M02yjVyNSUslEhYlruszM41hZi50gqACosEsARjVrfn7+TefN7/AD+j1c01OmYCy5LYLZYrOiLknPrDhrtyNTEO0lJOnM/S5XULSVSZ1gY0NJC+X0/ImvB5+nLHVrMT6fq8f1eDzI826lioWpURCgSwWFAAAAAWC2CwACwBAFzSsw3JbdZg3nIvbh6Y1m4xJm51cZ1mhKsAKhAEEqdcyzyzlPTz7duHfpnSNypUQVYNJQIsCSiaxRjoOGuwyyP0SXUWU0lM8+vMmkLLTz/C9/y+fXlLGprH29Y9+zXPj5va56+drvw8fao52oCC3NCUCCUAABQJYKBc0qUqCgiwiiSwRKqUS4rfs8nqwmNYiY1jSSKACiC5ECknQvDpy9HNNa9PPndwllTJDczS2VRCpDWsVLnSXOlMXeQDWbD7uOs1JrGjVzS895MUGNeCX53m68efbOdZs9H6TzejfK4qwZNZYOPL18vN05JPL1sIqUJSpQgoAhKEFAsABQJRYKgsACSypUJz3x09nfGuaY1kxm5qSqiygBESgYrXSctTBPfw1rBNpRLk1AxuiagmemVxqVKDdxsKlGSpozZD78s1nIJqZO8lXAHxvr+Hjv43P0+V0z9Ly/oumLY1zkYNZQTMLhgmZOelw8vXozeWqIqCoKlBQSAUAAlAABASqgtgsgRms8uuNX6edY4yYuamU0CksBEsQorO8dCePrz9nG2b64NQazSyiTWTRoAlQy1CwJqDW8VbnUjOoRNQ+8l3MqjMuS9eWzedF8nDvx8fWeHv5D6PXwX18/bnx1PVnhDs89rvnnDpjGRclQHTjnlr1XzdvL02y560yNpYsCoWoKlECoLAqAQAILIqpBm4qax1t9+NY4zHPedMkoWoEgCWmaN435+mOdu/bxzZSasGs00gtlM24LYNZzoALAom80qUkoWD7lk1LQzNQXNi9OPU8/y/tYzr8z2+zg+ffdmzyPVDzvRDz76WuE65OWevMjMKc11nNJYjp08zlv1XzdeG+2ueuWtIioNIlqUAAAAkohKsAQEMyzTn6/F9I641jixjWdISgpLEQFkqdJozw1n28Kl6ZlsFCpS0FgslJWTrjdMS5N51DCwusbGsU1J0MQj7c03KuS5sMlMdA6Y3k5Z3iMipNDOdo5zeVxjrzM8+uThz74OE6jjd5XM1DNQZqHo8sxr6F8Po82+zLlvbKNXI0hbc2AAEBLKlCASys5vKr9TyevJjWMMZs0yspBBKAZui535+uMpr2cZqDUDTNLZRZQpVzoY0TO8jpLTmozneSWUssHXjo6Y1I+1rHTcSjIJc6LEOkuDOLkzQsoksMTpmJnWTGdQ5TcXljtyM46ZOM3kkoy1FxNZBDp28ueevo35/q4b7s3jvTKNM00zY1IKgELCkg1lFnn7Z2+lpOCZuCZTRCosSLKLguyzHE93FTWRSWi2aJYALc2WgVbJnpku+fQnPpzLM0ssLGjBDdwX7upvWQMwM6A1k1Lk5zUJLTKwTWRnUM895jK05zpg58+uTnntmuOO+F8zrziSwmd5XE3kYdYTWR388zfffn9+HT0XGuOrc2XSWABCyQqWkuDn38f1rd5ueKZuKRKSrJLKFJJ0q8OnD0cpT087c6gtJZRZQoWaJSWLBrNLlLGg2xQ1TOOuDKC43kidF+5vz9dZ1KGbACxg640Oc1DICiSwy1DGOuDKoznoMTpzMy048++K447ZXhntzOayJx1omhctDM1IysJ15yX2dPn3lr6Lzd+G9IxqxAUllJjfOsfU8PuzZm5wmbKksqLEQpLk1pnec8uufdwxNypSLZTWdAg0Q1Yl1ZRKM1BNyud1lIhd9OI9EzpObUMyw59+XSXfr+T2zv7u/j+zePQNZ0gubkz1xsznWSUMNQzOmCpDWaJneYgMZ3CY6ZObQ5Z7Q8+e2V83Lvk4twwoQMxCwVKgtM0Ovo8U56+g8ffh06DloBy6867+nj1xZjWYhBCyEoCazuyYufXyo7YZ3iM3UCwoJZotkW3Oi0JUioNFqQJndMN4JvJOvK6MZ3hdW2OE3nHSdM8T6Xs+H6tZ+xnyeveNzFs1vNJjeSAzNQhBZomdZGdQjUjOOmRLCZ3DM1DHLtwXn10Tz49fG3z475OWenOMXQxdQyAVYlIqIo1143N9W/Fvjv0ZmuW+/Xj05WZuYsKRKsAQq8uuFzv28SgWMywIKlI3FXOigRoWQ1LIlQus2mAblJUNpDMz2jN1quLG8b53dl42Qvq8qz6/p+H6tZ+lrlvedc94QzozQzKM3WSLC51mIBLRmbM53DE151b3TnnplM8e/OufL08l457DhN5jMsJNU5NCTWVsoZ1ktzoudZLoj0ejwXhv2zl083WpIqAWkZsvKX28Nb53c6WUc+kjDpgKM3dGdRcqi2CwqykslWpY1lk3JokuTc0sznWV11kLEThPF6pu7z0luJqN+XtTlqDt7/ld6+3n5Xv1jvnedZzLAQqUk1DKwTUiWwy1CS8DPfPVYhM5UnLsrzY9fI5u3M8+fRF8k9HOOTcMLTk6DnKWLEk1C20A1jeJeepjl29vX51536Dz9+S3KHPWPVyw6OuM7wOu+XUZsLmgC3NNM6XLUiKJdQFqIioLkNpohEus5reQ2yLLyPHn1889fH6MY3PX28PozN1mVtmNY12OPXjk+j7/gejU+vPP31hCwg0gZ3kQAgvMxJ2JvOqc+/M5yjOmSyUnPqOeesOOOmTljvJfPn0ZOE64MTeSTUMroltMqJneJcY3nn2FL7fF7tc0q5mOmNRYLZY53oWSYO9wLcirojOklUIlqaI1DIBSppKlpncMywz04egZ1CY2PJzvOdOmOmprly9ObN4nK59xyjfp8+o0xqXFuF69fNE+t0+V6N59157uCyqljKwJScc91Vqyaxs0Dnx9ODjnpDnx9FGWzJo5TriM50Oc64OXP0ZXz8/Rg43UMKGs7JNQznpiXnnWefZQvt8fs3zTTWMNDCwus2NAkuFk7YidPN0PRLkmpLLZS5uS0lISwKtM25rSUmoGNc11bUzQoPL38nWa9HyPoeg+P6Xja+jPJpePp1xPXr5/sudnfNzz1iJNFuueU9Ht+duz675/t1jdixmxXnux0zuyLBbDdxosDE6DlNYNYtjnvVOU3DnrWTOeuDnntDz56xeWO+DhO2TlbC3Ohz6Zl443jl2WLOnr8vp3z0LmWWsLIuoNSQtwOvPRcZ3Ixpk6a407XOxLLImlKTNiNWAsJSrrNJJsIJnUKo8eO3Ka9F4j0ea9zx8Pq/HX6PHPWb8fH2arn3x57n09fF65HXml6pYxQnXnk+j6vkdNZ+lwz1uW4q6izWd4NZsN4sFzTolHLtyJZSzWSQiTUJnQw1DGeg4ztleXPvyOU6ZObeRjeZeON8+XaxLO/fl23zJLnZoxUEsLLC3MNWFMdoxNQzvOhdCMWt2E1JSSigmpSNZCQutDE2MWiKOHHWM7zx9fn1OrO44e/z+g8c7ei3zdPm7mvVvl7c35fb2+DWfR1+f0T1b4ajdslw78zluw16fOPp35vq3j0pdZ6c9ZLJoms6Eo3c6JjeDCioMtIytJLCTUMtZIQxjoXhnvk4uuTljtiXy8+vLl2k1LPR1munJNRLvGjWdZJmwoE1TNmjWd5MlJZRvA3AzdCMUqDTOiUKQmbV1NRLvmOmQxtD5neeib4ct6OXP0YOc9PCN9+Xaznw9nQ+T6unma32+b9Bd+H0eZd+rlxufb08Hpk6a8/WNM7ly0NTno6+752bPqvH694VLN3NKB057Ly6DkQbzoQjNAsMzcMwFlMNYGesXjz7Q5TrIx5vXPH28r18NJnWfVxus0tDaUxZTGrTnpQmzGoM7yLZTCQ1rGjVzSZ3Tjrpg05jqlJLInXl0WWLLmjO803Mjw9vL6c75a5dq7zlqMNc1z2vE9F8sufVvzeg8l9fA4a93has8foa1j25Z8fr5+Y9t8fsOmZcrLTPRgu+ez19vmdt5+heXXWK1kwtNa59CcuvIm4E3kTUhKIQk1DKiW5WamzDUM8+2I451jx9deX0+XTczr1c7rO0jUGro8+95DQznWS9M7JiwyoTcI3kw6QyU1LQDLeDnuyNedF9GsbEqyLTM3CNZPFfP3mp0591473wjpw92V4u/JW+Xdny99WzjOI6PR5zxdu3qrwX2/MmvTjz+xvydPX5rj2Y8fsT0cW8ue+PcjHSWzOjXs8Fs+xPm+vee6W5zvENyAsN3NGdQgIsjNCXUOd1FtmCiGdw8nj+v5c68W+/VPPr0a1PNr0Q43rKxdCY6bPM7ZOGt5iWUuaMOmCpomenMtlMgWDVlE1kRDnmdM3HTWK7Xzdq0sRJTNDweP3aXydxe2s5zr18vF6jpvz9U8/XXE9FnMnDr6Tnz489Tr6fT8Y9e/Po5eq8JZnz+lvh09PE5TrxufZvXOTqnKXtnn2iTGzRD1e35N1n6+fP6dZVLCwXGjWbktgSwgiyjM1hUUlaGnOLrNKqs0MzUJnQyomrTm3k4zrgxN5hSmN8zNg1JYrNLnQyoXUMtZLy6YJ0llCyc+lXHTOU6zHQyo//8QAAv/aAAwDAQACAAMAAAAhz/vDDDDT/wB//wCsFX+sMMMd/wD/AP8Af+vf/wC+LDXLX/8Axw18w3//AP8AvLPP/wCwx/8A/wD/AH//AM8sMNWt/wD/APXTX/wwwwgl/wD7777b/wC2vLXrD/uWqeLCT/3/AKw17/ww09//AP8A/wD/AP8AvvLTT/8A/wDkU3+8sMoIIYL6ILILzzzyhb4B77oJ68ILLLK8sf8AvDDD3/8Ay/8A+NPvPfsPf/3/AP8A/wDsMMIIIKKIIIAAADDzwTwBTzwDb6oIIJ76NPf/ADDHv/8A7/8A+88MMEENHX3/AP8A/wD46oIIIIIIIAAAAABD6L65TzzgRy44IIL7otf/APrDD3/7/wD+wywwwRffffvt/wD87oIIIIIIAAAIAwwTULXMe/8ArE88888IS+6C6++KCC/r/wB+wwwww0ffeff/AOt/764KIoIIAAO3NIDymEXDnHVOMNTzDDADQwIL76ILf/8A/wDy4www0/fffff/AP8A/wDvukhggAAKWSukF8h8/XrcpyzRQ1/z8fLMAAPPPgn/AKr+vMMMMd3333j77/P9b74I4oQzzuPRzNwWOnN28FTjfsCLHHNPQARzDAADzyv+8MMMM33332AIb/7/AO6CGu888+sLaM1o1KovTRBBHnT28t6m/wAcw87CADDNPN+wwww0ff8A30nL5ra76457zzzz+/kIQhHwTqTI9UmEsmsFUpCYf5jLHMMPDzz8sMMEFX3/AP8AcYkvvvvvvPPPPPf0lBG1m1JjFMhpVWNoxRT/APX/AC4RL4h0sT/K/rDDBFF153jDCCG++2+88888956o37rQ8Muvok4eSutRZlt5DXHrW0BnuPEU/DDDDB9NxNXCSG++6++88888/jKWPWXp6YfPFcqCtm8sKq+4lJBDf7QQgWe7/rDDDDV99/8AwjnqnvvvnPPPf+xpuiWw2xrDY1wLtZShAvLLPvBAT/e2e9ZywP8AMcMU132/NPf7574777zzzz/kKQijMecoAOgiIq3SWaxVNGQjAJBJTNESJFr+tMEEX328MNP77rJLLDTzzz9+EI+Ct0aACAZqGgmKFKSeARmS6SWGba4O637/AJBBBT//AP8AO5KIZrYoIATzz2mtsHFGqZwRTbYOuAxZIQqrSbfKCm77Fv1rI0D+80kP33//AP8AvikgjqgjHNPP6/ec4BeD9OikLdV2fiu9ZkLTjqhIJVMSVoHjdv8A/sENHH+//wD/AIlvvigvLAHP/wBvdsIVujbghoWf13um0ttKzYQaC9kb21dSsMpe88sMFH//AP8A/wB7774oLDDQ3s0H/W7M6OZp+4+VNB1cNk1IilsS6Wk807KrGOhP/wDvJDb737/++++++Mos89qzBDnozmacTVUqZqwcZxxEw1n34Or26P8A4wLXYB//AM8sMMMP/wD+++++uc8NPoqd8VcbOAw0i5DsUzPGqWmo0nnk660GR+DhLpdfD/8Ayxwzww89vvvvvihDfZ7S08A5D1RMyoYLDgM97PEriVtOPCqbAMZ7nFf8kA0//wC888MPff8Ae+++wwi3RZKdgYkU3oPokTrvkKW3GSnH4OW0Hr8DmatojtaavT3f/wDywww0/vv+KPQ8isCttAhlyuRl7dWS+YCsnJNgINTtJSiPSfws8s47897zww9//wAIIDA/sEchOX7AoWHEn6qo0SBgxA6V2/O2qLAO7t5MA8KypS+UobeDzM8dPb6orLMMsgh1gMqBrtlg7UKVW5X6qGGH900wzmyzJqqYgT0YVS2+j0ME9rTyw8ijFX3VmCk5on+qVH+oMpIJwSvjKE+RskteyZwD566uNi1vV6/Mhl/fnG55R9Pm3azLHfbwrsckOpu17EACdyTHxv8AOmDbvimqUUXl3dQVrW+FNVqD79PQdJtptEAaXHJZF80sqec9ONLNU0Ee6aB6CjLzf8pJiGhlxJiYjWaX6I/LFHcYjxFsIo+C/HQFm5ET39U9hDdyK2g/rUFTiBn3l+N84r7XLYdRisInzc7vFbGk2Y+UWSI4wzq3fQfdw3+wkA4sf/0B7IXoQFSkRrtC451dxO0ziEAxLVPXZuq40iwkO0CuuTCMHdk90EfpT8j/ADkcppALcJ3mu8pN1PXkC+jd7PM56r+1W8nt6+4cRwa4erFW3ajg7dS9zPiC7vt2FHG3iX9GKQc3+U4ajcJ6BsVWDbNwf8+Bc86dReS8TzPnTD37UDOnXchGAAi6tqLtXotFVAa1z4ULBq8bwxcQ/aN0vnxjDMyRwWwgLTWlEOz1eNLwIJNkmqY2bTb64Nh2cJuX36l8Xaqf13yDLp4/ngIwgkA/72UHqNR0M2WUiwrZ/rYw8P4rV+3FKw2duTb931sndUqy9QUBBI669pJDqHL0X+vpvjpQNCy/xOlBO9NrYJ2pFH56CBjE3oPuX0E7kI204xbNEaab1EvHuAAb3QLhICJXDjYFKVP/APR08bEv3WdaHFF9siBY8ER90q//ALZdsTYJpIoUA3uM037vPW6U3KTwgrKJPCMc2OO2M4Y6ySiyMOsaNVUdV6VzjFfBipjtdocEU5AwamDbPoEYgnjITMFtV3DjB6YrBR32+m+WHxwygWuF8njn79lIsOZVAIsAwoOUye3jKyOEyx0+UiwhFfdPE3oRvf8AeZQVWURSrBXZD/4ST9S7yFUaPJCPEpJRHDhJgvuKhDITb6BEJl4dX9aWr4YBVYntDCa5+lYELe96wxQdnmIJilmOluNTvrIngjPdvDZd0cIIHhqMGpOMl3+8PwOLxohOQJwbI+98XVcBG6SlolgtjjEcclDKON6NzT8W88vstnGMqlGWy3Fis2d6Wv3HJxwqzy/S5QmF7FQmovivqmIbvhvNHjwbfX4NgugMoonsACYa8/Z9hHD/ANvCImlosFcPEVIrAnxJYo6ZKYKG9kpoYS6ZPnuXuS64Kd/oLJ4xGmU/VFrK/MoKaK42XksvfLSxxBZbqoYpb7Yf9a8JByfaM8cGu77zypjoIAD8HWGNMnWVn1hqpCR+BtWE3ALT0SwK/OtstP8AXJtR+AghCe5V9M2GWc4+FME84IV6TqHz1lg8yuWbgeFF5RskT7sFMaCDvX/DzdxKSs4/ujxpJ3fOkseucOKAkOOG0TTfD4ccaoMuAGRp9LOAeisNF9sKmK/v4ZpFus05SNJJBLnNZ7dbdqs/rIk40UNnHCImqGES4QU4O/8AbBMO0ojoVcVMN9BCd0ppkXlcf/71RbXZfZQxB+4kmsmwfWBOhgrPlrCNPpB0WCG5ktjhvjs8wFJLPn3rL7hFFqu6c/TUUTSdYd5JNiDX344oENGKlIAnLk6dzfI7xjjuorkvn8uAE58WknHNtg9af97fGUX88x608YXxT09AivuMlOuGpsAXubQum09VFmgujqhNGX+vO2y0gx6SQ4zmsrow786184T1zVejmttPtDrBotSbCvGNHvjWNKDKDNPIBWbLFTzWea7VXa/tlrkmvEdcwTfd5UVThGfnKHoJFh0gYoGHJBjmrHBBMBMOIdWOJD7if7ETU17vkvnvpIHDLCQ710HAAByPhnqPK2TdU1NVFDFjirNJCJHnuMGJwFQCMjTQaaQ2852ivsquBAJMEjHoDtEGsoLG5fNoEDbbYBDIYugHGAmnvtJdc9zNDWRG2/QSQU82lnuoiLMFsjI6fEDslHJ07blJfXRYZVPdTQjqhq313lvTsBKELDeqhtzw3eR4gsiksptPICJVHGjIFNRxbue0w950UceTfTFg9/Y34ztPUFx+VaQMPqfx00wDCHDHAJIjnDBbimDuIeyRk0y54QRTface46TXdeccf6ym87+4fRbZKC+KjMfRmspDkmpGBpufTipiF36Vhd083ZSTTYVTZ66TXwPDeYVc9WfzjEnyWgJH/qxh5xKssnlIigL7HKNH5RcsWyw3TeaKGTQeZyw7X6HOadQWYXZf8zykmv29NCGsWDWQ3yZ2WXg4PimN9d0RC7xeYfZhkUQcTR90VPLFYbdaQfWRV++33SJzwqApwYL2UcdTyR1MJhk0cfDUOm0aacRmuvafbYbXfLVWQfcabcdbbb5zy+YHD3/OJppnTSVeaaUAGFI3XsdSFukTdZojstBfGDWYbmLoWTVRUfeRSR735w56qh728cCgoyQPv0YFMn5fpYjFg19cRKPJilEPJMWRKjknuDZUaZYWUVc94738i8BF76eaDOjkioK9+3Q2m7TW+fYaNHMICrmBMNEDgHJjlTsOaaXVdRz3x27OsyUNHz0/0FHNBFrUJruLqxbX19VXPonJWGggjsQAOT3pabQDnfZaQdc512VOxybQbKq7+3JXdfQQDD6RQ89+2eeUImumOgnli3dRfYwY2PcYfEjfTVXX438WTYWVeWRkr91WQSZ6OE0gSB0PDJOBaQmsrum3ZVVQRRqhXXSbZKgD9f3+3maQSTeUSb04xmj3+37yKFIeBDxXKm4qURUrz/xebaDUXUi31LjKL2MVd70OOdQzxeRU6/75w/hjh/uxrWV8RwwbVIlYQhfHf05xcaQXUWbiKtyTLjKKYedylaX8kBRWcT76w7ciplmjnVo+611ZaKrggvPSWQYZdffTSbhOrMJNun0tZRdsURV6LCYQff8AM8e8OphT5AHFfccNVFlWW21Hmm02HVzEmG1npX43daVzY9PeH07IE1mEXG2OMfN+88Qgc/hecdMenUk2lFl0XH0kXtoVUGFciSQU0KvyA1PiomXrRnn0F1WVcu/f+Ygi1fKwt/8Ar3PDTPdxN9zntPZKVNVJjAiY0pz/AB/YgIUSw0eXbFTZYVUTZ25yjEndA35lHLJJh5+x1yf7453ZzEKSeUVCHMfVahFLt1bvCXG/dRVjRWVeYX15pHJ7uLHDCIBJIpDGP2069/iQieKcWf/EAAL/2gAMAwEAAgADAAAAEL07www17wy//wCsFX+sM9Od/wBl93/h19oA1NF3XrD7/HPDf3zPT3PLjHrn/rBRjHjnLX/pXjfjddNf/DTjOCX9s8880980R1d9JtYoUI1ub/37XrX/AC+805zwwhwz777+57ww3+RTf7yxyoihAPIAMAPvvgllACjIBLHEzIMMskYTWcv6w5z09x/40685+wyx3f8A/wD/AOwwwiliooAADkqgsaAhivnggjtOFLAAiAHedSTaRbzYUcf7zgxwRR7SUQ08/wD46oIYKAAAAbrDhH1GsutNV0EYZJDCwwjgyFW0FVEGUEX3/scsN/3k200IItHc7gDDLYIAIb0s9XbiuYsGS45IXzqIILZCwRzigCQgClX/AH7DDLHftN9Z9vDVj08sAgMIADRyvZ1VlNLQqE/LJlOVtN5Di26sAsAcwxBB/wCy4zx/7wfbfffyxzzluEBADsy+C42c3XqhinT8YhPZwVDovDUjvgvrgCHSFN6cxzz+4RXfePvv831PPADCAw8dkgTUslsr6a7DA668Hn7AzahbRUTTsovolVbwy9/8QQXfYAht/v8A7gCSz/eENJhh1NtC4SmNX/cHLrfAUtackC6JnEE0DKLftMPfu0FN30nL5razywxj7fsEJmDwsoL1uhCyt0nknnMwbMW5VhcYMDwrHmP8scP32mHf/wBxia++MMce+/8AwQAg4Y6Kf5CslQKrWWknY81fQSr9vXAFg5XIt06wx3eeWed4wwghvFNPMv8A/FHjIaf7dTkq+HS2jIhYTc90OMWes7z1R/TR09IYNsN/0HFU1cJIb6hDzz/8M+0pYOMy/Mt2HnsBdIFRlLayzoidt/8AMGxz0CMRTrTP/wD6RRS/wjnqnvPPH/8APjKXI9/1IPKEgXMS+nm2trxDeUsAi0VHUuRod05fMdenGX2fNPf7pzwzzz/skEaNH2Oi9WPj6QXID/t+Wn3Qe2fiKDyA7N8RfUHetMHHnHG8MNP7zrBDDLf2nWqDpdT3/hbrA2WA/TCozlEOMUR46YyDuRW0NOPfkEFW8e//ADuSiEa0IMLH/tAXA28JQuyXokYkbFgxn0YaZ/cmV/WmF6G9jueoXvNp/BB3/wD/AL4hAAygE9/fmYFsM74XC63ghp2880KLP858KOKrNpYMdQfcyTcJfsH+01O9PfuBb7ggD+8N37d27DSdPdVDcDde0Oe1sV/Jaxij9MoQCuizvBmAc89+W0PPNf8Ac488IAzz1MtDLIO6hfGBdczvTvYd/wDydcpu+QISo8DIqK3Qoz1/7yV5xyRw0tOBDPDq7/fNiJmNtPk6o6F81EapBqXV8jN+b8lfvaf4DunzsOw/zy8/9/wQQADBNLH/AMw7F3uYPYVvVaEAOw4OIJhjRLCJH2gyceGI28FkH4lMPcscM9FU8oIQhDAgcjE8hfZk6kqMAR21FaSc1tnyC/Q+xBYsTnHcqjb0Qe1e9Pe898N0skOABCXjJWDsBD9tMN+aOylInMHN5T4FHTPvwjm2WECtogICpBY0UuPP9kUH20ATSTJTk8LfW9TRSdA4rsIaXLByF7xAe5mzbEEtA5Wze1wfq2Rm1P8A/Z19AU6E/XfTOf7+rMsgGdAwlF37b4hxr5dvplIMAzQ3RBlhOgBrCFd1YS9FFlIwjH5SOf8AtJ/fAIVG2jP2hdhRKCWzgUTPv4g+GaBkxfl3DhcPlx53UiHJ8LrMIF5LV+VdLyA/17sHdEmJeeGBfxP44xyDiwarNFkifID8NYghOzVAvvnGY5LBMAW2rLq5xbvTIjhvo4EOQ62NsU0mNEcezcxDsLJrM5/EN217C9tE6mpul4U6P79lCIw1La8EeXv6ZIGhclfpD15ZL8d81h+g75G4KRHi/da4gbFiMI9xnnW+6HmhtI6iTj0fZArklbRHmXLHUQUjusyrzJ0h9GjDQrOm5/8AzyV8Bbo8GqqySX2Qb5z5xOfiO7wlFu1qK/WmKcxMaitpI0w5+m7Vs/JPtiMGyIKTbobU9MmVPfvfMO56t3oQ2payV9KDm3PnB2zMu8cbOb9/5XXTCa8S0+HgfTxlYQLzsgzj5zbCIhdDNZUyPWpwSbkCJYiBbHLvYu1PWxAF5E5/5YNV1OqWEbo4IB40yfiqptPO0eqnRS1hy41LZUpa7bzuXwxb+74gnttjEOlRh4jaquvNx0qCLNM4sSwWuzy9ZJ1I+rOQWJak0HjEJaIP2jPehN8UzWdwTNl8Ic0DV+sts8haIedFrpBJ2W1cqjZPIcLZiO3tDYBViIcA/Zd3G/apFQti/wDWje2siLbdO6k3qGOPuVsuU31PG4+sO5Zt9kc4kBxODB3NTSBm/wA+Bt4yvu+zYqmVWgzx9IEhkRDBpSMDFwOQDxE1UIldNGSMb9ErNM+nAxM0WkXp8s+WG1+lY4TBI+39Yg9SbPOYTb+3Y4azRbd6bTZWEdU0UmA2ahK9RzcR8EJNCFa87f0nDjODBg5UCM2Z+CLda63oz+/oae99eKXZV3etWjrGtne2V6Vns20w+6Izd12ZVBcDda8aPVFYin31/wBu/wAHncnhSB6XbRPJBA0Z/NhYFJKv7PdWuyeitfaCs5CPYf3dVF8PQ3D/AG39xd1LazyjPGkm1D5KQlZXlE2YxQ7I1/8A5cYQTsis85zgbYVB0zapiHhqdCDAJmDuRxXkAJRYKFOSNcDFVNG9G5yh7InyVCqQZJCN1/VcNYHXZCoCFLJe0gDQzixvTrjYgiTx3jrqSKD3P8cV9nPWBjY1XwFpPWrhQVyO4T2e4iqeV8yx/L5hzzymxhSQKS5ldy4znv1kOEVOv2E5LyZrj23+gQNwMTAWrPE86as/S7Xn4rSY4wBA7/JyCZWheqL6D3eUVzyUsO+FhybZgrWlLM45MO028tmvxHXfZF7qaqJLqbbqKPlRrn4aNuDhzMH8Xm8/8km6iR6grTDKIObHXMYmr3FO4+MDOKbaseu9+Pd4j/ax78gj7WSxFFvX3nMrUNPXX61h8rv2HTsl3gEIDMtGTHB3zEx+pp8+v9e6DjNDR+4hc3VMD5kEHEFvvVN8EH/G65uszVunch6Jhev1bfBMKzjxgtyxoPcPRT8i7wgTVPu+1JgDqrDDEcYYFWVvkz8/5lm+7zyJY6QoWo+chr//ADcU0heNbTYmUeQIK5bZtvBWgAKKEuNkQl5VZQyfcEdXjK0mMq4qStKQKkPv3LPPr02Pvrnd7Kq+S4uIUn/BHrHTj+gS4Ph/J0eRJMsrnEg8SMI4PDwDwsEvPj/7TJBKlLPV7/g5oqoEhV39BjGDnFuasASKuYEDfM0z+G8CIUEWAO7sufjEEC3FZQVlk3B8yN0bdTuxFVPdZE8MEtJRRoc0ZLpXnMGFWMEYmKo2hiIF4oMb5m5XvTPv3/R4wNh+LjTFLdznB8g6WGw2lD5rbrNznbaHhUsmid2cD9iR4s8o6K9j37XXTL3yurwFQP2bK/Xt5AwuCiw6m2+SH9Z7Q06qPiykOMuz8+hKYlskAKGxH7zni0tnnr96pd1sHJ9t9/rHbySkAoaM0YiOeqPb6ksy0YdVDAIgZrHQ0kZu9zRzcqi8jOBEJLz0/VWRbbNNrfOeYkw62OQEtsV0ou6QiRzWIpniX7e/cDPNPAgo3r/yIj0wvhxh4D2xSfJzxL+GC+uiyq2yLg26oi40LvQ0MJg4QM+iZHHLUarf46zvCWypnfN4dgd9TAJXduu4UMeOyAqcm28W626blIpJloRv2iCzXrslv995qIpPP16amKgghl89Fe5lWVSwgawgk8WguoXueuu5DuA1Ois3rPrXLH/Zp/rv730B5B7VsT4WhM306tqMHVGNsKC66Sg+aqhkIgxF+9QdgQKr90Epn/TYYBDXDru1dlhqSIWP3CinuR7llsI9C1bFvddvegwkMmjiwZ8GMibhdeORhxHvFJv4zLOcW2cYckYP7T7lwmn4SHySMIka9vtNpfCcO5tKRZ9vqqXBZ2SuZR/nf7fot+O6KS8ww40ITDju5UhihGAaHgRd88qeV64Gs3CrObZD9S3VyeiyIFcGT7Xyj+GS22kkA0G8+aby6Dy3OjdzUiiAtOH82IQm9sFhxRHkQj5MwsqqgAMIPTI6EGJbMCoUIKK0I2yOlhUnkR2h3ro8+zPjdnXR1Y2cAwijdN0g4Y8ye44YA4nM7GKey0BcYkY02yOCcGMzxYZ2GKRKQ080yz+NvwBRuAW1Xh8vuAVIuGa+BEMXVw1VrIGJdAUc4qacHO7b5VB4HeJNaBxxYrza+KTnr9pfHJgqa2AK4Ku3hNb3L4zGlEro9UEwEc2tN58EU6LFNyHCRfT+ytZcdaoF+OhuywdhmWGuyLtRZJiubvWKdnlIFgrxP35cqiOawsUgXfbCXEcIM8dkxUV1EPADM31hViLzXlh1oTiO3pK5EeSk+HWDxWx9KYY2ugC7/lFdIBtEBgKtj7E6lbbQT67q58F/v/5V5Hev1RDPkf4Pm3N2AJsEakdTSackjV5hX4GFNXhFhu+Gd7rwejRuod9RBBVZ9DrTz3PT0uPRc3Gu53KxmYvPiiooqRNx1p4mjsrZmme6ZjLptxdPjxhdJt5w3r3P0keuH0Jxrda9sxVIz7OiW+lF7XX75BFOZx6K1YSK4THX/PLbriThxBXePzTePgjQ69XXqEB0IzyzhkVG6fPDVb7LN5MqprroaBCuCqEBw4y/DOYAynUAW622hE3hUwgempSQXD/ZzXb4brm+OU467RoK/wAma+N9RfcY2jhunZvEOhBQj7fgtm/TVQHWmHvIDsbf8loAxrsTZynCCI21FrVB5NnjCBvuT5RaalPPKO8XpQCVbv/EADoRAAIBAwIEAwcDAwMEAwEAAAABAgMEERIhBRAxUSBAQQYTIjAyYXEUUoEjUGJCkbEkM3KhFRY0gP/aAAgBAgEBPwD/APkmvfWtD/uVop9ir7RWUHiKlM/+y0fShIj7RUX1ozRR4zZVWlrcX/kKpBpNSTQmn/dG8I4tx+aqOjatYW0pjnOctUm236siiMTHJ15rZTlj8lDiVzR+irItvaGXStDK7ot+KWdfGmph9nsZ/uPtFfyt7eNKEsSqZ/2EskYZIwEuU9qU5fwZIsT2IzaKHFryjHTGo8dnuUfaG4TWuEZIo8ds6m08wZTvLWp9FaD/AJE0/wC2M4zdu5v6u/wwemP8FOOSEcIS5369zQpw9ZbsyITMiZqNQpNFvxC6o/RWki39oZLavDP3RT47Yz6uUfyijeW1b/t1Yv8AtPErhW9lWqZ3UWl+WbuTbZSiJc6cdc4x7s4m1+ocU8qKSXyUZMkako7p4KPEryl9NZ/h7lH2hrLCqU4y+62KHGrOq0m3B/cjOMknFpoz/ZPaq4ao0KC/1Nyf8EEU1shc7aG7qPpAuZOVWbffljkvDkyJmRM1EZFO8r01iFWSKXHL2HWSl+UUfaBN4q0v5RQ4nZ1to1Un2ewnn+w8cuPf8Rq7/DB6V/BBEFzSyVP6Vqo+st2T3k2JGPgb+VkyIzhIUhMTNXZlDiF1RxpqvHZlvx6fStBP7opcUsqi/wC6l+dincUKn0VYv+TPnL24Vva1qrf0xY5Oc3KXVvLIIjztYaqsexez1asDW5GBVjilH8vwJcpLEV4kNmRMTE9hSNQpZIzcejaLfid3Q2jUbXZ7lHj3RVaX5aKHELavhQqbv0fmvae6006Vuusnql+EQRBCXOzi1GcvsXT6iRSj0L2FONKmta1r/T9nzSFEpU9U/sk2yo8t+DHLpHwJifLImJiYmRk1vnD8y2km2cSund31WpnbOI/hEEQXNdSPwWv/AJFzPMxSKdXS0yrU1VJzb9TVkQiKKMMU6sv8cEuvJGBI0kvAvAmJiE8Cl5njVz+nsKsk/iktK/kissgiK501mSLl6Yxj+1FWWZPlkm8sQmRmynOL6k7uNGKhCOcrd/kk9+SQkKJp00pT7j8CRge3JCHLBrbIt+Z9qLnNWjQT+lan+WQREiPlaw1VoLuy9qfWyT35ZGIQiMsE6o5NsUiMl6kXF+pCm5PCReRhCgoqW+eaRgURR2ZN5kxCEittLAiPmG0k2y/uHcXter3m8fggREPlYx+OU/2xbL2WzHylyXgk+SERKFbRuVJ7tt5MiEiMSMCotNJ8kRQtiT1SbIoivMcZuf03D68k/iktK/kjuyCIIQxFvFQtakn1k8Iu5ZlywS8L8KY54HJvkmRkQlFlKMXu+iLqUHT+HuIRBFV6aTEQRFeY9qrrVWo26f0rU/5IFNEVyZFZZcf06NOH+OSs8yZgawm/Dgl4nyQhEHua/gayVZrohESCLqfxKPYREj5eclGLk+iWWX1w7m8rVX/qm8fgpopoiudrDXVivuX88ykSW4olWOmn+XySMCRgkY8L5YEuSJz25IgRwlknLVNyEQILy/tDxBUbd28JfHNb/ZCjuQiU0Lnw+G859kXrMblKBexwoIwJCQojjhD54+S3lsRFEEV5aaePViEQRBeVbSWWy+41CGaVstdTpldEUPZvit/J1avwat8zIexH7rrf8FL2NtYr4682x+ydsvorzReez13bR1w/qR+3UnZ3Ud5UJr+DQ84aKf8ATtn3ky5qvW9yM9yjVjCM54zpWyK1epVeZvPJIUSMCrHFP8vlgwYMD8UmISIohEuZZqNdhEUQRHybaSy3hF9x+ytm4xfvJ9o9Cj/8zxuppgnCl6+kThPAbWwjqklUq/vYsDSGhRyJDhF9UcS4LRulrpxjCqvXuX3Cr2EUo0JNKPpuXMKkKsozi4yXVPk6uI4HNsixSRHHdEI5aRcuGhRU02nvjlgSFEwTRgxyxyYhIihtQg5DeXkSIogiK8jcXttbRcqtWMS79qKUU1b03J95dC54pe3WVUqtrstkezfAP10/1Fdf0Yvp+5lGhTpQUKcFGK6JCgjREccCEjBgYzj/AACnxGPvaWI1or+JFb2e4rTzm3bSXVFVNSaaw0YEITIVGk0n1WDKW7FJMQkKI4E95PngwNckiKIIu56YqHcREiiCLSi6taEfvv8AOnUhTi5Tkoru2XXtJY0cqnmrL7dC69o76unGGKcX2JznUlmcm33Zgt6LqVYQ/c8HD7aFraUqMVhRiJmo1mpC8LGSRxvgFC+paqMYwrJ7PuXfBr+0y6tGWn9y3Rgxyk9uSIyaI1O6ISiydSnHbOWPkkJCRUWFySIoporz11WxESBBHCKCxKr/AAvluSSy3hF1xrh9t9VVSfaO5de1NWWVb0lH7yLi9ubmWqrVk+SiKJGB7NcN99c+/mvhp/8AJERFRFpJKLRjHQT8DGiURjSaw0mji3s5Qra61B6J9dPoydOVOTjKLTQyRgxyRGeMHrlsckJoRFEYlwsYQiKIIqyVOlJ+r2XJEUQRCLeEi0o+5t6cH1xuZ+RdcRtLVZq1Un2W7Ln2p+pUKP4ci54le3OfeVnjPRbLlgwKIokIEKCkcBoqlYx7ybbIMUhSNTNbNXdC8TJcmXvDbS7g1UprPpJdTiXDK9jVcZpuH+mXoxowY5tjbEITZCZB04U9ci5qwqNNRwIiinEvJ5modhCIopo4bS95cwWNlu+WTJnm5JLLeEXnHrK2yk3Ul2iXntBfXGpQfu4P0Q5Tk8ybZgwJCiKBGBGmUqOcFOicK2tYLs2JiEJC5NGTJkyZGyaGMwXlnTuqE6U1lNF1a1batOlUi00xrmx8khCIkqkPcJS7kpkWQWRYhFt+iJScpyk/ViIoiiBweilTlU77eGrcUaMdVSpGK+7Lv2noQzG3hrfd7Iu+K3t3tUqvT+1bIwzSJGDSaRRIxFEhEpRyylA4e8RaEyLEajWa2e87iaZsbD5y3Q4NeDivDKV9Sw0lNfTIurWrbVpUqkcSRgxyZgwY5IqS6LlEpovKjjSUM/VyiRKayyCy0i1pe6oU4dlvzuryha03OpLHZerLz2iuptxorRHv1ZVq1asnKc5Sf3YkJCSwaTSYEhIihISKcSlEposnhtfYiRYpGobIwmz3P3HCUXszLM+DBJEoGOUke0diq1CNeK+KGz/BKDQ0NGDBgx4EiKKMMlzU11ZP0WyEIgU+hw+l726pr75f8c8nGbv9Rezw/hg9K5aRREhCMGBCQkJEUU0Ulsimi3lpmiImJiZDBqE0PA8CxyYomCQxoYyUVJNNZTOLcN/TVnpXwS3iSpNE44RgwYMGBmCKIQK0vdUJP1ey5IRAgcFpbVKjX2XO4looVZdotksuTfdiRjkkIXLAkJCIoiimUymRKM9UUzImRYpGo1DkZfYUn2MkVl85DGND5cTtlXtZrG8VqRKjn0LiDjPBgwYMGBoSIwKNMva+qq4rpHYyIRSjlkVukWdH3NvTh9svneLNrXX+EjSaTAkJGOaQkIiIiimiBAiy3niWBMixM1GoTEmJbGOSwkZ5NjGNDGPdFa3jTqzi+5eUW3JjiaTBpHHCZgiimi5rqjSeH8T2XNEUUYnDLf311DtHd+CqtVOa7xZLaT/PgXNc0IREpkCJFkW00yDzhiZkyIiuSkhzNZqFybGzPJjGcTp6auv0aKsk8laCyYIwyRpFwlHEeUURajFyfRIrVZVajk+SIopRTYlg4RQ0UNbW8/A1sXMdFxWj2nLwLljkuSIiREgQIkSJQl6GTIiImZMmSKMLlqGzPJ8mM4us0IvtImVWzUuxTce5CEUk5F5j3zx0whES6rNvQui680QRRiW9J1a0IL1ZCChFRXRLw8Tjovrhf5t80IiY5LkiJEiQIIiQRFEdhS2MiYmKRqMiEzWOYsswNjY3sZ5SOKb2z/KJoqxHHchsypXjGmk2VKkZyyhLPQqzdOPZjfOJTRBYRwa3y5VWvtHxcbgo8Qq/fDHyiIRjbmhCIkSmiKIIhERqSI1lnGRCEzJkSEZGzJF4HJDfJvlkkziksUEu8iSJonDcUdy4l6ctWCcm3zRFFFFKDnKMV1bLeiqNGEF6Lxe0VPTeQl+6CHyiIQuaEIiiKKUSECEMI1xiTr9iVcndpepacYhlU6rwvSRGakk4vKMmRMRk1GRGocjJkbMmRnE/op/kkiSJxGisviGTl4EiKKSOD27qV/ePpD/nx+01N4tqnbUuaICEPkhIiiKIRKFMWmKJ3C6IncE7kqXTJ18vqOo2cCv0k7epL7wbMmRMUjI2ZEzUZMmeWRsbOIT1VFHsSRJEkTiVIFaeHhD5oiiESEThtBUbWPeW78ftDFuxi+1Rc0QEIfJIiiKIQyUqS6sdeEFt1J3OX1J3BVuuu5O5bHWbNQmQk000yw424qNOuspL6ihcUqyzTmmZMmoyJmTJkyZGzI2Xl5C3j3k+iP1EJvd4YySGiSLyvGmtK+pjbfgSIohEs6LrXFOHd7iSSSXj4xDXw6uuyT5opiES68ooiinHLIxjTWZdexUuX6E633KldJE677kqjZqMiYmRkQkcNuXTqR3wiFSM1lPJkzyyZ55M87ivGjTcn19EVqkqk3KTy2SYq04dJEbtP61j7oWmSynlF5XhQp5fV9EVKkqk3KT3fhiQRFHBKC1TqP0WPkXUPeW1aGOsJD5IpiEMRFFODkOUaaxHr3J1vuTrE65Ks2OZkyZMmRMjIpVXFrcsLtLrPqQrN+pGaZkyZ8LZXvoQTUd2V606ksyeWTZJjY2Os6SctTRc3FSvPVN/jwpEUU4kI7lhRVK2prG7WX8hl1DRcVo9ptckiBEXJIp0/V7IlUSWI7IqVsE6xOsOeTUZM8smRMTExSKdeUfUteJyhhSexRvYSWzI3a7kLmD6sjOL6Myal3Na7k7mlBPMi4vZVNo7RJzJzJSGxslJJNtle4dSWF9PhSEiMckFhFjR97XhDu9/wL5PF4OnxC4XeWf99xCIERGCFPSlKSJ1dipXXcq1yVRscjJkyZMmTJkyJmoTFJlO5nBpplLiOcamQu4vpIjeSXSQr2f7mfq5/uHdSfWRKun1ZKqu5KoOY5DkNlzX1vTF/D4UhISKcSKOC0d51eywvle0kNN5CX7qYhEEISKcUvjf8Fa5im99ypc5ZKo2OQ38nJkyZMmo1CkRrSXqRupr1I3j7iuj9Uj9Sj36HWQ6qHURrLis38K8KRgSIogiK3LOiqNvTh9sv8v5XtNDMbafbUhCICKSzJIurmOXCO2nYnJtjfJ/Oz4cmo1GpmpmtmtmtmsnU2G/AhcokYkEcOoKrdU16Ld/L9oIOVin+2aYhESJS2TfZEpNtsY0YGhr565555M+BsbHyXJIQiKIogtzgtDTTnVa3k8L5fE6euxuF/g3/tyREiN4o1H/AIvwYGhxGjBgwQpynJRXVkouMmn6eTbJS54MCQkJCRBEUUoOUopdW8FCmqdKEF6RS+XUgp05wfRxaJRcZyT9GIiQK21tU8WBwNJgxyZjyUnyjTk98bdzTBdZf7CcEtomr7IUn2RHHYUYsVMjTFE4TQ13Ck+kNxGfl8Tp+7vq6/zbERIld/8ATVf4+Q0aRxMGDBjwL5jZu2YUfuxtswKIoiiKIkRRDpuepw639zbxyvilu/BnxY58fhpvdX7ooREiV3/Qn4l4GkzQOJgwNGOePlyM6VhdfViQoiiKIoiiKIokULZHDbX31dOS+GO78WTJkz4faOnidCe+6aEIiV1/08/yvmYJRHEaMGDBj5b23EiMSMRRFEwYEjBEhGU5KKWW2WtvG3oxguvVvu/koz4OO0HVsnJLLhLIhES4eLaX3kvnYHEcDSY8OPBgwNDIoihISEvCjhFr1ryX2j8+UVKLi1lMv+E1LeUp01qp/wDBpIl1/wDnX/l5FrI4mkxyx4UJEtkxIiiKEheFFpQdxXhDu9yEIwhGMVhJYXkMF3wm3rJuC0T7roVrG5oN66bx3W6Lpf8ATR/8xeQzyaHEwYMcsGBCRU9EJEUJC8X2OEW/u4Sm/ql5S4tLatqTprD7F7wyrbNuOZQ7mPKaUOJpMGBLlJ5kyKIoXhQi1pap6pLZMsnqjJ+Tqz0x/IjSpJprKL3gjadS3X5gShKMnGUWmuqZgx5PBpNJpKm0WIiheJFKEqtSMIrdi4fUpxSispFrSlTp/F1b8nWlqqfZCIRy+V7w2hdrMlpn6SRd8NubZvVDMfSS6DRgwY8ghckXL+LBFEULwLl0ODWnWvJfaPlKs9EGxbkUQjhc2k000cQ4Ipaqlvs/WBOnOEnGUWmvRmBox83HNCIRy0iu1KtNrplkURF4EItaErmvCC77/ghCMIRjFYSW3lOJXapVKcP5ZRqQnHVGSaKUcvPiu7GhdR+OPxekl1LrhFzRy4rXHuhpoxza+VgwYMCRT237HWTIoS8KPscJtFQoKcl8c/8AjyvFZTd7U1emEjh9CdSplZ0rqRxFJIz47rhtvcRfw6Zd0XXDri2k9UcrujBgwYMeNc8CRFEvhpTf2ERQvCjhtr+ouFlfDHdi8rXtKFdpzgm16lK3hSjpgkkaTDMeNpNYaLjhFvVy4fBIuOFXNLLS1LuiUWmYMGDBj5CIl09Nt+REReBIZwu29xbRyvilu/7BgxzubC3uF8UcPui64RXo5cPjiODXVDiYMGPGiEctIvqqlPQukSJEXh4ZZu4rpyXwQ3Yv7HjncWFtX+qGH3Rc8Irwy6fxRJQcW01hmDSOJgxzSEiliKnN/wCmI2222RQvAkRjKpOMYrdvCLK2jbUIwXXrJ/fyL8xXs7esnrgs9y44NVjl0nqXb1KlGpTeJwaY0NGOWOSRdy93aqK6zf8A6QkRQhC5YwjgtmnmvNfaHk0015XHgqUqdSLjOKaK/BqMsunJxfYuLC4obyht3RgwY5R6nEJZqxin9MUJCQhCEWlvK5uIQXRvd/Yp0404RhFYSWF5OFWUHsynWjLbo/NNJ9S54XbVt0tEu6K/CrillxWtfYcWnhprlHqXW9eYkJclywzhNp7mh7yS+Of/AKXkn4KdaUcJ7ojOMuj8gvDjxVrShW+uCZccF6ujP+GTtq9KbjOnJFxH+tL8iRgS5JHDbT9RcJv6Y7sSwvKSi8mOUW08ohX9Jf7iafzV87CfVHEODxqOVWk8P1iToVKbxODRgwYKNKVSajFbss7WFtSUF1f1Pu/KyXqjZpbDTT5wqSgQqxn9n8pkV5Cp9EicIzWJJNFXhtOX0PDKlpWp/VDbuKDbxg4bYqjD3k18b/8AXLPlNThsQcJR6InBvGxKA+SeCFdrruiMlJZT+Qln5uPBU+hjEUIpp5SYqNFPKpxz+PDnyTjGW7eGaX6MTaxkjhpjiSiks81Jp5RCuv8AUJ+Fb+SqfRL8DEUOj+Rkz89rcT0sktW6RloUs4TZKCSNKGsc4VJRIVIy59RLyVX6JGRFH6fkY5JifzYtNfcxLIsr1IJNpN4GmpirLG6HoktlglBYNKyPYyJkKz6SFJSewvJ1Pol+OSKKxBfKwJfNSIvqmuTNWVhjp7NroeopptJihnoydM0vnGbjuiFaL67eTn9L/HKJBYivMN7ITGxPkpNIcYvdbGnBTeMmYye/Y0boqR3yY5060ovD3RCcZLKfkZdGSr1adScVL1Zb3FapVjFy6sXT5+PAvDs4pjbQxil3I4a5KTOr3GtIqshtSwaWhpmOUZNbpkLj9wnn5zGXcHG5qbf6mcPpt3EHjp5JjYvDp+HqNCSaa9TPJCb0mBEsOKQoJpkk44IzhhElt02Ix3KkX1fOFWUSFWMvXf5zKttCpLVgo0I084ikYMeQY92LIn4EyeNsdTLTfPJkyKDxkXxGJYY1lYJU8CqSSwyE030KiyzQNY5IhcPpIU0+j+avJsS5Y8H/xAAzEQACAQIFAwMCBgIBBQAAAAABAgADEQQQEiExIDBAQVFxUGEFEyIzQpEyUoEUI0OAof/aAAgBAwEBPwD/ANSVpO3CmLg6p5sJ/wBC/wDsIcC/owjYWqvpeaT7S31QTD4QEBn/AKgUDgZWlpaFQTxHoo3KiPgx/Ex8PUTkS31HB0g7FjwOm09M7QqDHw9NuVjYNPSNhag43hpuOVP00TDU9FJcxBkeOq0tLR6FNuVj4L/UxsJVEam68qfpNBNdVRkch3rQqDHoU25WNg19CY+GqL6XhBH0XAJuzdAyPetLQiNRRuVEbC0z6WjYM+hj0Ki8rLfQcKmmiv33zEGXr4dpaPRptysfBj+JjYeqP4wo45U+bSQvUVfcwCwAzGTHaDxbS0tCsfD025EfB/6mPRdOR5WBp3LPmIMmMGQHjWlpaFRbfyqFPRSUZjPk5juntWyPk4anrqqPbfoEEMHQegZHwj5OBSys/v0DJuIOwJeXzGR46QJboAjeUBKKaKar9sxBk3eEHSBAIeOk+VhU11l/voEGR3Yd+8vmIOkRthkfIEwCWVn99ugZGLuSfEGROQgjne3lAXIAlJAlNV9h0DJjYRBt4ghOYghNzmfHwdHU2sjYdIyqHgQeOII5sOg+KBKWGJ3fYR8bhqIC3v8AYQ/jCelMxvxhvSlF/F39aYmH/EqFU6T+k/eLWpHhxLiHdoMh02h74gjm56D4YlPC1H52EY4fDLdjvMVjqlbZbqsuYCctVjCYHYeswf4lUoHS5LIf7EpY/Cv/AOURWDAEG4gl5fpI6j2BBOB0GHwUpO5/Ssp4JuXMShTThZjsYKA0ru5j1WdiXYkwsZrb2EDA+lo1xCZeXggmAx5oHQ+6H/5Ex2Fa1qol+gQdIlocxLdAglQ+kOZlV9Kk94AngSng6jc7RMJTXneBQNgMmIVSfaYioatZ29zLS00QoYb9IggmDx70mtUJKmUsTRq/4uMxLy/QMjmMjkIBBGNz0GYl99PbAvEw1V/S0TAgf5GJSROF6cfX/LpaRy0MMZmhLRSwPMvfmMJbIZAwHIXG4MwuPdbI+494CCLjqEGRyEEtGyEEY2U9BjGVW1OTLdinRd+BEwP+zRKNNOF6y1pj21Vj9hGhE0zSJoH2mk+kPSIOYMhKOIq0iCGNvaUMQlZbjn1HSOkQZE3yEEqHe3QZiG0oei0tkBKeFqP9hKeEppzuYAB2CYzTF/umEZkxoCYGJ5ytLS0tAIsGV5RrtScMJTqLUQMpuD2hCRaXyE4hNz0GYprkL0qjMbARMExtqNpToU04XtGNGMxI3BhEMMtNE0CaIQZvN4L5gwMD0YXEtRb3U8iU3WooZTsewMjkII5sLdBjGVG1OTnTpPUNlEp4NBu28CheB3DGjTEDYQwiaZploWQT8z7TUp5EtLZjJTA0vkJ+H19LmmTseIIO0IojG56DK7aaZztMNT0Ux7nvGNGlVbqYcrQxry0tBfIy2RM9IsEByEUkEETCYj81N+RzB1nIQCMbL0mYtuBmguyj7wCwHeMMaMJUWzWzMIlppmmW+8K/eWh2GXpBBBkIJhKv5dYex2MHYEAgjG56DGMqtqcnOl+4vz3zDCIwlddry0MtLS0tCYei0tBBmIIJSqa6aH7RTmOgQRmsOkzEPpQ9CmzD5i8DvGEQiMIy3jCxI6TkRAs0zTmOgQZYJ9VK3sYIIIBLQ5CcCE3PQYZiXu9vbppG9ND9h3jDDDDKy736DCJaWloZc5WluoTAH/uMPtBBBBkchGPp0mVG0qTGNyT04Y3oJ8d4wwxoxjbwix6LS0tDCJpgWGwl8gOgTBfvD4giwQQm0JyJsOkwzEvwvVgjegveMMYx2hMsTGpm2dpbI52loRAIBkBlaCYEE1SfYQQQZMc79JjGwJjtqYnq/D2vSI9j3TCYzRnuYQTBTgSaJVwpNyv9Qgg2I6DlaWhlpaWlpbMT8PH6n+IMhBD2DMU9kt79f4cf3B8d0x2huYKcCTRNE0y0xdG9nA+ZbMiWls7S2dujAU7Uy3uYOknrMrvqc9eANqxHuvcJtGeaSTAlppmmW6CJWwoJukdGU7jO0tlaW6gJh8M1VvZRyYE0gAQdBPYqtpQmE3PXhDbEJ0HMdBMJJgSWgHYIlakGUi0ZSpIPco0WquAP+TEUKoAEEtLZE27OKfgdikdNRD7MIOyWm5gEAlu0wlSmD6RqQ9oyW7AlLCM1i2wlKmqLZRBBmbDskys+pz2aZuin3A7BOVu7aFY9O8alDQjUG9IUYciWmk+00N7RaFRvSUcMqG53MAgEEGZN+zXbShMPZwrXoJ8W6ycreBaFbw0xCkNIe0/JHtPyRBSHtAkAgGQzJv2SZim4HawBvSI9j1GW8W0tLS0tAstLS0tkx7JhMqtqcntfh53qD4+jE9oyu+mme3gTatb3H1AzFPche3hm01k+egfTHNhHN2J7amzA+xim4HR6Hzz2ry8xD2T5h7mHbVRQ/bo9PpBhhld9Tnpt2ME16Pwej0+kGGV6mlNuT3sA2zjo9D9IMY2F5VcuxPat0YN9NW3uIM/4/SDMVV/gO+DYgzD4pXAVtml8vT6RWqBFJjNck+DRxdRCL/qEp4ilU4bf2l9vo5mLcmw8SjqWmtySYrg/RSZUa0xB3Hh4enrqD2G5hhNoMWivob+4CCLj6G7BQSZ+erHmVmDNt4eFp6KV/U7wyrU0KTCbyjialI7bj2lLEU6nBsfbyD2TMXV/gPEoprqKsO0JlZ9bfYZgkTD40iy1P7gYEXB8Y89mtUCITGJJJPiYMWJb/iNMRU0jSOT1Ua70zsdvaU8VTf7GA+GOyTMVV1vb0Hi4e35S2lRwoh3JJluuliHT7iU66ONj4Xp2cTU0Ifc+NTrOmw4j1S/M1S4l5fpEBtxKeKdedxExNNvW0B7wh47OJqa6htwPOvL9NOu6cGU8Ujc7GA9wQ9ZmJq6EsOT9AvL9VOvUTgynikawOxgIPaHYZgASZWqmo5PgjyErVE4aU8Yp2bYxXVuD1js4yqRZAfnwyLHceEOtXZTcGJjGFtQvEr034Mv0nrrVNCExmLMSfDemrDcR6LLuNx5QNpTxVROdxKeKptybGAg+vaxVXW+kcDxqlBW3GxjIyHcd8ZX7SVnTgynjfRxEqowBDCXl+nE1tCfc+KrS+TAGPQ9V/qEEGx8u5mHxR2RheBgczGYAEmVqhqNc+KU0cmEaWteA7ZvTVuRHpMv3HaAh6BlftUf3F+YJrmsQsJia+o6VO0J8UoKrG2wUSpQa/PIuIBp2JnBtL5vQU8bGMrKbEeFfro/uLBlimI02hd/9j0CW8KlW0MSd7jeJXDAJpMddVzaxEcEm4gUmwvaAm+ZUNsRHoHlYQRz0nbwqX7i/ORmK/wAl6ry8t4KsVNxKdQfq1HkQBD/KMGuGA9Z+qXaA3zekrR6TLnxD4VL9xfnIzE/uf8dkQjvEZrU0qRaUrGgptezx6F2soIv6niXYFr3MuZq2gN8iI9AHdYUK8iHw6f8AmnzkZXN6h7V++RLZBmFt4KgK21m8bZEjLsZuE3ivNQl8nQMLGPRZeNx4abMvzkZUN3b58ocS2aVzYKbbRybbkRqSlSt78GPSC7w20g3imXzqUVbcbGOhQ7+CIp2Ec2Bh58M9LDSbZqCxtDSFjuLj0jC2aVWuovabOQNV9o6Di002BMJG0BFsyoPIj0PVYRY98SmbovxKxshh8ICHpLXgMJlNgOReNUB4EPRTqaGvBXJPAiIpYBjcWvGw1QsSBYT8spfUwuPSNt6xDm9JWj0mX479OsVFpUqlvWXl/BG0uIR0qZYEcQqAoN9/bK0tDxCd8rxKhDKSTtKeIVidRMdFqsCp5uTKlPS2nVeIJqgyIj0AeIVYcj6AITlfK2X/xAA6EAABAwIEAwcCBQQCAgMBAAABAAIRAxASICExMEFRBBMiMkBhcVCBIzNCUpFgYqGxBRRDciSg0fD/2gAIAQEAAT8C/r0uAQM/1uQDugIED/6NkrEu8WNYysSxFY3dV3rkKw5qQf6tLlKlTaVKlSpUql+6+IrEP6ocUUTabzabbkDrmlY1iH9SOKKJsck5KAmo53IcCdYTZHNYliU/0+UTlnM4wF2fyx0z76IQBAyysSxBSP6bcUSjfkLHLVOy7OIpj3zHohoI4UrGsY/ph26KKmxzO2QJfUhN2zDiyToENFjKxrGFP9JHaxRR5cAlUIdVJCHojOgCAAEDLKxFY1iH9Hv5I2KK2Gev5CuxNhozDis5nrw8RWNT/Rbjqiijc5q5mB1VAaeiOunFJhNJQcViWIKR/Qx2sUUeA4qn43yqe2Vu/FHXrxR4jPIZpWNYh/QbzYoo8Cs6GlUGwAmZaexPvxDxX7L2HBkrGsQ/oB25RuUcxKd4ngdExNvKJ8JKZoxvxwwh14o1fPRDiAld4sYWIfW9hYolFHPUMBUup5piFiVKqeSOvEqHQDqhxHHRNENHoZWIrGpH1d55I3JRzFVtYHVNCYhaoj5U7an7u4RQQ8VSegQ4m7gP5RPFbrrnlSu8QcD9UduiiijnKOtX4TEznYKonnRVHR3XsgZ4MqodAOqb+o9Txaezj14p4Zq6w36m7QWKKPAcUwy53ymJoPRQ7oocBsnlFCm+u/TYJlLumgTwJsXTWHsEBAA4jtlEADis3J4Xif5f5TKTGfPX6m8oo2KOeodFRHNMTblVG6FdnYG02p/TgSp0VLWo4+/CJuNXfHFchoI4IGN0cuaH1QlFEo3OUqudEwbKmhYoohBhw6FMpkGSdbYUdN8zj4VQ0cEOCUFPihM8s9eK3V09ODBeYCADRA+qP2RubHM5O1qBNTEMhTRlICwe6LXIyN7VXHyhMpvkHVNOnAlFbNlU/FiPXTiuOiYIbwNdgmtDRH1V51RRRR4DlT1c4+6am5gOAU5oVKmO8dbnwJtWd4AFRHhHFPicG8Fo5/VpRR4VQ+EqkPCExNyjV3BKIQbqoeU1oaLFoRa5FTeVKeZKpeXiN1cqesu655TdTH1Z+1yijnK7QfCmBMCblZtw2hRmLW9EaY6oscinPgIU3OKpAtaG8IqU3Z3vohoAMpsVR5n6s86ooo3OYqtq5oTExD0DBwnJzfxGpjQAv1cNxVMaN9tc5RTBDR9WKKKNzmK3rH2TEzK3V3xxBpwiFglYXdUxuFYQsJvNpUqbHUpuU2KAlwH1Z+yKKKNjneYCo6yfdUwm5WbcMebiNCAy4Qiwo/BU3c4BB4Tds5VDcnMfqD90UUbnPXdDSqQ0CpoZDxG7cRo4Ja08kWdEdE1uLVd17KntGQ2KKothgzH6fNiijc5iq2rmhMTAhkb5h6gbcIpypbKU1vO5uUBicBmP1B9yijwHIa1SmJuSVT5nhjf05RQYE2mOd9blFdnbqXZij9PfvYoooo56h0KpdeqYm3KJVPyDht4jeGbNblKOiKKptwsGUo/UijY2OaufCqY0CYhaUSnFDbhSh6hrZOcpyptLqg6Zij9PeeS16oypRR4BVXV4CYmXKJX6h8ocGUNxxBvxWDTgFUB4Z65SiUfpxMBTzKlEoooo53KfxHJpTCpRRKKafG1DhU+fEbxAJPAK3MICABmP04uhHXexhadQnvpjd4CPaaP7wu+pH9YWIHnneYCpDn1TAEGN6Lu/dFr+iKdiccLVT7I0akmUODKp+XiDTiMHPgFUBL56Zij9NLuie9rBLiq3/JsGlMT7p/be0P8A1/wu8cd3FYj1UqAfZeIJrgeeqFWoOaFZvNd7T/cg9p2Niqx5dUwJgQsZThyXZwMdQ+6ngSpROiAgRw+Y9KVQbDB765iijP0rEpXaO0sojq7oq1V9Qy968HUrCz9xWBv7iiz+5EPCDps5tyJQLo1VOoWrFIXmqn2TEzIeZTaf8oMJOqgLCiHdJU5jy+UOG3fiN34BQGJwGcoo7/SMSJVSqymJcYXaP+Sc7Snp7pzydypvBudflC0WBuHEJpDUyvTG5VJzXCQch5Jo0ynVFo+EWHqiHdLOMIdmqO1c6E0EaHhBM5/PEbtwCuzjd306Viv2rtjaIgauVWtUqOlxRNsD+i7t6wVF4x+lBzSotEKeDRrGk+eXMJrmuAIOl2iXcIhUmDvSegUonxN4QTPKOOcpVNuFjRmKKP0SVN5Xau0dzT9zsnOJJJKAJQa35WJYlKxL7pwB3CkjRSgoCghTbbILU61Sn5Cmf8j+9n8If8hTJ1aQm7fPDA6brX9pTGc3LAFgOfmE46P+OINxkOQqm3E8Dgc0d7H6BOSVKldrr95WP+FosSlTlBRaCtsuoUrDmd1tT7XWZ+r7FUqoqMDhwmDnmwNWA9U4OHJTYbz0CbsB1dxGcznKK7M3Qu65Sjb3+gSpUqVKlTYldofhovPstlOWVKlYgpQKgKFBybLfgMrVKXkd9kz/AJI/rZ9wqVenVHhd6E/CICp0HP1cYBXdNbtxGeUZyimiABnKdY+rlSpUqVN5UolErt1b/wAY++XAsAUN6XIaeSwdCpQNptF4WhW2Q9bcjYGDIXZu2fpqO+Cg4EaGcrN54RTxZ2ybrzWo5cCUNSAhnKoCak9MxtzRsfUSsSm83lTaVKxJ74aT0T3F7iTzuBllSpsULyp4G4QzUazmVQRtzTXB2xnI3bhwtW8pWFz/AGC7sICEWg8lhPVajcZSVS85QzFFUGwz5zGx9RKlTwJuSpRKldsf+HHU3GaVKJywo4R6o5HdLNe9h8Jhdn7Zi8L/AObc+IAgM5aDyWHood0UovJ2Cpuc1wkIZSigMTwM5RRsfSSpvOabypRKJsXLtbvKOFqoevGOSx9VOeOFyQFpt2ftmEYKm3VMIOvEHCKrbfdU6aLBCGUlFdmb5ncAwjY+hlSpUqVPBlSpUpyLkSi5dpOrUM8LCouQFhHLRajgxlNiZtMKVBUHquwdpwu7t2x29MVVGip1GwvP8LB7o6b2NiiqbcLAMplTwMSBvHAlSpUqVKlTac0qVKlSiiUSiVX2HHKF5vKlSpyHZHUwtApJUZaFZtVg115+lKePCmMhqAuWhEO+UXRuiQqDcVT44BARsc0lYskWlTaVPGlTYlEooooqp5eHNpKxLRQOqwuWD3WAdVhb7rC1Q1YWrC1QOqw+6g9Vr7JgaeSqMI5oNULRaLRQOpsyo5jgRoV2ftLazf7uY9KRicBmKKeGrszMLPngnexy8lzy4gi7IYPFnMbFFFO482lTmm0qHfC0UlHygLCPhQ605Q5zHAgwuy9pFZv9w4A24lMbuzlBuN4bwTxMSn0E3nM6xRRR4cqViWpWEqSg5Spy7rD1tK3sdskBQouD1VNxpPD27Jrw4Aj1JTiuzN3f/GYrVEpxscou6o0GJU+gnhlFFFFFHgytUGINbkwqIyarDkGth5j8I7LllGQFdkqeDD0QcpyDiM3zFFGSYHNNbhaG9OBNzm5oqAsPRTG6n1JRRRRs7gxmOXDl3sU2zcwK0UKEx5Y6QqdQPaCEHKVNm7cQaCMxTiuzNl5d0yzkdoOBNichbGoQPqCjY3PCnLiU2xLFmAixQ2tzRvvaJvM7o6FUKuB3sUCg5Sp4g1cBnJTiqLMFMDNF3b2ObDnIkygeq5+mKNzfnx54DRzudrnewvutlutrxBVB+JnwpWJN3HEZzOYpxVBuJ09NlhP7lB6r7W1WlpRuc7trypuVi5Qjp6Uo3Nzx5C1Wq1Wt98hucgyb7ra9B2F/zaVTdvwydFyykolOK7PTwU9dzmK+HWqQIHCf5eDqVNp9Ech9BKlAZwIGTnc2KGTe2+i2sCsWkrEqZ0TTwh5hmKKoUsb5OwzG5ThqbHgP8p4EpxWjQtdz6Mo5zwmUu9xYDEcrxl1UIAdV4eqNxvmFhfcW3W1mkloCwJh0CaUDwJVPmbm5WEuIaExgY0NHB5o7mx4B2KOWVOXF/PoSijnNhwMUN0O+9hmlYszdsgzGx1sdUFRPKw1TSU12WVKlSm6NGUyiuz08LZO54BUpx04hzkWIKlxG3ozwXIeilSVrnFjnPWxCpmHBBpO6DVrzQQzs1cMziqLMbp5DglOTrHhP3tChRaVK0X2tz9WfRwoUWAtPF2uwy0fCCasLSsJ5FeLm1SMjnhdn1xHKYUYjATG4RHCO/FqeY8HW2uvoij6oZZ4wTkLUfyxYIFBTYsZ0TmRzTyUGqiIJyFGFRZAnrwipseHV8x4Z9EfXSptOTpfnY3KHLJQ/LuEELuT+SbEJnmy02YjKHANijvY8Orv605T62FCKHB52NqHk+9wpU3cokoUmwg0AQoB3WA8nfyjiG7SgcRgICOEVNjxK2/2zm+nWxMGPQnKcsKOMOHojm556H5Yyi0opgkoZJTRwiijY8KFCrckcuuY+hOQqbwsKhQnM4gzlDgfqucwTBDQMgyFUx4fnK0IcU8Wv5R8o5j6Uo3KJU2DVChQsKwqrQI8Q9QeKMoyM5ZAJQHCKKNncWqPwyjklT6Yo2JRNgxBqhQoWFBqDVhVXsgdq3QpzXNMEem58UcBqCBtugOIUeO/VjvhHLCjNz4xRRRKJUEoNUKFCDUGoNWFBqwqF2ujjpyNx6o8Bglw4Qu1sIDhlGzvTFHIeXGKJRct0GINULCsKDUGrCsKDVGTtXZiw4m+X6DRHPhSpVNvMoDiFHex47t3f+2aUUch24pKJTnIMJQYsKhQg1YUGrCsKDcxXaOxkS5mo6Ij1zGlx0CHBCCpMnXkhxDc8XVBbqp+Y/wC2cgI5DsUOWY5Si5au2TaaDVhWFBqDUGoNQaoUcAqrQp1Nwn9kcNjPrGsc8wFTphggIsad0aR5LUZwqdPGfZAcUpxs7jhV/wAwe7c5Ryt2zHISnOQYTug1QoUKEGoNUKFGeLFFFPCrs1n1TRJhMaGiMnyjRHLRFrm8kMlNuN0BMYGiBxTc+h7RvT+YR4jefzmN3FSXbJrEAoUKEGoNUKFGeMxTgqrE9hHqaNLDqd0M5ptPsixzVKaCToqNIMHvx3WPoe0fl/BCcM5yjc8BzwEATug1AKFChYUGqEAo45Cc1PYnMCwLD6RrXO2VOkG/PDNNpXZuz4NTvxjkPoajZpv+FOgOc5eZzudyCaznzQCAUKFCAUKFHGhRchOan00WqEQo9C2l1QCHDpUuZUcYp1j6CbjyDOUcnM5Si6dk1kKFChQgFChR6OLEJzE+kn04Rai1YVhRHEDS7ZMphqhAIcKlTnXkgOP73PoIsERDnj+7OcvM5C6Fq/4QagFChAINQChR6eEWp1NPoosWBYFgRposKi8FQoKwlCkU2iEGqFCA4VOni+EB6Bx1sUfR1PzHfAKOY5et3OhYSdSgFCAQag1BqhQo9TChFqdSlGmixYVhWBd2u7C7tYFgWBYUGrCoUKFHBYwuKAgaeg97n0JQtW87PdqOc5BZz9YG6AQCAQag1BqhQo9dCLUaaNJFiwqFhWFYVCwrCsKEqFCjgtYXGE1oaI9AU4+nrbNPujnOTknuOwTGIBBqDEGqFCj6FCLVgRpru13awLCsKwqFChQoUKFGYCUxmEfSaw8Dk7hHZPdhATWprUGINUKPo8KFCwrCsKwLAsCwLCsKwqFChQoUKLU2Rr6Ep3pZu4S13wjsMpyuXnq+yYxBqAUfToUKFChQoUKFChQovTZz9G71Gy5fc5TleVRpw0Sg3oh9bi7Wz6Pl6ebOOiO7/lHgFbuHymj6+BKAj0bjc+lLl8qr+af/AFRym5TBNQZp+tNEek53PpJN63mZ9wjlN3Ls/wCbnBn6w0egNyuVz6MlDXdQotX8rT0cE7gOXZfOfjgDTjEofRwJPB58Mo3Po4Ay1RNJ/wAI5DkK7J+vhzwyARqmgDb6OBGXRYgu9Z1WKp+xRU/tWGp+8fwsNQfrH3Cir+5pX4g5ArEebSEHtOxU3Np9NGX7L9P+EchsUV2TZ3F8O+yxKfpzBzyOe1u5WKo7ys0913bt3PPwu7p/tGabSnQQsA5EheMb6/CxgolE3PpAVNygU78yp8o5SiiuyeR3/txcIWuTqf4+lAScmJ75waDqmsYPnrmlSpUqVKm0ogO3CIw+6J1Qs8oFT6Itc33Ca4HJCqCK3y3/AEjnK7J5Hf8At6ASsS6AInYfSWCznhqwFxl/8Xm0qVNpUqVOYlDaxRWloK1yAQo4jmNPJeJvupB2vX81M/IRRz9m8rvn0XinRA9bTkH0Iamz3YQmNPmd5v8AWWck55yNFnFQh6UpzQV4x7oOBXaPywejgnI5+zfln59KSgZOim/P6DTHNEwE1snG7flllTxjqYQRRySVreVKnhjKWNduqjXYHDcJyOUors35X39PKnVF2Ee5QRP0AaLzn+0Zp44yGbDFz4U8APh0ImxQv+kI5Siuy/k/f1Gy1nxaoKdT69nmVSfKOaAgRkKnjncBQjkPGm8WG9zCFuaIjGP7kcpRXZvyG+rk2/yh6xmybrLvSbBNFjinQrH+4RwSEOBKxZAVjsL1R4p6hHIbO2XZ/wAlnx60aLFpqt9lKn1Ltmt65D6Hc+1nG/djlovENxPwgQds0IcOUFhlRGV8HQgp4IOUp2xVPSmz49fyi3OQbTp6ZurkNXk9NBmnjEwE0aI5i1p3UPHusQ+EeJOUWKFps5jXCCqlNzLmz/KUPKPj6Hv7emacLXOTRDR6QeIzYnMVCwgruyPI77FYsPmCnJOflmdbmpyP7O07aJ9N7DraFV8hTfK34+hxqteSkL49HHkb9zlPHd+1BsKo7C05QpzGmNxovxG8pQIOQrawsNkbixRnkEbzc6jVP7N+1PpubuFV1plMMsafb6MFPUL4Np47NS8/YekYOZtWfidHTgnKWAqHDnKBGx0yhRllAQLxllb37WKbYhuqZ2kM0I8KBB+kSR7rT4sDlnMVtJTRDQPax9CfEYtXq4RA3TW3PCi5hYOhUuHmCBtNzcr75CLyFpk7TUxOJTiqVd9I9R0TKrXiR9J16r7L4XzknM0TH8n0ZMBNEBOMCVvrC58WUcppDlooe3fVBwQtyOSMhUI7LAHKL9qfDI6qo5GzXOaZaVR7SH6HQ/S8RWIL4NpQ0U2m1P8AV/Fz6AautWqS7D0Q2KHmHpXNa7ksLxsZQeNnaG/ixb6RmnP2qpLinZP+PoYnd47YbJ9LFq3dajf6ZJUr7rbkieVgmCGD/wDt8h4xQEBPMBGm4ahCo4eZhTBJnbJt6OAd13X7TClzfMPupCnLyzdofgpn3VQo3p0zUeGjmqbGsaGjlYjvPjqn03N+Ov02Frup6hfBVOSTPo2662cZKChRwNCoA4ItHou11MT4Tjk/4+hhZjO7lGQ0QdW6KCN/ppKdC7NzuUeMdwLPKnhgxxICwqL680dlMIOyuyVX4GEqo5G/ZaPfVR0G6CJUe9tLGDun0422+muK7N+VPXIeKTCYFstSZ4Meii08A3ldrfs3onm+67LR7mkBz555s5g+lkp+xVIYabB7eh8x+LVDyU3ngRaLEa2F51406oHN2ucc9U6//H0MR713LawtIRsTYlSiiPpJCdOg6lbC54rtkBCccIla7ocGc0SnDhzbTMLlABVTDU9jXiCqtF7OUjrahQdWfA25prQ1oaNhclQMxKJRKlSh9GKbrVb6FupxWe6TYcEhC+l9+LGucXKq72JgKsRMADEqIZSZHPmu8XeLvFjWNF6xLEsSlSpKN5QM/RqH5tijxTrpZ7oFhfxSOnFjODxDaMlbzj3FqtTCFTOuLmtN1iUoOKm4yEoI5Cm1OqBlT9D7KNSeOTCaNLOMm0WniTwNFGY5jkbpNq7MbYVQ9ppbsxe6ea1TcQmDTMUMwvKlONpITanVTceueYC7MIH2/wB2KPE3d8WcYFzxtFAUcXlcGxy9FuoRCNNnQLum9F3QXchd2u7WFYFhWFQoRGSRkhRcPKDwUPXHV4CpeWxR4bjp7oCBZztVPAGWMgNjkItN5QKOQZDfHJIg/Kbvco8EhQi1OasKI4RTSW802qDvv6wqkJJd9ggIEWKPD3M2eYGccTUIGxHCB0RuLHJFgNbFHhkZCFHEa9zU2q0+qqHRdmZ4Z/i54ZQECxMnOOJtYFFRkjKDeeC3nYoo8IhQFhRabEXNyeAKjghVB9vUO8TwEBAi5R4TdTNnnlwBpxgeBuiLhP8AKhmm0pnOzuGbwiDNj7ordEKOGTCYXjWU2qOfpSuzDFX+Mp4J10sTAngR6CbRYW3yhEnawvItFolC+14zm5lRZzUQoRCiEQoylGxKAJM3DnDYptcfqUg7eieV2NvgLuvGaOdnmTmiwyjgmwN4WFcrhEXCGTCoGTnxXbWi+qMqFFjaERkiVFvNmEjZNrH9SDmnY8cp+pjqmDC0Di7u+LO29BFtMhQ1sIUhYkLxmZtnhFBNseCAApnId7xaFCIsQoRyFHVAQFHAbVcPdNrNO+iHEKojFXHtxXGAmiLFHf0UXixXIXBQNyuV+a5JlRrts8WKBnhxYjIBplOqIUKEQoRFnSTAURxASNk2t+4IEHbhOXYx5z78Xd3xY2IRCjhHaeERKhO5KL6oOsbGzRYHm06pnaeT/wCU2CJmxylNsSjci0Z4ubQEdVCKwrCoRCITuiDYzEqeC2s4b6oPa7Y8By7L+X9+IdkBA9FHCjM0o5ALbbFU3H7JtR7fIdOiZ2lrt9DmKAsePFpUWN4RFn6JrNJsch4rarm80KzTvpmK7P8Alfex4X6vizjmjhi0ZNblBbWKw32KNhvaVhxFVNUHnwCEHhyp9odTMbhNqtqCQUNlN22PpYuU6Agzm5QnMRasKIyRxQSOaFU80HA3hUPyhxG7Ingc9swzDPztiC1sEbRZ+iG1y1wYEGmNVHNRhAA3JQLmn2QaQQWmEztPJ+nupUkWmxMZ5y8lHDJgIAuMlQgnBFRYi0ehxvHNCoCpVDSnCPCd062JniBSozNGmeLQoWHJKKPiMLAFFm947cjZRJ1KjX5UbrDGqxGJP2VNxdpv7pjnM2OnRU67H+xQ2TbnOBnm+FYchICjEZtAyRonbIDREKMkKLkcCclOpyKnhDUkp55XGSMkKEAcgyAwckqOHKpjn1yCoO8LNjyTZlGA4idUY2ajuiNIVMDkNF3mHdY8cFM7Q5sAmVTeHN3W/OzhiEISBc8A5X1QyJ55CYC1dvaLwoU6I2ixzQjtnGbvHMhNqtdwDsnObTbqhrzUcPThxwJuEbETpbW4NarsGt6Fd07vMHe8vuq7G954QcSa+pjwd3HuneHwgJg5lEgBFhduYk/wqmg0QcGfwqTneYeFUu1DZ2lp1Ucd0xoJWEc9cnnMLuxHsoWihQtkUV4ZAOk7LuwosQoUZIRUcR/JFNqvb7oVmHfTNznknarCpPO4yb8fUcGbgqE3mVKNiV39aiHNVJzKjJO5311XZy4S0CT/AICeK2LFVIwo1GkwCnHxBoQYXOUQSnamSYAWEYZiU0vEa7oaplSpT21HQqjWbUHQ9MkcILmctR06D7qm2xNtVspCwBYQiATqEbQi1FqLVGSOAMruSNwXDYptb91ynXhYOixEbhTYm2HODxwURYoWf5U3bIVAqOk+ULufAY0O6p9qqUhh5IOqEk48XshSa4+Hw7Smtc6uSI0R/BqP/EnnCFVpbpz3RpyRzW5HQC2rQA3cqmXYocZWJvI/Cp9qc2Mevumva4aG541R0aDdMZ1sEWyiFraLYluoWHVRkIUIhRwRlcjwDmwdE10aLFYKPSQoyTrY6kBC21sPuqALwKh/hU4dVc6oZPJPOGse9aERgOOmZCf22r5YhDEaWKm8qmWDzeJ8aqk9j9cAHi0Tn6rUt+VsN905YdZ9kzC0vcg55Op+ybibq0wqXaWu0doVznjPdATGxqd7izhN5tKm8KERaFhWFYVCIUWNxmcjkG/ELOikgprhkwrCoUcKeEdFS31Ry0X1KPgqQAnVKdJ5IDXLtJDg0lkOVJlASKhPwi0d55PDsqhw/lzppCZUpU2w06uKZRYS/HU1/wBLZkySBzTTUfSOAfCafHDt1qQNgpnZYhtCwga8yUAQZJWIOGyZWfT9wmVWu2U8IJ5AG6YJMmwyvbkhGiHv8zkTGmSFChQioUIixbwnckcjfM35uQhKPAiUWdEHRuEHNTeJPCBs9ALXLUf37sIpfdM7EdcUxy90HNoOON0wNE6rTpy8AOL133ete6Nl2UAEt3O5VVjHE9Y8IVMiQ2po1Ord54GQnVK4LKbNlUNDDgMk+ya1jBp/layYKGgU6FxHwhicdRooBPX/APEyoSTqIQdJ00KZXLdHJrgdQeDIG61c5CwWqGRzbaIodbYVLemfVQiERaOC5HJT87cp4HeNx4ediEWwmPIW6I4JyhG05IWrnZBek51Z+LQRon1i17v2tHLmnmiQMTR4thzVamGw5vlOy7MT3kKjpWf4tSnd1OF+6qCnhcC7ku7qSMPNPfJFOI6krtD2gBjBJjT2TW1WuBJGEjUIEN8xTqv4mHDHRP16J4IWEhrpOp6JgDWygRKD9Ag/CfC7XoqfaGuMHQ55ROM+ywN0Mai4RQyFQi1QAjFpKjJC8KhG2t4RChRmfyRyUvPw5tpYhaKAtQsZQdK58TXKLEiENM4cOz9n0cMSdVd3bSRI5kJ898KmCQRHwqzWd3BAT6JMRDHCdEx5bV8RTQHVPNiMbo9m1H+SnQ1rZ0geALtFJ7mCpECFNUUsTtnaKi0Pfj/Si2g6oHSMLd0HNrObhgxv7J7D3gwv06FE4d9Soed9FhcdjAR8E+6DcUTKBH2Xh+6p1nM31Ca9rhIOVzsRgKIzt0FpuQiFC1UZTmKhQoUKN0VF9U/YfKOSl5jebnglRk2WNN2zRmnMdSOBVq9na2O5VPuXOqYZAjyqgx7AyZd7dEab6lUvdIjYJ9Kk+f3Qv+uzu2VMOvTqu00n4sYbAAVGqe8aCdJ1XbMJaw+67Q7vKDTqu9d3ZY7bkpcw+GRK7PXazw4ZLlTP6W6dSsWGu4TicR/lU3B2pB0H+UaxI0VF7NG81BMohsAKeQCxRt/Ka8u5IFzTLd0ztM6O3u906BNbF2o25W0vNz6CFhRGQoWfsPlGxtS3daURc7zn0yStEQVh11WBqhwQfy5+glN68B1MOYJ2lYagqd6yEztsvLXCDPJVqzsYEeDmU6W1sbNce4VR7yQ1rNOac9rG6qrQqh5GFGtT7kN5jkqdSnUZgemf9fUHX3VXC/A1jU6mzWWwqVU0nnSQi4gtcIxnVU3mqxwIQo1C6NA0KsdmMp6/uVF78MQURpogzAOsoNEEzujoFHvC0jdNqOZ5TIXf4tAmswicpsNkLG4ySOHF4sQiLwoUJ+yNjah+q+LWDeNCL8s4nF7FQsOmQFFsohwQcDY8QrCoUKFCi4qTUdT3/wBKkw1C5z3Q0GIT6fjc+kNIXZqzRLKnMqqcFTF3JgjkmvJqt/a5sLui2HsMyVUL3NwsBJHNVuxvxF0j3TXMpluPVo2MLveyOjTmm1KbnEtbEJ48onRd2zAdEabXPkH3X/c0Aw/dVA4wWPVMOZTOBmvKeaY7C12J2s6onVTIUFrfZO6dVhkyneHfqmHQcytZ6EKn2ggQ/X3WhzN4JhaAoHjaJ2WFCePCjkojwH5vEoX5oqM0TeVAQaoWs7WlENKhw91PEHmPsiVKm7r03Cme7iCefuq9KuGY5+yovaKW/wAqo0TjwYQeaNSs2kD3kqnofCWnWdeS797Zlo3RrSWgaDqqXe1XPD3GJ0RDHDBy6qp4DptyK7OfxPsi38UAGU7lomtDZ2VSjicTyhOpupjwuMFUu1VCS1x+PZM7sY51af1e6a3DScSSR1UPfRBZACoklgDuqLG7zqv8ItEojWJQQM8k0ub5Sm9oYYB0OQ2OUWKhEShoOKVFoUIgLCoUJw8JTslNsUwMrbQovFiLhG3LgEArVqxDgu0TNAolYdbSsSBBUWI/EjZ2/wB1NR7WteY/cqzKVJowN1PJY6lLR4kFbuAYyWrAd9nBTiBa5GdAfsV+I1rIPi2XdObgbzVang1dDh/pHsmsip7hd48uHXZYHuaMb13bwPMm0sW7oYOXVPjuy+NOTUyiKgqHboFQc3E0VZgbI9p8fdBsqW953M6bqp3OEDFEbFUhhp+bF/8Ai0mf4tzR0EQsWEJsjdQEyq9m+oTHtdseDFzv6AI2hQioUKE9jXMEhf8AW6OX/V/vRpsYLTkGbkgoQUIaI2ELmpU3BtuFssIUEIQvvm8zoWi1ClTNhum37Q0OiDqoexkuieapvYXknzHaVVe4fhsGsalDE4DX+E3u8Tg0lOoktKIc0AO1CqNBwPp6nmsIr+PCZC7QMPZnAFd1NINceQVbslLDLTsv+vWGOCYAWJ/7imPqFsvqDUeFdn/8kO1VOm8u0MEFEOGJ9WPb5XdvY7GDqNV3he4YfCXLtLaTKIb+pOxAMe2prGyxiMUok6GDCY5ppkwh1W5RALkTYN/UCmVxs/8AlDgTctQyQjmNxlLVChQv0C9TccWNUULzaLltpuEUFChQQsSm79lTRyxbFZ00qgdqV34fSJ/lMDavidq0HRCj+L5990zA0YW8ua/6zJJDjKdVezwvHwU7Vd3hdiZ/CpdofOGoNeScC+vTB8o1VZ4FQYhodj0TGPawsFRsnVCrEU2+MwqnZatSpIAHhTaLHYab9ICp0qlIuI0HJT2Ykh2h/d1T+6xiCTzT3kuLi/bZOoVqkP8AZd3Xg1SFSq0x46gJlGqarhgEN/2hVe+pDtIRY8ODmmU4jZoXi+LQMUqJKlROpTX1Kex0TKrX/Nm3i4sUULHgQjl3tCixC/T97vPi4Qyi5XPJrYtQMIxMrEpuRbCCocEHTYmUNBwJtUfVwjkXIUKdOjDtSdymlzWgIUyIc5+5WCpTk0xIlBzsY1A02T3h79PK3/aqPwRogzHRxA7oU62HC8acj0XaIDANZhU8VVn6nNG4Xe0/D+GWxzTTRothmpcg/GH4HCZVCowPeSdv1Ko1ph0ldop949pBHRUyRWHyqkCo0lRUc3Vd34cOuqrUmBrddAsFTFLXbbJmOs7CTEeZVBhLIqQNoWmuq+bRqVzhOMIHQW0JTajgITHA7cA2N44Q1Ri4yFfuudSTYaqDcBQoRYhtc2AsZyjRGwthQbcoHIQEbAzmjIWd88tnZDxQzGIComoajm/oHNOFPyvdqdpXjpO83gAVICsMXVPohuFzWnfYJznEuYRoSgZd3YJEc0zvYLSdtiicTjoqLSxjo25Jwa8ONQnT2VBuCSHAtQ/AecTR4+aBpVg6lT003TsQaG95ieHaKi2qzG9zhvqu1D8Ylg0UOcxkoPdVxNL/ALJgghveeIIhpMeZyqnA5rSB7plQsqOIHhKe4vNMnn/hM7wunEO7TA5ryHP5oUtQd1gqeN7eugVOk4VHF7pQ90XIB26EBc1J5OhUq7To7fMCi5Txd7Rm5WqtjXlzWJ/6Hz8rFV5uTQoULCsChRaLOZzCiUdlCjJChBE8U73coXiaUHrdReVN+6rhpIcZ3K7K8S+ImN1irMd5xryR7O10l55alFjDSjWFRbUp1nNB090aT3ATU/hf2xPym0w0udyKwmVUgNGvPVVKkNbghVy7EGYo8MlMf3jXYeQXf1HNALJKY+qxw8TS39UJ/ckh8+VGu10wDgAj+UHd7TdSePL0VLsrWtEk6KoAKZLW4iP9qmyqwuOEzCpuw1G/K7v8b8TYlVX0XMc0lv8AaseIA90JCb2p7MQEaqg0luLQlU3lkAySeXRVi/F4ag0EkLvgCKjmmD/hDC7XkgpnVNMu9gt99liB0A2RgpldzdCZCp1Q+5XJNGQcCMhuTaVyu/sjHHQwh2UhCiUKSwLCFCi0KFhBhQnDmigEbRYZAijwwnaBalMgI6osClzU14Ptk5XcHgk954eawOpvBY7TqEysxlVziCZTJrU6sGJKpYhLJnnKAZMnUo1GNZqdFTLXiUUFUEmIVCkxrd51TywiYnksVKlS02CeyMJ66lYT3odGkaqjS3GAa7+y/wDE5nSUwVGU8ZbqYTjU7tsHYSn0HFjYfBA1VJlUND36nkFWaw1PDpI/yqr2YA1x+6/+O/wySeqD2YHgdICb2cuZPMnRUW12YwNAmvq0jrtzPNFxNXwRJCYRWEGIG4QaAAAh7pgxSJUQ4gI7tR6IboQufhTO0fuQ1UKEPRTkC0R4gs7ZYbQoU9LlG0qZ4ULbnaqJCphQMhZ0Qe7msTTbBd4ps7Thw6Fu3VeSm4be3RGm3v8ADAJcN+iqY6HLw8liGGQfEdyhPIJ7Hvc0ckwNpaNRcDUKqPjDqoXd8wmAMYQIVHs7TL3ddl2oPLhB5JsNbvyVM1KPeFx0IldlrTVdyDk8TT+Qj3lMsbinXZOqGMbC4wdQmVe8JqmQ1ogpzqHdv0ExKcKQoSG69CqGOdIVLs7MfidodlUo4XMwu0nZdpc+o6FSpaONQKt4Q1zT7SuyhgZ4dZ5qo4Ne1jI1Oq1AcDJbtomU3MLnagRzXZqtRzD4dVJGp3U6oKYkoTIKlvMpr3s2TK+LaPuhMa2IueEEbFQgNFGTdN4MWFiFKNt1gWG54YubPTRpnwoVCNwsU7X/AP/EACwQAAMAAgICAgIBBAIDAQEAAAABERAhMUEgUWFxMIGRQKGxwVDRYOHw8aD/2gAIAQEAAT8h/wDPZt7EImuH/wCbpYgtXAv/AOGyENUMNx+wv2fIz5gld0d4QSFTv/lwyyw35gI9+2kMTnAlfImf+UrYKMNlwuFNq+0NJJLheNITCZ/5Ktgb+BvkZS4UpR3xGvt+Vw+Iqxub9D6kiV/+PtpvA2N/3GxtD4DeilLi4cX7fvz28OLtixBSlKJ1wxY3zf8AjfVRHWF2NtJv0i/7Bs5Fy2Lv8/4Nz52fkzenLE0ClxS4pSidFLnYml/8XatobRwNN2Df93/gZsfI2PnLtUIXawWIvGmt+fwXFKUTL0TljzE3gT+hfIQ+/wDxJ4zGMdh+FOLi+KEtnS7jyd/iuXZ8piFwFLSlEErsr0Iqn3/4c/8A2GHj7djCxPyZrfNG2CxRjZw/I3FRHG8/4HXldFKUSOxJ2JHw/wDwtDcgY4MY2rz15GzQexFRYo2N1pD/ACb178/Q3+G4QkNb38eDyd3/AODNGYyMPkxjexvxkmU/ohYFijZu/wAL8nRxfb/D8C8Ojcb/ALmLeLiidcC+Am/+BySS7HfZoe57jq6G4iiy2fYiO/k4ZbGxfst+Nci3WF+JDxEuW4hJJLiRr8Euxewn9l/59292uMHxyPisanJbG/B4H9ZsxUjhhvBS9BCRv/4/xNmio9T9vyWFM6LP2/wqUpRDspdXB8gmn3/zTdH6Q72M8DEDo/Bl9itru2F3i2SQ9DbdyS/v+NbY1I8tBMvC84syefL2x/hvh3i4JXYvZCdw/wDl1T5YNjwNoY2LLDx7RxC7w5Y2h5Q1T6BPzbw2h0lWNTp/k/IZP58bPy1XTr8BOuxP2jgX/wAozbf2GOA2hh9jfgxz+A/yILsJndjcHEN57psSia78qUoxNPlkhf7B9IXHnzm4/YtfSH+F5t6XLIkkl0svwpRND0nJ/wAm1RtEDDY9j8dRRMVeGcuBz7j5WbVU1oen0BGxLVFm4pRin3Cf+j4gXlRsQ2XRRnx5el+z6Aplfholh+h+LeWxJrXBchBpXs3/ACaOBhvQ23WXeBh8D8GRZmlt26LtZM2F6l7IJ2h6o5biJCeDZR4EvvRfxsX4LiukNix+N/Fcs5Fy9CS9MPxo2N3NeQiSSSiX/Jsc+WNgYbGzbyM0vIpJBPCQ1CqfxMkc+nwNJ8qjjgpNIc4Yxsm5+wbG15UbKObQVKOb2UX4qdC/AD8mNi4cS5YuoiX/ACjyV2UMfYw2xh+LaNd62KLo4YY0J0aPFutoa9MV9M6iDZAuRkodLsY0qjF4tlwcTqb+Rg+vwXDKQdkD52/BvLY005GQD/lbfXJyGY38D4fix9MT5EKLwLwZBJeLz6Dz4n0Mua4OFpCddTNKUbG8G9jEr2Q+Ff5/E2UuxPTLb82xE1XL/wCVbio+x6YMbY2PxZJnwSBfIsF635MY8jmrkT0cS9kgv2xr2hv2hL0/rkpcpojbKNjwTL0NVYvF4bKNlG/Sc3219LweGxhY/wDLGk+xjYxyGgx4XghPtpGheMeE2ft/hY0cwsmPDS2p0mQj6YzXKaFq7b6Hp8tjUdC8WyjZRhwh23rloESDpTDeGMNjCVN74/5biesOPODH3gxCyw321EF8DHehKRevwPEOZ+Dx3hjNz6h6EaIr4dci8KUbGyjZNCkv0r7ZcPDY2MPok/j/AJXgZt3Iw2PB+DH0Wz0wTXikP2/IiRL4yx5YxrE1dKCnEglPbfL9lPga+NjpcKMMMUaa+Ti/kWWxhvD7uFl4b/5Bp98nLB4PxZYYzb3YC5eE2fbf41qekr5PwY0bMCWXPVH86EVymUuUfrBsol5KOf5H030LDwxsYS+rpZeGxv8AkHT+gxwwYxh+LeJTJDistjaFpJevxI7veb+CFH9eFGx4bZzxXui+RRXYrWwk+AWHg8HPs2/BjY3/AB8K/Co3y/eRhseD8WGfytF4NSOGGym3xb/G3r74FpT0Uvk/BZ5GPDxSpkqe0NIOm3PR9jwYxj5nfg2MYf8Ax7RIY2sFUwY/JtG09CCiGNjF/wBpfj2X43h5780q0vG5Yx4INbdotvb7EoSjScbG9zseW3raWPeGMb/kDX6DXyLkjB5WYsFbrdqLh0NjYFnyq/z+KnFv2/7L8icvD8HMseD5JK9iWWTHqiMMprGR7lfg8GH/AMc3E2e9jRaGHg/IybL2ar4F4xo8DW0IkiXX4KUehokvjzfg2LUWKXzYyGvW2JHWGNjNhKxAPht+DGz2ORa/+O1xyNBEbDEDGPxcf+SEF0IbGw2p+Hko2MbGN1/N/gv49l+PwPxj83hso2NjGxze93gxsDdj/wCNVQTvU98EPh4IFGGH4sfRD+LQrQiCT2NiYsr5G0LwbGxsbGzk/wCvN+PBv2/8fkgL+fBsY2NjDqE70KQdKeDGOMc6/wCMVzKe/wAMe+Ifyv2cmX2KaLqBVpGN+LLDLJ9mo1KkyPoP1/kLex8lBuzdsSryLbGxsoxxv3vyuaUuhIS/GjQ/YbG8NjYxsYvdP8/BjZwNja3Dv/i//YGFVL2yrT9uC5XXxoN/Y+2fM/k+e/s6zoa6avg1lLoO1z+GPqtD45xayjFUl7EosaDPQcQqHIapHO/fhSjYwxJiV6LzpS46fkvm/FaSw3hjGxj8nybwGN5JJJ/wL/iWnQ3Z7ScB6/TRG5JPH1giaX9mwlF8tMX2fzCb7EyLRoJvwRu16Glky/ACbEiQuMq5/AOSbTG0deinKH6sTf8AiNedDY2NjY2PtfajazfClKJnL8L/AD4UpcMuVv1Vw+MNjY2NjHzKzWWMZRs0qfNRf8M2NOinJCtClr/yGbbG/kYoho2X2fQqh9BozkfoUYNJ32fBYPf7fIy/0G3pZfAvD0RS8+DOh7Q/wv0NuKxfuXZpRVvhHOh0kI+z37xS5pRspsNU3tv7fhueZ+2MYyjGxjl36tLwYxjNYX/CNEUNlNWG9evsYr3hrfCpQ/WS43+z2schp+h7aJ70Nvp7EkNMaFzjks5EyQVl5/xFmzZ+i8bhjxo2hFlcEwVL3rNKNjZRspoqLPrv8+dzcLSS9LDeDGMbGPck3hjGxjUqEyCG9f8AA0ZbFKMKoiXTNum269iHIhLQ3N8K3pbDSSfsTNfpmx6Df8M5HKEImOinJxobR2UNPx0zT2iZSexZf2LhvD8Ghobb8CXsq/6DbJXpehu4cHvkZ+mstjY2LavbP0UC1rxuKUuN/wCbDyeGx9Fu+3l4YxsqcNUdtqI6f19Qy2UbHAw7WzV+FpCJztjwUUpdF2V0+DgNECZSkTP2CRj9BMaTOOSVFOn8sS47SBn3K39lLi+LNb/gQmXHyqPZE19DXxf9hlt/1silHjg6T/oO/F5pSn+plsYx5dj+C/Xg8jNqo8vn+sbWLDDyHuN4Gr+dF+xaN9sew2UpSivTPq79C7hfI9mz4YfFkOhFGkVxSIcEpWNdnx0zaceJzat76C+jKz9XZfJ7i9uESUXWLspS6yxU+UFPgQPpZLmFqd/t4vg3lsbLEJEYbGMYxim0vYlZ0s0YxsYpJJ44f1bUeY8FKMsdGBKS7Ni3MbEz5aRP5OAJpLQ2c4g5ZV3p4KKDT5R8GNNdGh+jFwPkaYaomPTF0v5ZKOQxp+0IS/af9lshPjxT+DX3m+DwxDSVDQaloNcwTRcMbxRj7W/A8NjY59M3wY8GPabG2Ib+n4Go8FKMUbyN4MOPkvOklHjbYpzlTKWOi90R6GhVBLzkmIIU0bNM4J2sNIIjEujp/QuMLivgftLifAiqk+ClHwJFWKNlLm4g6chFck+DvJ/3jSkuhnBnJR8oa3pH96HsoijGXA1+BeBjHg5Lfe4sweDaIVf9RGLFKNlKUbGGyiBlIzGXoKJU0WKJlKLILCJhRH6LhM0U+j5Rw6cvRmrvsXOENwEtFg36CWWl9dRM00RSl/DZ+Zs/6Joe+38jUt/wHoOOr2cRT9ZsY8HH+7YkuuMseTGsQjgLE8b+RhsUoxSlKXBsbweSt4LP7sdF8KNlw9KIReqCSXopc0aXo+DOC4u8TlDWniaOKZ3MuCbJ1H09fsoe/DWL+GCHH4GcTZF7QqkIzDhijZcDln+leDw40MZjZ8CyWIT8kD8AYbKUbKP7KXBh4G9s9AwWin7MqPK2bCECw5yiW9hWb/8A0TLmlKaKE12R9D2iGibF0U/C4NjTtRv0pg9Aan/XGUvhfBCWxebw8K/sTU3GLhv5Hw/QvgHvgQaeDt6Qj1a8HBE42P3G0N8uY4Xgn7EvLE83sOuXgw/ALg2Uo2NjwMMNh0JNfOJq4XhCCUEUXsoic42NClwpfA/MU6P1+xM5kJqLc2NtnI/p+hBT0LHO+1wx4LStOxPF817QtKeD8XjKiYmt9kFijPtP4EuGv7CrRoa4aNq+N/CjRWhtPlHRYsS2IbXgnrCV9CQuJhvI2PA2UpSlxRsbKUbHA2LkGvLGHG0bN4J5pcXBMahNrgr9YFuIV2p8g+YfcfEz7B+xnzMMeh8030ONtf7Dywv3sR1P5HHLSJ7Pwg306MzaDoCTxL4LlfG8v8DP5Tf6IsNjY2OMegjb97+NGPngcb0P9hDbFnd4G0qZ2YnoTExMaBhSlIIxaUGNlKUo2UoxvBsbG8McbHHGNsXCOvC5oxuEFEKKUo2XCn94mcsRfktxpDNsOxdnyBq7pWIJ5e0MaMuGQDnYi+fxcsuL5PNqd6X1lsbGNjjvbPZx4NDaHehs0Tb/AF+BfI5i6woo2Uo3hlKUuKNlwbLhX7HhjG0N4MNg+cLCzfJXoGsgIyUuKK8FRez9I0uFBhV/g7SNQ6yNcfwafJbj+5ZRGUQ1OAzi1sdRpqoTLilN6S7Ll/ge9e9ESSS4Q2NjGNjYNbu9eBodRDGk4Z7RWkscPJpG7WuzRCn8yoTKXFKNjYylKUuVKMbGdYYziMMaZOWEXNyxGKcsS6NLhYcGjKCeKKuCO9l1MNiN/g4Q9+AcwuwxrFg1w0mbRAU9224+BolaKUpyvopfwLHI58IYx4bGHJHI0QpV0ng0NtIbTHemchusXk4OULjX9xJUS0NE29XP0XpoyHopTVo2U6Hi4ZcNlw2N4ZcNjeRsGGcjsWLm4RSQ2UohJ4JNiQ4KUbEm86EklhEfyxmmicrDSf2Voh+0r4MJnMh5WJaYJ/kHRWsN4Y2NjYqbxx+/I2NJjUQz0Jby/F0qI3MuHN6KNznQmfI2+y+DLi4b8KPLY2NjG8HHg2MXR2LySE8LiiZp6HsVGi0O+YXwbJhjHEMTjDbo/aOTSbNojhpl96K0JNP59ivmq9klN+7wR/6Gus0vhSiEVD5/gZRsbGxvNe+3t5ZTTGHTdH9hHDybrh/oTGylLvGpaZdB9EUbzR42N+Dyxjwx5mPBjQ1PJM3FGIbHg0JoqLilv8RjZzC/1k5Q2jhj4pUkZtozSxjrR4T1HwPQ66HpTe9GIIfYioi+LxcaP7jQ2MbGxsZYdpVrQXe36Ej3+y3kQcco24Y6h+6GUbuEN5TRo5eCiC0LhLw9jbj02NKXLNt7Hr7Gym8PeLDfmxjHkY8HhPFZuKI1hjCNxjCmvWUqnXYmUZtoWOuHpj2sGoznRtM0kDrwtOdMZG60Kcxd37gnRMXhSlExiYSSRfA2NjHkkjkfIYl47bfQt70eh32mMhK37/FoxV4VlKOyrkT2f5O0/k0jYSw8N4uGy5eGMeLGPBjGh84os3FwmMeBjEoImGM1H8jwzoXHERxGGo8PREmzjTNJQ03zLT7HM1PZr2LFL4XGyPW8NjGMZ+xj/wCu34NCWF2aI6QxWYjhleEQpOFKUuOKaDOtVjbCtFTYJJIvycjZRsuLhjwxjGN5GMYxjFyvJPaOwCcu/obmmcixQuRJs+jLE3X9DTsxkXCVn6H0Ue0xDweDVRwagza0+UaSM20YqJVpIrpmsfWOiLilKMuHD5Z/BSjDGOLlyziAXk3ijaQas+RDb85Rf4jkxn7NlZ+4lKdw1w9+i/A0XGxvs2PCH4vDGPxTHhjIJVjl+Bwp1b/0QtiTKxRtecNvFKUQQmGHydiwmIIWPlCdEgYrcF2aEucaZSlGHgfMSD4wxjuB32f/AIkIXix4PQ2vnFn4emXRsqxTRrC1ukGuUegaEnYjjU2PNGTxeGMY8GPDGsMYkfmpSUSSyylKNlPrg5CH6EMpcHghs7E8UX/sJ7KbQ1v9Hqy+CWuiJw17QqfA8RSjY2NjZ+q3ljHg2pf9wkLxY8NBtwQ4vwpGhEcsK6ZWjXogb9BToO3Wk2b0TLzsuil/A8MbwxjHljwxahc+OsQXGb5cvx1GWeBYaYsXX0UZRPk5QQ+ShwMehH8E+37NOT9bPkGxsbEHKOvswWXBfcUPeISgvJsbG8DdbeHv8EIa/aPFKUqpog/mbZ7HsUL+BjGxjGPwHljwxj58LlZuGLLYuEMnscHJIttFwsMWHpr5O8Pk5C6THHyx6KGwOIVPlJ/aJun0M4FGJdvAz1mJ+B0NhW/8BC8WMYw9PvD5XlcKD5fhDvkpr0a9FaNXX+4QWL5PDwxjHgx4YxjGNjH4IX4KNi8GqXyM8kJaHsSx18sPBHE52LBq0OU0LTGPp9sQsWGKPeCusumKyMhtPR3OyQdGbVwhBLweWGzfQ9+msbP8MOCW74bWYTDg8NDTGmcnrY20XyeHh4Y8WMZcGxsbGx+C/IlBYpcMQshJsbuLsXAxdoQ0SC5cf2ELBBBPJkehr+CdLQ0NP32Pop6H+QFsl8wtIhIXgxjHg+Tw8X4uBsmPkNYpcNUTFR8i4Ig7L5vLGPDHixjGMNjY3ihFqYX408+WJCJexpH7GIMfKNJDY+Ax9Yuxi4Yn8jEITExhPIzT4tDvfIl5PDweLJq/xnAm3+Gcsw2P4Dfsb+UNr4GcbNY/TJPwPweGMYeGxhhsbKYsKLpVhfiTzbClKPFwlQx4dIbKXHI+KliiGExMoxuP2n6yxsu6xBeTGMY+fobGi/KjqOWZhnAaQ0h3DjLpebyx4YxhhjY2BjbwIoooIUE67QvwpeLExvCLi5IRxinR0h4SEIbSEIQhhMTHtwaR6RSjL/jEl+BjDDa+8Nuflt8MZzxS4QPsfBHzhsrLtifk/BjGMYYbyDdKc4FjRWSo/wAbvTHtpPzRfG4YvK4LDfkjt44IQhYTExM5tj6wUVaEkJebGMY+xqz5O3+OlEh+Yrl6nhMGGmhjwz/JC/CxjGMMPkUBSEUV4VFiLChiO/8AQ8XKX4l4X8R8lx2yD+RCeFhCeE4hxMTJPnBMvLGMYxww+p+SoTw6lPVT/WKvBjYM3jn9vJ4bKMY2NjZrfA9+BFBZCgtMCMwx5XW5+B/hvnS4fHi+fB4WOd/0IQsITEIT2hBDrPr8IxjGNuDrRdYev8KyxMq5Fi/l/fY0iEIyv0Rggx45heLGPDY2N+BjSsUuhBFYixUFgTxQd7Q+HQxP+iv5I9j9kpJITEJiEIQmdhjnwgvC+DHlYm/4w8X5iIargSI+G/0NeNU2epDQbz/bHD6fgMbGxsW6BH7wILwC6MCxTEy0MQsc/tclGaEmbm/nWVlQXs/m4/ZwL9i23v2OkamEXxuT/IWklBL8LGPGkWG/K1vnPn//AAh+LOGDzLofwvwNjeH0m9/iTEUUVmCKxwg8QmDQgggoXp/f9J15MQi2xbRffyLLSaiVDvOv7HLfshiiZeBqObGxL8LHk3N4bQ+fypESFDm/L+QhPBjQ0P8AEGw2JSY/TL2JWFFFZgiijPCE8EGhoTBUf2azS/nfHjySS2/tghCFn518HWVe0JBDSV+jje3Il+N4ex1wsP8AgQvOCcva/ubH49GsG8PH974tjG8Q1v8AEQsKCKKwFPWBZTEITMw0NDWHSIfRsaGgy1+dvwa6fvo3fPsISEIXl1MftCVe9/8AAl+N5Nyst2Pgf88mJT5FNjtJj8WJ8j14LOxsY2faGyt5KggsVBFGE/BCYaGgw0NYfjG7iwPFceFKX8SQqJrshwhBIQkLC8f9UhfgPxeD8LN8/mVIxzRdD6qHmlGLg8rOxjQe8/mICKKKxUUUEszEJiE8J4NDEEs9KEsbkDLYZ+R9ENpyxYCCQlieTHpaCF+R4bG4mG628P8A0JuDOnwG39x+LEH4X+fDGxSbP1f5iktYEF4EUEEiEEhOk/BMwmIQg8Fb6I1pHwjDUb4ECiEPiKxJ/Q32js7EJaWCwEhLCXkx/wC4QkkuPxsoxjLR1htDfnbLBsgkX78AeHgx5XP2w2ftehMV+lhXjQEUEJ4xevwzEITEIQmDKxXQeQ5QwyzGKV0SST6Eq6KIUYIIIJEJ5TXXYtCSL87G0k/4Dww/z0SiUYuz2J/rfkcHg89vvE+T/gd758hERRQnlPzzEIQmIPXCp9HoG+h/gRF6aE7bH8MUIQSIQhCEiJgifgZSlHh4dWX/AEFwouhqoR/E/wA8XnYx+BicQ+cEPF4RRQS/pZmYgyEIQg8B4D+GDf8ABsWBYIQhBIa0XYr5O/xPDyxl5bG6xjY/6BCUwoWd6j/gXY/B6GPL7Gs7b4GN75fLy8OhFCE/pZ+CEJiExMkjT0PH9PIVi8/EJ6W3+K+FwxjVHrDfn3+Lq5IgPmcj2kPLwY89Dk9NHCKSwoTN/p4TMIQnjMwhCD8Qv8DxCFNuOsz8LyxlFt02eGP+imEioPl8I/hj8EHR4ZOvtLRoRe2T3svWC/4XvxnnCYnhCYQhXP5EppfheXh4Y2Nx2XnDH/Q0YkwpWxP3X/KwYxjGPHAam9qRSEtlvJWJ+F/AvxvxnlP6miIUkQvwPDGdYfg7jLf0aN1j1FCNtNv10J+xH/GDGMeDxxZ+4iWdo/cPkUXgvxP+jZP6ab5EvwsYy+LPY3WYx8f0ZjK8cexJLjHL9r/ZixjHg8cBL+j8q+hENUsLh/8AHNJ+V9iRPwNrDfkY43PAf9EhffoTl/A2wYn/ANJdHKDwxr5HB5Jfh83RSFWEy7+BNPHouL14TQz/AKml8UXz1X8iXlSlWmHMsfXz4udct/Rr/sYuGRny/sbJP2h4Ywxsbx5fp+FiovUV7wnoWKXwiEqEs4f1ExPO+PLhMTNL7EeWh9bP6TE1c/20LbdmSoklpgJHY+oXe/oMa9rLyM9GhphsbQ2q70Jhj7H+JfiyDRUiobugrCfTf8MGMeDpWCbfmfj0bpo6a/Yrb3vjClOhN8nZ34Xx7/4ALDEnEepe2v8AYTHtH00hK/3bLOOClKUYu8FjaXJN3+8ovST2FrHrZKoTw+UkT+g+UYolseIiRH7r9rDsY8J8iLFdv4DyjhM+ETR6LXvRuiey/wAUC0hPQpClKUv/AAUBCSSSWG0lW19kMOi/9DWy+wo2UbKMMUPBZsWDmsglrNOO/ZbTjL4TRwKxMuZ+X/4pnb79YVGso3cYxjGPD+6Zn49zEHUye9V8k9jdbNv7ClKhcFLj9+N/rJq+8c/zNI7ij0vBpKIbGG34BsfgFKUbLMHxdsQ0Q7bJ7i5iwpbid6yrRe6Ol+TkdvfZ7NffYuYLhf8A7HGRjGMaGhd3l78WXLOB7UZVXWfJR3dvkWt6nHyIfBcdsIpS5f8AUPCaBCby+l7Enpr+PpmlGG37Gy4UZSlKMUbG4mMiEsHydFS6IsMpRMomMmifgWUB9+1ydvH+4v0/12fsH/c5nYYxjGM/uI/Lv8Nx0VojvyctXBVfT2I0XobrelrHYi4uKXLf9Ey45PYXZjInwekNjGxsYYo2NlKUpS4bzq/uxBojYSxUhWdK3OK8NCxNeysqNEwxZdNYaGJm4TfvsVcei3vRtvJjGNh/kjy/x3Cw8xQ+QuBdLsb/ABXwaoh+z7O+cUpfC/kvk8oSEvQpXng+WVsoy6w6GxsbKXFxSlzwmz3fLOhukIcHCt2M18KRogsbwTXRcQmYjI0UeDCY91e0xXf6j/WDGMeD6OD7Dw/wMeesrxsF2UonsamQ3ODZ010J94ryil8r+GD80v0KJcn+IhadIoyrI2Uvg8N+W38wQfrHY3s5ELvFKJ7PgmJmv7En1hZIopKsSOOExZ6Wn73ixjo8O56vv8byzsX4e0yvbEvQmn1ybumG39DZX0Lj8C8b+F5lX8m72cfQ2Nlw2NjKMbLh448W6NjpXyxuIfb+hmuv9A+StvMyiA15xYXKZULYW2xOmhjUPRzkr5YzGKH1sP2sXh4NHIJDNeU8+8d/hWHzSiexXEJ8mpq1VDZlEXf5356I8tP45OijawbGXDw3i+DzB8fQSNmXytfwXrnv/oc4HxhstRSnhH4zHJwc4I2X2g4aN+CQcfK6IpjQxjw/txYvjl4ZTv8ABv8AK8UnZBN7b2jb0GoVrTX7P7njfJ+Ky8MWB8b/APYGNjKMYpzl4vn9w+CYeI28odOPb9rk6rn50xO09vTKokSjq7FBrFGfsqY1rBrYsLjBwhG1y37JI/Yw2texjwZ/am/1vF+b/Ffww4OYvQm18jaavZeiv1r2Up8+CN5uGIbgvBlC6JZ88v7ZRjGUbGXD/Ev0+DgoxobEJ4TB6DSY+ofwFaNXzyhI1VsgkinoVnAmao94S0NjeFyU5oUG0vAaumU3u/sTS/TGbGv0n9lH+HrExfxUvn6zyMbUaI002NvhKJ3jouFm/B348+LNvt/UMY2N4PyuJ5PwnL5+iSIWx6FtL6INC4OxJU8OCYyvlfA+yPtci/TGQQhNCCPDBsxTvCkDgryci0/AqglQptt58M5dQtK9HzMuGPrwXl0PyXnfDvwa0bpT24F8rqiWvb0za5NFhvwb8Li4W2kegq/qQxja2MY/JrzbSTbHuq2xxI+I/wCXgya5IcC5wQtmh/Bza37HqqHyVcj5GIe8VWLkLQzso2XY5m+y4cqvY3rRBclwbCSXPI96ezX5Nz9DxT1proSVOrx7835PC875vg4zWfUEwhf/AI0bSb5+UIeLhbHoIuG8MJx61/crfK2+8MMbGP8AL9CuTs9wOBzaq0cu4+AncJDYsIRDQ3hG01RxzfT2h8w+1wKfDH8kanBpDKgvYkeoledBsrEzfocFBp5ZWHZrWKkm3whvvv8ABQmPt/6Fu+V/p+vJ+HZ0KFpi6V/0Fxtfhn0hSnJoi1lSLWN4sX5/QhjGMY/y7k/cCXsNpWyW8nQSpGMWi0uh4WKViEEQ8uu19DhaPaGnp/o2FGQOKPS8CEcSOyHozSbFA2U0/n/Ao3lpQZ/6PWVdfhfg+R/iv455OdCS2lwe1b+CXsLCnwIkHWlyca/kdcD+Dm3S0/XIxzBjH7/LTrwuBCpnrkf4RsgTFvCNPKxq47N4eNUTykjHrz0zX/ZF9OiXtE2x6pukFiHAw3SfImUbxp3HCH3lmpv9sXWj09jTIkeF4pnf4X+VeD8lpFw0lwJDnJz2t/wOPj6pn2fYnht9nCGSab6r/gnf3/kMbG8H+V+lyzUFecvgbVvwPImu4OvqLhPk/RRUQgquSo0J1eOh46EzZyQg1NE0ac/9yHoP+u0QyWWkKJXk1iFBd6Iv2Nnm/Y4P0EjYq1euwx4oJi8esL/gkyoiNiahrKT4b/kFTfBfyMYxsb2N/ksEq/1jcHB1FzQowkLQysqaGoQFxClO8LLToiH9GhRMp0fs4FHhMuGh8lwsVEelosxoY2Xl+r6yhWf249Dbiwv51/QUv4XmnJYTl8sbGxhtDLilL5o3Rf2JQmkkUK94aG0bGPCeOwteDxoonSJrkScw2Iv2IaXYnsUN/wAGL0ECBeCRixRXfcIs8mPSfuCRaWj0Dp1tcUMgiVHJ3/uxTrwfHjv8Fxv+geIPLNGhdW7MY2MouJ+JCUek2+WNpK+isBPNwyiGnRtM5w0h1FNlyiQnixwbc5aom9YTN+xNYg2RupwNjGNkbJLluF4l7LZv1irDGIOcaY6nGoUYn+f0P81L4vDYgeOXo+lAxjH+Xp6YSLtK/s9BHY2EdeCNNcCV7TOORsId9BqMQhRA2KMamHyLD2JYbWN7KWi+yLU2sPC2RLYyP04DDxpTX90bETWxnrYx2esqGj1wgUvj3h4vl34cC87i5pSlGyjGdMX6AJRXwMesH+RmtOXwTFWPpF2bkf2US1lWb8FsbEsvkcNMjGJEIQW0Krg5QxqDOGE2bjVWGiC038laomhPSOiDuCGK7HP9Zy3wAxB1Jz+BXMRF4CRwlWMoyjZpwoc1ggxS+d/qKXDY2N8iyXjY+BjGxvf4HnUZ/pBHG8Iu3hPBXw7MFhbP5GJw9PGiEMZMwmcVy81I5VCIhXNDrT+41gGEZNxoUVabbb5GnxmfzuL08Wp2GWN25yMUonTF/YpcUpS+F/p6MbGzZ760PK/ybkvfIlNQ+7fBsSkhD/aY1hQmGSFFaP6OUUuXmPEN4Lo5xcIYmfJomHYgnBMaEhHAtjZZme39hNHbY62WUbZAylYuZBt5YzGpzYSmnhSlF4Xy7/C/wsdGfsmv0MYx+D84KOTN9vF99LjCDEF8nJvyaOMPQQt43htlQhGHreexBWDXYmTydh94+a9P0LpAHl+oMCpCFEUJsg0zgeIGhjEDEm0qJ06Dg3/sJXwylwv9K/NsoM5TnYPJv8a1ev8ALH7khobCSW2OM4JSExBMo0JbOW0Ny4HGIJDW3j5FhFImMi0Nl0cmTxTU5K9ZpMqTTGLn/rWM+tYI9EHFj+GEDDw2ht4fsG37L9H7E/sbcU4QhPnZ8Uxi4pfG/lvi8MVq1d7+hVTXb19Dwb8bFp9DXCKPOMKIZblOeShXsa7FRHsaTKQhP0NDOV+yzBcMU+RiQlRtHzS6EEODWFKLR6cdGMk/zhoQbrDRMQ5uhpa0TDyyrzn9CSIjY14uG/Q1WguaUudlxfzMeEM5ZKWnCUHkf4l9JY0nbxuCyyGspeDOiDxOw9pGz0rHRB1OH6LhiY4LiRCYoQyECV0Or4y7DQ2IhMwY9oYdaY6OlSkbSGl6JMtYeHjjdr0aGxlKXCxfxvzZF52STpx/2w8H+J4tcvSEQNcj2FEVl+C06KEnjXrweKNkHNiLTfB/AJUUiDGrhyJND5NjEUfZyEsMhEQ2I5ffwGQ50hLMGO0jwgYOuHgSamFok2yRqZOSYeUdxo57YTLilLi/jZcUbKR9sWpOhjY34yU/jj/v4QvD7I4ZZoQsTC5EPRxoUusNI7LOMJ++BqMQjj9jbGjtYIhB09iYusG/vxwpahkgvCHWE0JaGn2alB0372L7FX0shsNTog8M7w+BY5BrU/A1rX56E+y4pSlL4Xxfg+i4+ly2N/iW098/QokkkKcK268TKkJgoNlxCYgjRoRCRlf0KkcjZDRwhORLZC0PeIMPffJjehlV7Pg9YfuFa1hjVQg1fNDgOlE9SxqURy+S8bFguW3vDWzXY+MNECMQhIsic9EGOaxDDiT5XAkKyeaXF8qU3lkURZ7jGNjH+DS7HSuXhXwLxhoc4LheKEh1jrCw3Rv0QFGQZ4DrEGhjuGUp7wQxobMh8lwuDmhjcRyNeTTpr942C39jcrTZX1KUK3ReGqKNXQ4NqIQYwcHBySFpaPYyDTHdWaJtL8nEnjfG+LFoXtBKfpDGxjf4eqa5YfZexqOCWViNm8QWUiYJI+ng03RA+EihIYbLFHUyjQ+D3iEx7w2MXJsY7DKDNvJY2KIhIlXA0NCftG2hBp+hMNJYvAfOBhBneTXo6gehtZfh28fOCGTVTqzcsfg8eHa3wxjH+DgFt8CELDbDMIRRPHeExqKieE+sSZw17IZrcUKHr7hfI2htUEMaIIS4Me4FEiXQl3ExM5HopWxNdjq4PhySDQzjN+DZVOSp8MSwaPSJOi7HiPQ0Xfsj5Zo0JPsNMDyG6R2xJhRomHrE8HNaDeKfJz65vnxNn1hjGP8ACuTrB+sUmH6HHgsoezoc+hejsuKvGg15ZDSJ8FEPo02hT+y3gWFWHVKbw2qMTiYYCUmcDOnItDeIGawlbZsIiaGdCo35FW3s2nsbOSEJpEN6PkRvhEOxKo1EpwwaYdJ6OWISEJoniKmXG8JY432ROL+5/ih/hrHftxjL+F43s1A3F40jFcJeMFoh9hY7NiJvQtaeGyGNeiO8ERoiPYbIaw+l7NBs2ro6/wCDcvFEl/aC2N8ItmlivC1CH5KaLoS2N045FR6KhvDDWG2Vw6xtDzFyz7QmxC7HzjZDWIyEIIhB3Oi2Xye6DT2nV4PBNPsMb8XM9Jv942Qvg1Dl4LD5FnZ8hJH2I1bJ0cnAn2LvGxsNNOKLgRPsoanQkIEGjdhaHLRxLrtiVK0uNehakfH+BdPllQerj0SgftD9hs+DpDE1jh4PF3iQ5OBlQ2RqGhkS6FwMiwgxKh01/pexr7r6Ek1wKW8iDNDQ8nmDcG8bzBpofMHbDGtDD/zMbGxvD8uBeT5eySwlh4htDei7dmoaHCjqyhMN6Pfg7OxkmFGxVYbY2Vni4chI6s0NDZOyZsabGKlE9id8n18GtqPoTbUJZ492/wDRQA9+zjV6ejEjSaYyXQtMOTSpblnRWVuoUwxkTCRYmtnY90sWZhiqsa//AMCFoTZpFPYapEnWEQ0M5IUey+KIIaFwaXycloaFIbmsYpS+dRB0XCFiYqZSlKaE+Rcl0NeRMTuWbm6MrGjscGhv7EMckNkqJ+BhmtqQWhbcYaLkXR/4G9GfRap8t/YfJL0hTbuuaQmSSKJSurhPbDdN79hVX6GaBNFxo/FvDK3i4gzjCPk5eOnY0cFFFpVn6EktDwPjYxqFjsYh34NaxoY0GsahZh2XHArFRNk/8mDZfwfBFpEf8hP1h9eDdRXQ+cQoeAaIRQfMP2B2dlnB8iDgbKcjRXtURNEGaGm+dsQpQlxfdFGqmxmRfj6Lcj90b7NCm3CjaSknHyKbrSfIk1mrx0PYPsqVT7GkvJbQxTgkD5ymXlDOGiYXRwfNSYgxDHorV0ukJb1wc0xog2Y4fya7Km1IPXg4zinBCaIQPJgvCC0xk8JbNEIcBtemdlH6eL5PNOWLL+iGW21IELT8NDmVgiDUxoWKaZYoymtHVRahYo2KiE2JGovrCITs4iQ9uS4cuIltVZqPrtEF7hJV8pitbT6G9IJTZVJXuI2J6S4I3sCXQqTNJREX0uxt3r+6LI17NNVMXCbUkxRzMGiYSo0Qgyc50WWqYZscG3FwmXRVw+ESux6DT3g9ODd8iRNQ77/dEHdse/A+0LGGP1iCQ9PLKJYjFxnj9xTXWPTP94HKqd8U636CH2P1JsJ4frPawmUUux7JvHZyRkJRQfZdF8IxNo0ehSsS9Dh6P4PAhyyLnFJ6bLenQ2T2J7+7z/IxJoJ1R6EOgjyBuH8D6CL+7OFOFe2NCN8HySbvS3/QyXm+zl4G3L5WHR+ZjOBu8YpX4PBmg7Qgq/4EppI5kVfsez7FOg3dnzkORKfHxejhorxRgluFjRCkXgaU5HziExsTx/zYrnHOyOOP2s09I6JcLLRo9mFoyI0xOogWsfZPeYLWNm6D0zQ4bpzBLZcPXAmUtzsmCCXBppj7exYq+DgTGPujZ8Po9jNtdX0kSuK9ubHM+Vv9fJc7UoNdI0gNq/ke1adu+zhJtv5FI3C3OhX7QQnuxJw9/d/9iUmN0TXYP+QlRGgqlNDXeG8no5xT2/BkM2I75CGLLRlIhH28doado10GsH6DgSGuxqkB/DIg5Tg5GodDQtbEJi46+NLR6ymsTCGk1GOH/gN3IgY7YxGcYjNG6Vx50u8LD4OiYSIvY7Qo2bY12UYc8j/AHA0x7fA3ot0NLTUcnhjQTargpGNaSXBDUbwM7ovc5g6ED+WM37fQ7Y2lLn7H1VrslsavX0hJMejNNaelwNdSbosirsR1vnThDz+u6Nb/AO0uwTGy5pyRHaw9UWNQuWNj+QaaR2K6M5SeytFwpGCvrDwKrIbTB4nWVwxBrJIhCY4r7x7x0cH3mrjEjxRZi7PY/Qt0hjj+C7bG+CWUVfCInLNHabOk2TojykoaGqiwqHIjQm12c84pKNbISs30cOkMiSxCQ3l0L8m2M6dGs3Prs2lbxGVahe3OzSUmzhsX2OZeaKp/B64b4HXui9OSqr1t0PTLaRT4YpD4/dNjT8ctjQ0nsxUPvsDjz3tvhI2HD2zgt3R8i9Gx34XYx0lxsUX/AOhvJUZtsa2IlIU2lsjHEb7GVhunq6OAekbE1wx8jpjdEDCUZanxkwfDGvXjM8ftk0dC/wATNhk0z3xPZwLEE2uSQ1O/3Gyic7E3cUZRLvFQ3vaLvDmvAusSFFiiOGNTj9HCPsksN8iz3aTap9ezfq1xOLFnGt3uP0h7sYXwRpL/APlNHm7P9FocfQUFUsnX6f2Ke0Tb6S+CdWn9vkXXSNPs/sTJfH6FbUEf7D+yZ9nDcc0TVtU/T0hTIRK9g1Rd8i2BlysMdRCFvgJ1NzXHwdCDcotRu4WFoyi0NLgnZUZv4Fjbeibhoj0V8i2NP2O+x8nJDtpmh8J8A1g1M/OJojIdRRcjeP7rx4PMEJDsojb3Se+xiHpqjWq2aR7QmuDGYb6RsoxoS1hBYhrQi7EGxYJDnENGNfAQlBIbTypNXwqlpcLxEnJ/J9L4Qe8GIi3fXR7VrUWmJFmr00TiunPoXIkm0/ghjM3tSpCTP/7s5TJH0RWhV9m3uuV/0I4S0netnA76+B3Bp+iOI+f7FVqvRSiS32MMEzjfFlGiTbYz4nAmtnoMSGPs5DC3mpo36wWJtiu6xKV9DcuhdmTXGGh2yCOsGn6IGvZB6YG9TK2TCNEOH2xWeD6F4tR4mOBlNdsabc+jTQo+w3di6WIuAMIW81KiWx7JrMfRINjWixj5KuF2FiDENFaOT2Jbdra5bYjx5bPB0/CP5HHymkrpUSOuuJ2kNl0+G30xHrM/sCtFn8CLDTSG/tjH/NFFKgkfcQhVqlF257IhuH0aOG7eglI0d6Po1Y7Bq0Exwf8AJ7DenI10RCxtaR6+RpueULq+J8G/hZbjxa4BdbELaiY0IawifPZSSiafZQ9gw22hGEGiCaRCDUfBoaFuDH0OYwTYynhPi5iFENCP7AVEyB9QuScRRcEIIT2bFDUGQ22iqb1mEFg80r2KhwSGdlNVONvNSGxkxsI17+/kRHQlfbs3sdrbQaEl16fsYrFNc7Q7hmn83tjKxvtdie9+QdQ4/gIjIk4t8lkdSfUqt0J/YUSvIbJ1+7vv+EOI2D9Ohq0PNVx8h3fGclan8KN5EvaNgPS5XQkT6n+Pkat01WFFqe+NiC6egtIRP4ZTR8OIt84ho2JhvmJlTsbnAmIaELrDSEaGMaN4o8foaRMOAnbY0hohGF3nKOGLp8CFoM01+xQhwVrgaxtayxaYotqlcPYm73oS6FWzQpaOoKeznoUoknsiKXNKIWxsZTgdvf8AwWj5HhdG03hCcP8AIXR5TYn9jAcolaKMydOwsh92kzfSi1ELK7rqiFH7/mobdWrr4JQtLr/QZ2w60LxvNRr38G7tXp9HJPGdui89drj9DOi/iza+aPh/ci8ZtV9myuTO9rky6020h3RLSQkTXZzOWc2kNcKqxjNg5LjYjgNmzIhCFFcWTY5OSTl0fB2IYy42NIg0QYg0vQ4Jto0jhoawQewmn34yabOvQZITRuBWHKNtF6xMcCeoLbEW57Pgdofc0VpRPRTkroRyRwmz4j4Yhn6y/CCZEzovR0S5bEiUGiNifQ29DbEZCU4W2uBoMaX4GrXDX4o2Qb949yaCq/uPd9EvTX+xa15Krh/IxwNU1sfgE9/AUKS8rn0JVnDpx6FDOBPhl+id37GmnTmcEg4l+0E/Buqj9sM4GXb9pvYyD/sGxOncpdFZ7Ghc0I1e9BLY+PQz9jiL7K9g+noW5tMCMYoJp6JmjOY+WIZ0LkUmOUJ7DewyyvzMaH4QaIPLOyPgNQadITkiD20Mp/ImGU3HvJpyQ/RMJCKL5CJiEglhk+BtnA/uCPZyIuFJ2cqhcHUSP4foa8m4sJjWxm7hpPuILFQTZ0PztyEdoonf9C+3SrL6M+8kF5VKuujaa3R/cHCXT5rgoqirQVWD03ZsfjAihsCir2wjtDd1wPtIVR0Yp/kjzSTZ/IipxW0W8XQMj5k/aDrNPt+xSitpvs1xuv2cdfCj1UvoNK318llWJt+xlttGzYrIb1euj7AQmpRF1hRqzsT1MshFzQ9qQ8IlimEkTY1hYedTCYtHAYomL6DZaHNBS5W8NEPZXPizadQxsNmuRUR7U0I00LZYPULsYuBXRVm1w3C3kaXR0JnP6fsctOoTSnQnyIYsUaKaK97ZKH8Q9dGrFZpe8NnMNvUP36GwByi5+iZLmvih8Kqzn+TtJWrwmUqOyNdM6hEv0g4B5Nv2Oa2ljfG/Y1EtHUXX2P0XEOxJTB6SRPj5FpPj+h6bob/mKLM7iv8ALZt+y2f+Cwp+xnMG58IbWotGnTGZmmvbRW5mbiYar0WhK6SsxtCrxDoba5fyQKtvkexw+Zml6F/8g2LhrHrEHhV2JTFabLCap2TDfC9klfg/CCVC7yb+iYoLejYejOXSc9jS/wCVCZ8p/BrVb9sjwTuXfGHwJ8iK6NMwfwObGPUOmzgooPQ0Q1E1IbXBTkY0G+Q/QPYXA3dtCS6QqWO8yIa4Im1P9FmgfHJrF2LzishebV9jUbBL5Dbq4mjRe53+BFDRVb7aHtJ3dK0khXKX2cWBqF6GlFKb1DdB1vl0aTmq+Rlon+wrTyz+2Sb0b2KKRQTg3VLWxcps0X7Bxt+hnSV07adCk2VJmgFyWN/vkn2aNIfr6Gxtl2l6FluD20vXscbkr8lpPguEP3uIRk3EiGkJr9HI1R6a2uA12hpmxcFY3rMNGxyGwpaFydFOSeCHhomCcKQM4ZGNEjbgbehlf3MdHD+RkEphYQzhiGhfJ6BqoctD2dHDY4zTse4xJNDl8mxCMu2hh+CIWNDpbFX2JXhXv2UrRpX/AAU2QYlhoybTuxvw0bYkDZVsVxm9n0MNWirt+2O3SS3X+h9RulDQhn50ctm/2nUJq++34ZIid6yITStvIkQ0ToY2oCj+WLqNLVrg4kVUct3Fdkercu0JwH7Gn8hmX6h8i7GkScfZZklEiNWH7vZDYm/iejSAbs2Pm1f/AKIFrw/+x/mNcjpdJOO6KclmZlI9dnD0kVwJ7O8vQ7SejE9DJkw9MJjZdtGi37ExPRSeLWsEJrPA9OWX2MITElv8Hs6wE00PRzPBYdV0cR7IQfLObJiaNcBnKFwJhpNcDFwPY2kF6I2wn7K8DUFTR6rdNK84qcoqSldC3meDRpRlEVzgb7HL/KQ1hfpLr5F8p6ExPKGVs5jXbrexDTVG/kc8+9nDhpo5bdh7FupIUf8AchuId2uC+62qbpCl9M22NhSRsRMbRJ/cfvopN6H0fdfQlPTIj7QlLeKNxfJO1tPbrHxovj/otpYo+1B9n/zbORw5qeiVVkKPs4bekfoZb9f5IU26NqqP7OF3CJP9nMk8aGyCRdiZwOzlMLLvExXRtjQ+DcQJRfCE0aOxpNCDcj5Thdl0aoxJ9CCTEe9ZEFk2WthbJgkbhnZiVkpDYIUUaQ3fDPaJTLoGqJzDS4FfGxa2KSnWsogxPgvpIfsoEJOZvZbqdon0KYk9WvoRjbfyCqdPfvRB9Ju+YTfzZg+TxWOjCE/f/okpNNW8lpwkSg7uVuFtiEK1qtI2ICtm38FtTVPX4YhaNtDQoXNIuL5H6Zrskd9rfNZqGra/Qcsd8m/8Exb5HvllBTTrf6G9NjV+CIe+l6GqPprQgZOHyRfrP+EOz23ufBdea18NiLlL0InBAm18Ej0ub8iaroU04P8AJAdI/kpRPFeFMFQxCy/CLC4Jprg4UQ9tnAkkqymxpR+ysNMs1bjRf5HXSnwKr/Asa+Am6ORwN0IwWgkhwJfgzQIOc6w5Gja+TYSibhd57OzeOTQtCUQaH6gqF0C/Oma24KWWaG2LgaoTDD2Tbs2xwFR+vFFS3fsz6FdehR/7FhtOw4Wa2y4lEe6FSatobXii6+hlChNaoys7b0ryPaa3bLYW7+pzljRH1el8sdPxBIMkJq9oSyJWuX2OQhVH29Dbqh/sT5r2g/H1HsuH9id2fAfAp5S6/BFxTPiexEin+Al8VzyO0nb+ikF/sREotuq4DpfFq0dH1z/BddDkZ/sJ+4Nn7B/9HAaOPH/Jw3IhLC7Ht4Gt6Gh62cMNE0Kk8E2LWET2JHCGUTtHozcYSTuiwc7/AIHW94zPQlXQ7DWTGYOEV0uHVhL6C6XyaR969YUYUah2RZUEse8rnFKmh7Eg1BPY0chsRfI6RVz+jUvbDxzQ1wbQwitHHX8FEO79Q9O8H6RwbJl9IWtbkUGsx8/BaJUcHziqMko/19FRLhL+R2ie+zivm+mPO/8A7G9/ztj9r0BIUXZp3RKXIm1/wFtNWYm6dW+UXS7HbLTGffwhnO7dy2O0go1yIl45HwOehqfCC6KLUDUdfyDVOgjzKKnen8DE+F/IXorLP8dX2P2nzso3DSF5ei/0I3G3yfEFGcknf8ELAg5d9/saap2mTiWfIwatDSYOYmvwofOWcHyGL7Jh/cciVJohC7wyDQ0Ia0LhdiGoNJOD+Boc4E22cPDS4TIgNbxoi8ENCG2qCY5aT7PZ0cXwiQbp+sBALukX7wu2hMUl7IE12p8ug56CS5CMS6J/7iXY0v8A1DNqg9jtdcIvWhuBaEvf/wCjknptrbN26Vuv1xwP43SqXsgx910Ew1cn9E+Jx4/yNOE35Ni0K/g4LXDeB1pESxO/kU4MOkc2IKOW2Ul3su9lCbWqX7Fe5bdf+h+1JGlHdUZ2E1Vw9JDVSR6vRCfbTbIpsa9katu6bhXyZRxDpOVEEVNpbOoZr5OV3R2RoqPey7Yov8jQjs4nPl9FLs/RyNtN8Mai5u00NTS/BUdiEtG8E/FlGjkQ6ZMt6C3IiXguyjQZsngyHsPiXZL++yIQ1BdHyJtsaGvYe1QmRGh7WDWEKx0ZxDomsI4F3hhHveCSex2l0vCUe+nBlP3C7Rqx9iR//8QAKhABAAMAAgICAQQCAwEBAQAAAQARITFBEFFhcYEgMJGhQLFQwdHh8fD/2gAIAQEAAT8Q8H/G1/g1+p/Q/of0VH9mv8ev1kvxt7qii41Vhn7l/sv67/Wv6H9dfof3X9uv3q/ZYwl/s3+zcY3Bh9VwH/Bn+JX6K/c39LGPl/wO/wDCfLDxf6zzf6L/AOGr9D/hPh/4S/3b/dP2q/4V/bf1P7T/AINeL/wL/wCMT918Ph/Yf1Z+uv8AGr9TCV+s/Vcv/jn9D+9Xh81+u4v6H/GP2j/Gv/BP2aleH/AT9T/iv7B++fov9V/pv/jGV+vP8Cn9Nfv15fD+9f8AzL+h/bfL/gP6nxf+TX6K/wCBP2iUyn9Fn7D4D9nP2HzVfof8O/8AKfN/t34r9NfsvIZxhc9TUx6zWLuL3b/mVcXHzAuP54xoHyRIF+ZpK0x8Sz3L8Xv6X9qv3HzXi/0Hh/cr/Nf8lQ1gg1HTPEUX3FXGOUbdxjNtxoygqL5DuIYmkn1M5qHC7GXLg/rP1L4uX+l/zSP+afoHxf7ygQWwuostO7jTuJ34W/fcdLG7zGF+5aBp/Q7YU/QAHweLi1LyHEUnbBJ36PzBJfg/YZX6bly/N/tn71/5lSv8ZnQRZpVSv2mtUiRd7jLV1hwZm/cv2xXuJWgZV55WXGLi2VXwdfc/s48fzDjcHeJOKZf71ftr+8/oS4S/+Rq6gXESyt8fzdodnuYvuF222UJv5+I2uKr48OJae6aX3AZ77Pb1l34WLOXI4S3mCvj+Pti6kXb2r7YwfPwt2x+sI3ZBe0gnA/XX6H9T+nP1X+xX6r8Ef+OEOLtnDVtRYzsNq+fggA5Vt9sp7Gr6bCUlFbFVLhKNgAOLV8wqBX8kwZcY8cQYkKHZ6PcAkaOXte1iIagzDLBLQ5hO/HaGoEx/pKja+5R4SpcuX+qo+K83/gX+/f8AgH7B4P3mWH6RykYJXIii/wD06ll7gFfEMVgUHz7iE6hLFDgnRfEohKmLnDahfS7BO4AIRYxdojSBKauMqLM9Tie4OS4RbCRxyxHQ9Xi/XzEtLNV1gPdyxt4zkEOEJcuXL/Qyv0Pi/F/q78P6r/5P39UqEZXZzV8YSmnov5Y2iItpkFvjrmV1tti7HbnuXlxa8O5hZFBJwIOTiLkuXY9Gz8TiMZy152YxhZZPQBj0e1nAQ77X2xcEq/MpZD5ShNnZIXaIjmz7hxA+b8c/pqVE8Weblx/dr9s/wK/Q/vrZHi2No/ctZ6meEsxHeD77jkuuEWwEv5hCdtR9SgH8EWn1pZxIvEpFCDmWo1yDOrvvxtwl/ouXNuX6aogkvRXXpBuFq4sKg83BTWUIKEvCvc4a3xGYU+SaYMuX4v8AVUqV4rw/82qi0NfxGsulnJtywnc9QQp2oIhRKP52IV7LY8cwUJ2T6YALELtE+iASsoji3KX4EJLtjLKI8Hi98XD/AK838TKgQP2T4iA8UHUYG3OuZ1fjiDfcthC2RMMmhoK04Yp1yB7Cabk4AyzxcvzUrwn6n9d/t1/wnx0QZxHaYyDh5HC+CPWng/Ed0lVKKJdsvSpd3U6gK9T6ByAFRNS2Pgpflf3MGNsXIMGodRlxfCsWuVTmxso+B44ja8Qn4gVEyCNeMucagecFHwTSGRi6lic2Y5yI7V0/MuX4uXLl/qv/AIN/w05cr/BG1v6R2W+YqVMRSq/MAWnvfufcRW6eHEyUTsVij8wVeQv5LBRIsWcH3OSBmLrfRkMl7GlJdAVFyFEX0xZuC5cWianguPfxLFUM6lpcvXYXCtnc5Zw+Ga2KDsw/LONZq/caEWdngdmX4thwFUTpcyMfcA8S/wBF/oqX/nH+G/odqUwVucxnuG9UoiLYQtp/cv8A680e6i/EPChhzGLb0vrglRMmLUwjxjq7K6jgNor86lwbI881L2NTKg8MYPuBc0vrZRHdD6IGELqYeB2WR4h5ZQWx9vo/3fggoV5irx4vScM7h9wzw1Hls1FLGShtnQYwWsYP6fZLShLg/pv98lf8GafFkq5N9zZRLrvvJcHq4l3HbnxGVF8XscI2DSMMVFTaPhPWiwC/5ikwaOCK3LJfLLoncuL/AHBi+BnUYb7y4AAGAAQZc6R8FjtbDqVsYFPMwtwWNZP7N8CVxOVsmqzchLjHp35Eo9wKQ/mYFeFhJ7gemG1lAYDFl/4B/kn7Yivl+CI9TZ4jtT1D0uV8rXqo31+gMogWFIkDgUdS76k4xVZSAhkjo49wWWv+zfgHxeSyrvwzSXUptEj4dxFO2feCDuFS+5dwi+mZL08CVMtiMiaiw/iOD8sAUG48+OOIFQnPhjLjUFlboHUMWPhlsuthHDMhEATtJnbdjzGH7xx/mP66j31x9CMdRvCvmOLgO460Zx1GtkM9MaxvKqo/MDM8aJQMGrx/fHBKl4qoARXd7g2chiCWH+494K0Xojh2ARNgwZ6l7Bjry3ZL/wCdB3ZQdH+kkMDUvC5cOYxhqOS44lvuBd5n4wqd2eaO7lFMr9NVcxRLNYBf1E5uKcRRZctfJ2mEUfI8H77LrmL+o8v7FV++qRBqj7YUC47OzlzuPbkylRfUauKSvZO4cR4lClhuafxMwbMuooX3Usa/AkqfI7WxKMA6VLtrZEZcDXv5i0Zavq/XgJRGNDmXka39RpMDme0aq4L9uJQjdBNCKe2ZLgzl4HUIIQYMjkn3YlDeCH4nM6i+pe14v7nXjqPNT5jQhocGnEXL5i+O5yTiMoI8QJpwfXtm7G9h/wAOv3X/AAL83j1/2wuNuMcpcCb8RJcSFTzksJumWhzKl4R5CfeCD2UnXQceL1mS6b2IXeoThpq/ccaqwfcb6Z8IkWK8OJDjznzTKWLhRB8kurZFlxRnEwuXWxfmFCJKpe4YkLtFn4XiLsLubOoMvmXfj5uMLc7iKNpT7YITw2LbKRi1F8UgFsfBC2HfwQe+ACN/un625X+G/tKhegua3JLVZolxqfqI8/1Nu6+pTFRZ6IHhtcylPIErKUATju+IaibXPhjO0Q2HDOqZDKgGWgwEIyL2djz+GKwuqt4v7lgaRqLnNx13HN+YrB0I6z2eO0l0XDbZeS9i/M4VEt2Pj2Drq4JlFWu8EsYt/wADCWpZ1OpcLr4JcGLkGXGBqysa5w/2xwjUSd+FUGpaJB9cNd5Q/tV+m4forzf+Ff7CgwL/AKOYktxbxHcOWT2KgU0DEWpOWD4eJQp7CGClYhASi4LZY1DUp3E3fdECqjGPzKkVSrhBqbg6QioH4af7lHX7Gfz4ntb6+iLbtC1E+ZAOo4OebogXzOEY1gLMr8dKeg1qIFAoCiDUWVkWMUPDF5REEpAciCTf5DHblEbryKb4GwLxQCGdvt9ziLF39k/w1/xiQzNRmxdxpTSXNZotHqM0y5tVDid1DIslXwE9ioH0TcZSUOCDIRga3ON/g+2B3wb9+WMtUWuomMbT0iVLPwlwJAlyg6AjnJoFQuvOqjuou0hzGKvmXxSzdiFl3++B4IOyxZ1BqLsWLUX5mEcfiOZNnOz6CLfhuMuL4larxKoPR9eFjHP13/i1/i2HQLjKo12Pgd7H1H1xG3x+YVs5kYdSoRwvXKU55rZehX8Qwqo8R4ue4CRZr+OIr34Zceclt8PSC5cy1vRKuU2y2W+Piah3U5WWFAhOIcKoheB9Cr+DE95vcuorYmouSlntABShPn7/AKzw2p3N8LiX4mPn8TpeBb9E96XPinhwY8xbFJSsNeZ90W/R5cI3cs/4ipX7B2rh87G3ZvZUdKWN72J3iLm4eBKju5chr+4ZURCu62CjwxIS5R3ub4JwRMqLUXSdrMW4sWpwWXzX2XIQAOQCPhqO9yv/AGDH+SIrO97H1Afhp/uWVp8lSoKdgYzBRM0d1FFypecRYsCPyntYzjLllvtV4aOB/CXAuL4UbniA2P25X0JsvIvhz/Pr/BYKk8AjKg1Adlo3sNZUZzQZU0foHjwBe5av1Ey5iMyS6i+GVaXA+4BAKFS5dsb2P1GbsvnyRGr2tEqiLGKXsdh4lKmbmumEO4K/heEiwAsDCyXsWX7lOI22BFvmM2svvrCPF1A997CL8F2YeDluVvalI9Hyy8Yv7h+g/ZP2T95aK8EQLuPeSfFgqUS4UZuPSrlYeCKoYmJzKo/mG6iAzggVnj3TLnwIr++CLL5nV3L2dRumPBkpqMSN1Ry5/MM/QPF/NeFIxfAeKwcic7WQpOzs0iEF5Hyo70fZI6tD/DAOciorWfnk+aNtwIz6Fpc5ABb+jxuLNGXNSg0i6j1uOvo1iqLUv8z2izPf8k/cv9tVDnEcQxiujomV8VXEVsYXPcMimJcE4Fn5WaZOiaS4pcI3/wCkRalnudT58KR5isOdjdxi1qf3wS4syqXwuxFkTw6zcyg2ZWab5HJyWIcKcPWy5HwDGMyk7WEo6SuMIFH1DWsPsVK9TjmN8KoxF+KiX0cLPl5hGIi3KupyfsH7B/knl/RSTgUwKuiEG1sadTazuxAfCmEPMwxbRCoxk6uUlwvBLi+BL1y4fbBp8A/iXGrl8y4PNkG46xcl4zlcph2/mpcuPYYpfgLtjk4jxHuNiUuZq/mBKnHc7ZA4+JWN3sY8xBS16yBsp6HSAlo16iayqw9ECmyziKa5VTjxKyIYo6inPNvV7/mHv5ixW7Y8d/MAyJfi/wDinyotcBL2K2K2VYXLMlI3gZz3YoXAYVkZUS9/N0xseCsC5fgYvxE/14S4Qly2pcvwrFlbotoD5YAjwKPxGhKdx2YRUqN1OZTIwGBUqbNdfC7GMYuYo3HM5Kh7GAnxGWbcvhpXb11ARQVBbBUceSqJSfV6OYBQdBQRtIu+Auw6djyv8k/xmUcuVFU/MnBZcThzHcVivuOuw9w5nzGVLYnnwhNSYFTBFUXHiFuwrjqyrsNgy4MWfMuLkZfzFZfqAt98E7ijxL0lxZ2XF5ndx1i34Jwy7foi5B9kuK+owuMuZqfae0FxlhdCpiOzkZ410g9I0dMurmuGGjQjhjmrIrVnpgfmfC5C6RRvTLhI+/3Of+C7mXeCp2QN8y5HsdvuLojyvnweS4xLzgWGc5IGzYMINeFbAB2dhux96mxZfi9ikW3mK3kuUsju+dFfRCmLG5tT5mrLly53Cole9A+iNxcTIxbucGS4ur4GCEsyvV2gYeGo5bYLYez6gPNn9kVf8os4/Ex2l+Qxix3mWIkuEmRsH9F/5J/gB6AijZbasN4Zae47rGUrKvEuPMT4JUvY8jkc4/mVg6jWBk7XCqU2QanLn85KkKAEEly48OsWKbFDwYQVO9QBzwCH3Lwlkwjx4RxWxnUGMGctB+YKW8AQbnKOPLFz8S4tts0wT0AvwHUoXJwouRfM5GK2/U233Ofars+Ictrd9cXDVjOFigGEHIi6R+wQPFb/AJ1/u1jRMp0k+iC0KTuWqSoey6d6iouLq/BCX7ghKdO1fiYGQKSwTolcS2HcL/2RFQZcuXEU+BZMPAkymrPqC0t9+CrmDGM7uPJGFQ6OAv5cJZzFxYcRqXFmZcVsVIsfuNGvEplK0YqUHgfKlU+bw0126D6PDGgimEoOMgU2hK7v9w/Rb++eK/cVJIu0PoyJRJGBsaMTHmUMruUD3cddxRuGEvIRShVLPS4HxC6ZXbKFVmLNa8A2nd/ghU2Kwl5Liv6SCmXfXo/7YTSXOpgfcugiNJcuKsG+p9xh9YnwRWM7j3FSiMfC5KuCiWWP0I4ty+VIpMGKXHipjUtYILFAfwjzGo93O3j7Mg4LgdCa+f0H7z+yR/wAr5dEF57zpBTiBc/msJY0Za0fxBE5kiZY6fd5Dm1+5hfXMWXLuX8y66iKg0GBcREbC/LKl94R1BfSYj+MR/APhiRqwdMPHvfRFIjwjLB46ly6n9ECWRwwrauGnu3/AJwlywl/3Op9pfysU9RUIoJhdsEtl2y5a34W7uLfcYxpg7h3D0Po8CVUXomngZU6vHZoUZ8qB4uiUTxLpPa6Q4Nq6Zynv9J+8f46gKtE6/5IEl6pE3eHhhZB9YJfM/tgOgvwsnIAPfaJyyim9GX61DWMQ0tupeyA+wjML7IcyMtPx744xkHV+CDQhNKZPjgZcVzi2mvLcIMGIfFRmrUAB6LIRZesebHHlipjLOaz8wgroCDkuXxOWqixZy8FXLgjRtf6GzTL+ZZkWHhZ9pZU5Zc+DloPtgpHARfEs5OxwqqM3ZSfAmmK1fmdS4vVeBTOkRXzLuUpccvB+4fu1+78qEPmn+ozrscCnAn/AHB8N6cR8FTAUPYSyvTrCP8A2wINXM4FMxQB2N3LIKBxEpeimvZEVQwj9xza1NlGxKcY1Wy0Lgrg1+IebR5WzeYSyDoUnRftlohRGvBS1TiAVq5FS5/kfuBG0de/uJMYfefDD1UVyuIkUV3WkDpjQyb8zTmXWeD+LjoYMuEMWWVXzGjEHjYxqqZUfcEWiX4YqPkYGrgyia7nrcJgfbkULMuZyeHmmcW74r+jmFKAoCg+CfUefByrEH2RZAL1lFAgYP7C/wBVf4r+gAVahrDaRcq/ielW+36IkP29kdtnVXcRgJRK2EUsl2+Uqm7sU4UihUMOZHFpcALCNS2FEjiimNUWnq4iqNsaEuzhfJAofHZ19wColFfEPrawLso5T2M1lBwTiLbNSpKfUlkWbO3WAEJ0JX+pyCUamkdLi7C6DtlRxZ6VRLWjpA/HgwsWZYvwsm0L7Ufwl9wTua7UviKXGLRFlpcIdhz0/Bh4PWKMLPAvBfx08XUZbdmCO+5Ytl0V/iPLD+k/x9/Q/o5Z/EeoqWut/cZtWJnX5woh+uj6iLdBRUKNn0LnvD7yJcp+2cwH0i2usc9kfpHcpTpT6lUea+a5mqn0cTmD7qHJ3N+JgZDtIh9/cLcMFKQqIcuPcPZBti2JLtjXNcEoFMazIxYuRi7uaZTjHNjZxCcDLpDS9CrcR1NxpdJsH14VuUsXajFjzGjE8ooWAP2V96fFsslvhYwuy9hpnWcrRDU9BF7iWxRRMfj9UuA7F8vi1leHsqJOJYWMQwCPyvcGSj8P+AZQ1YRxFdyoFRO+By15H18x6LyWE5q1KiaWXtMlFSj0Ece4ADexN1wRwr4T/aY5bO6YiloayXDtnJHcOyyFE/ELXlSiczjUVSqgtLnFI1yer1Ioh2mM2regyzfbbR66lPcWdEWIti+GWfllYnxKorT6EXnZvgXHGxf3/wD7jCp/eFFQPTT/AAxxB+wVHWq/MuUE5ZrkaSdUJouvwLyEIOACEvxdRheYjgmGcpdw014v+EvtuJixSheRfBQqgXqh/ES/CihNV9y5cBdiQW7Qe5XA+AgWNxX7p/gsS78mzuwhrKZQWrdYjWt/1JxAf6PqMuxY2R5LjwiYG0GWGNxbbsPtW/qCwzsuDvYfOKFBGAl4H1M9lWij1MKhKPPT6gWrkM5XZxM53A4Xp9IaTC7gaCHUy/ZPXYjDC8eF4+LlWw5HsHx/3ZWAmRAgGgHpLIxVjzb/AKZeVP5IoVV7w/qLIvSM+nEb+XI1Jo1HoRdQhLiylRedix8B8pds22j9Rc5i+CkWRykaXsp5xfg8NIxTkxMIwDqPl/6mrrzAouK/8YfqF3HWEt7lHfgVuxQZOZcGjIJ3U49D+yKIbsvkD6RhV3EPcOtL+IsLB9LVHUZigoE+IDgB8yxz8EdIN/MoC4+Im3WHDIrjH2QyPPDzKlmMbVSh+YWVwk19O4Fi+CAjJIuwy2dmr5qIBk7WUAL28H4ltl7csZcOPAsHID8wATAB9EvYqOXqLnJ8xcSPDGlopMhF9psNssHPZFCovlOissmgqyyiG3CncvudcxTxrcXYV+BuNxGtQt+3WLcsjCL5iY5gyjdUAfLOJ4zxtrGkWRjsY5Ml3DrLQN1wQiqTxng8n7t/pUICfJGEVz4GH3iS24Cpd/MuYLcI7dEf9XTz9EXbYjLg6gvwCWe5DAEnUFEsLuG7F7MjssfD3AaLB1HrYFIysUik0O8xuf0RLaH9QsBzGNYYtGo5W66nJGkiJWpLIHHUuPyZK3M/jqUouDhXCUxPuu/9BQl79VkGdEuZUsS4KQ65nUxsvYsWLIpXEG1LLKgNelL+rhzFUw0gbRqdzkCvZoyhY8zVZFpigRd2K8Q1OK/o1iFan1scjj5OmBc4/kOEJdR8LBFd+4i9hAFS9XogLpWGWJOP016hff7d/pU0sHwLE6i2MLiS/j7XFe6h17iD4lY/9whn4cQWlhh9RajYbZQZSSoBzDDJlrMnuZexDWqPqXUYjTv8QrbujkI9nplipdXKZYRPFtfUENuxD0PuK4SzplgoyKXYW1pBFO8ksB28ZQ2xMZWftRWPrwAVtJjLfRvBrxwq4QRpUxHgulfzLqPSv0ARYx2sY3mI3gDnZJeqgapr6I6wAAPqC1h6l3oU6klqPTjQjsbFXVn8kQmPgkuOJRcvldP8xtS2LNbBHkXjt82v9dQM68MNiOpQ2UrF6CHN9SwLl2wLqX/gkYlHdEReYy6nyRn5RhJpV34Xvcrcqz5YBdl0S9RNPwRh36gKSDUZ4BgAdjqUQrMIrLuonO51Cbc+8LEI1xir7i/M5ZbDNhRb0ggXw9RLTN4SHuU9Q1QRAI4h3j1BKIlaqO19Owyiy9W+VRuRmgxPp8AKl10+DzUl3XzE8XHL5jpEyVDt+ZyN5NubGNXUYooGZCPvSPyfg3/qNGwHlWQqModwxXH4ijUtLwLlqIPMUVxbF4CD1j9dwFAQFB4vfDhFnwhmRFC95gI6pXgRfUuX4U9yn7ahyxOnuXIwwA73GUsZvcd6xFcQd2C8VLQYRB54Yutct3GL1YldRqdwAg9Ll7UUYMtUIgmN8Bg22jGuLrmuYl1eiAKfYhbjiUXiX1LTxTTj6gtL/V4xtaQnuyHYUxBeCNBOGZ3ZsMchjDYOcIV9kfWKvmD0Y4wHz/WAgpCXMR1l2GymkvJaRbRl74V2ASrjiVHzAABGOEviPhai5O0CxbtgLLs4dRQD1zCAD1Gx+IjTwve4nEGmmC51/wDfwMbeIqa/qP2TKqBLqYqL9RHQIIrYEFlzKCJY1ml3Lv8ASP6UGr2fPGH5RO7A8t3KO5uIXVxG8dsVVXKo5EbUE6vU4IuavxsyOL6Y13o1Bb4Kb4XxLPAOOG4EhrCZnjhdjsUfyMoA0vCcQzKQd/EV8LPcLZcpW6RG6RloDDV0ERRLny9S1RwwFhwIlqVkIKw49x5G/wCIvAgTlZz6fDF2bKvkjrCb2DCFpcu1nXhcCXVegyWReYsYvi0ZQILiXHVpRgPIyqAm1r2eiW5r+RcSApd0mkHKjFt8SxMAtWggn5sft58EciXLGrCIN1iCvSHgLDmNrcuF2whOss+IXzXwy5QwOoo8WeKLvxcEFRLf0ZEBMphF07GlzfDG74fLUYdxO4tYxO2Z+Yvce/bLbbR2EN1osIc211EeimH1ABux2NAl3MScnyQTC8BBK99ka0ZE50uA7ZyYqqFxD3CYllXhjuC9sOczKxXuCXmFytE0tVEbXkciInwy3yCLiwFS5Cx1K686DCYwYhbQQjSPSe4SAKoj4GDzcGED6gErx0QKJcsLqAC10Rcjct9xR2WXVxjKFwKNQXppsAYUWkHWGBXEMOZmX6fKVRLAvvUKj7MyGt7rIBBZX++vNTB7l5jUYMMGOFX6GMa1O13NVKgQJXggEHNgeNjqN9kbGQ9PMTFTEQc5GbOW4XuOPCuM3qom/mFuCoI8xNxYOReZN+45y1A7XLnqJClX5hZ1McN9xdaLKyp8sVQZCWbuyoZOfGjAMSDxUItjfUu0iallJT3LrD7Jygj6gbUPsm+fRg68fdyqj8IuHEyq5T8hH0ce2ZbZ9x6n+ctYOeyXYB+CXugZxkNx/eTOAHaBlC0SrpRe3LBOqU8A9RFBT8wtj6LZTTd9FQd4/wAspbTXwwowfzcomOuEpnCjK+E9PsjTRf8A6kGyD1BpCXOB+g3tghbixVG4suK1BikdcgZwvS/iUAeI5xKiYs4NnSSgdY3dr5MYBq77366I+OY8xHUZ7lbcvVRGBCvrA2E+YInKK6ZcErh9wEo/R6GLqLUvdg7ssO4joPBdGxm44IqRwEVYTGIqMUN8FXWMsJqVxfUs21lA2hNXuK9sRFq778PKrPhmjEBPiXuxi2cBhaIUrcuXCV5g1KnEV8Mu7xLDGDO4p3Pcr9xn7dx5+BpKRm/AX0qcLD55jpbZxcTIstrJx65UNmJXiaS4oHpGVNOM6ppBTtgtzEOxRVYy0oKvd8kDQy95lzIPzDmX8wmiljjedeF7GFyXLlxXwJ6jCvf8dGos+achFz4np+pQLAfoawKAFBh9EZWQncMtUwnYUNNlVAdA5Ze+L1YQWDCoLsEpS36JYkCaiDA/Ms5f0A+CsT1427yPO2Llg2srWPhu/UexF7Y5zI6e/XUeNHxRUeqxWOJIFvG9O5bKJVuc0WHZTVXkdEMuXcp7lxY1I18DEJmgwxsQ61A5sYZ0y4wXpvb0Qbu3/wDjmCaEPghnLNRzp8xCv3r9EuL8iRabbMz+Sgpga6Z3aPZFfgWliUiFcjFcDT2p5GZOFAEgNnBcpXgr7Cr68bJeRVFjVz8x5l3GoEKAYoEMZhRKM7lGxaMW+LHmc0b/AOIjnzZBXGemJFPWsHqV8Eb2KGD2sC5QkhUIS0aYemNK+IMXxeaiEGwOlS7vYkqxi2NSOdgu3B2L014uowqPCNnDPcV24kx/qWW6qWu3XwLYqqL7YniPmPVzlqckUblqhpxdnG4wPuLUNRlp4OqRVwEG28aMD6i3CuQnHSld5GSXMw8KVarV+JXDj1Fig0xVzT+5QRAQ6Ufyw2fGQKQaFyiF89MJ+5ncWt09ylZW5s4/88QkHDf1UHi6qXSgqszsJcBh4S5GP4H8ykdS7l2xeYsvyBTYZLL8BZ89xEcbFmjMKlQxi6g/JOKwY48VE6m4PBMXBt7URnUq2YjtCBKgQlPYggExYlZreHMol9rLuVRdCLAGBvTLBYELPmNKjD2G6SY6R6kobRU5FuNuOoo/MXdy3qL/ADOUuNTJcqLn5JdxY1FHcXhqBdXOQlaY0JZH8+C7DVoN+D5ipdkHfB2XsOQRmSa2DmFbxeMQGydKkubuQqlErkfTiemUD9mEAqjA8Nv8v1CV8RFlT0y9q6MCzeZi8QopJcLOPUsAwdjAwFn5sja6RYmhyTmHNJgoeT0yqFxhGvGfcQh7dT74l5Lly6JfzGruMZcHYgL6ii5C0+XmWRY7Zp4BrmDUzwhXycBmy5tzlPzw2mPz5KlwNvc1Ycaxawh6hKnHNlFIjt14aygwV9lyiRBRbi+yP538/wDucleNxq1fwRfbFzHXuK/i5wyMor/RFX6jxkVSNI91lrdRmkseI18xeJ54nbLeJ8y5wa8DL2XUuX1XiojDeDEhUOziU6fkS1uaz64viRRhMGxVjUWNgcuELuc2KBqxZ/n7uKyAF4hA6Q2Vfc4WcxKHIMZSgxVa/wBDBDWkWXBwOsHCFFsFA7+/mMyD0eh6ZVWzY9QgoN9oPzCnCiC1LLnS/C5eTkjQjqInDpy/tFzGOyUX4d8hbcemtXA9ssT/ALt8X7gIVdcqKFM7B8TcBLmFggiBQfBB8aLp7MqKRGKvXLAQm6tJZfuYGCb6fuZVhuvqCyN7zfU+HiXmLzFXhKXssqoWPUAw/uVceJYXcTaxSKe4rJSvC/zFKbFj4OO3ZzyC5l40QqEaJewbYcIQ5nCou8w1KZsTBgELePAHqGERmS4gJqWXw+IqJpfgdQMATrqYt8RtSX0Y3OzQQpH6TkjgN6emOQLOGY79PgbHa5IxPXyl4J9v6hxKlsMI1/gihCzFMnfNRVLi58rWCDbgEXun0PArgeepOznCen4TiztnMtfAqcH9I5/JBAs3uslGUVBPZzHtj7xZ0gZyWkGohfCznqrhq5tUIeAgR2WESANcxYD4l5g3AsvuGJcbVHtKFq34JyIkOg46lS2nwmhHtwRU/EChihLiElxh+Ip9x3ljFi+C9RMUvU7RniIPUR7hNJOGEWXcNQ8EXRzOU4Soy4iA6GWFzEdls+Zi+pINmjFJhrpqgmcRsRN8y4R3O1tTgYdXV1B6mn52DfsIup9LGgqNC++I4KBqbOmZFSw9EuXFd/1MxrS47RQB/ExbEi09wedl4svAjbIqPPwUAW1QfLPUqEyuIGty9sSNSgdnywwrKCUtXq+oECMvZ/UqgVLNnJkGB25RKsfmQ4i9VyTucDGlX2w4hKhCpRSI12QjAywqPZLJV9wWNiUwilxhUlMvv4lf2eXH2TaDdNPQjTby/wAss7rPUF118JZdTXGXzysR8rG2YRUWLUTUti2KKO78ectOXgJpDSItRk234M8L9zQxZ1R1MYpiHMME0E4Tg4lI3jt4gBbnV8zFS+Iov+ybLQjPT0niSidOzGMifcoTfXiEItR6MfcLoiPD2SivEvhJobSIj8ksv8BiW8AZxay5icwi31By4xiXH+6i8RUH6lqzNX+idxtIsqOiNOGWOEdLuVQWt/fQgQIE2yUS1QgqNCVYUuMUa3mpyjr9ATXyE8adyriq8CThspZHUCdkKixd6igSqlPj3LaE04ZBGNW/NkqnQ9S/wJXw3F2d3MH/AERtsWMLsoRRiZ9o4vE88/aEYd8KSpuLDWpgmS5ZUVqEARLB09wrAtXhT0oyeQUSUxxWygqiCchBslaGRypRGKzK+DDlEd3KeMYWB0VAlO3ivw4zIBEicOzmXrOYvvfGN4ZSE+n0zRKoIj1Y+mCmSDZFwoaks3WKcgKnC2XNSEWx/hO0YXuIvGGIbsa0fUKSPgO1l+mJtmwiNfwHtnHy8+3tgQmyzY+JaWUqrhB07jyFiIzawPB+iVD5T+xLQu2GxH0wriD7IvuIihYDjjECi04XiSzdg+ItX0vUHff1c4F5N8cSmDKlCKkbqVkq4j3FmvDjGWrYotlZTYkEEcS9I+AT1Lly4VDxR4YszjIBgRH4l1FO4MMZpqftiuCC3MoiA8AE5b3sUsVC9HsmRExevmKu44pfVkv7lmkrZbFv4bKnO77hD7JVjCtcmnyQajhW3nyRgBM6vGW7/DODsYTAIG7Mdxqp6w+YdXVC/vuLoRPhljHVqoQbMZjz479EEPLEx8xytVzc+FRRNjQvghcD0wg7C5pHbPTK1lwOyoXYweslpp0JT6gNbHy9TRSpdLkbKo9NjgKWHMQdAvv1UZe8xjjEi03UVyz4fiKeTFzUcUbU4z3yfSPcHgSCCdLVwNsfNy3yCUIiZXhQQeOSpbkadMucRf6grlLnMN0O2KyYjDFA8PpFhP6JVZ4lEQH16gh5jDUxiixBgED3a/mINi7jVxqWfSc60VWn8wQXcehYZn38rnMblCXysdNQe5aERFKwCyOvHee/AEK8sRHBcTFg9IJxEEKvweSZNjjsAuRSIp6m2rlFljO1BKmB0jstxFWvkfuA0VEUe4ISKO5h0PmUYakU+Ki1O7ixjHRF2I8T4HFnNnaPcTw4xnKFwbMIly/LCwipAy8j4F1OJYxoJtBChATFSiJY4BKd42ly+4yEZjK0ZOYcHcEqyNm/5IVB4lWv8R2JM2qED2GI5ZTwyyqfZhmME+jX9kKQPfDj/UWUDfrhP5ieN4mZGUY20ERLYpAuYDvUUtq59HuDvgfz8wwPCxizk3xcko2v5Y0QaF+JpcIY34PHUvxtcFBJ5c+M1LXx1PbqCQ/HaiOoalZ9QQLW4XogOvj5mDtsrRWylZWR5j2RjGKY8S3wHgsTXlY+HaPlHKOPi6jQ2awPC8l934NRVFUXJcZanbHrwcLi4+JUgrlbot8S8gz7YKeHY9MC4D0sMLEMIK3wxJWXF5GNYw0HVw9+gn8R2keNZstY95kRpflYMSqTe0k3GT5CXq2gjKWXcLwoB/JAjpGwCKxJ7RnGbiziDBAjGLFONxx6m3YJUB4K68KhMhCHCcmRdgtqcD14qVqQIMcTFr4Iq5EQOcvmUXNXF+Jem+Pujyv8EL3O2phS4suMajxFlxt8df0C4xYy89o35KXHFVvkcvHUXfBeDSXC5kX1Lo8Em26ghVQVS5mbBQB8pyRXtGq0yytlEWiVQ92i0FxDBpHwS0FqvsloH3FCpPcGw1IGucz6mX6k44sJRx4RsynBnTixhgRsj5A4z3AFXrsPJF+A2tmE2/8AL5CvDFFi3fgziUG9lQHAp+IRWzmBDm4eDfNsi1WlqFIIMSu4DKbLhzc06mjv9QFkf5mHLF3VwV/MtHdjsKq2nqZHERUuNRYsWcIsEqKdTvMXE1HO0XxGFNHYVSyckUNixYIS4MGXNal1LKiy8hawY4Qd8bRtSJILgMVKEEi5qGsjccd6m44JMrdMEyIWa5NmItJyEwHXgvYrrzXzxgOolNEG63WyQMcHAf7hapRwZ/IhbsLo3+SJXEdFf6gubXVJVQ8VB4hX6NeODxRS+ohZy2QnYeM8EL8Hm44IRz3/AKGpRBSAlI1DpkHGmWAjka7GJQpv0dQPBhFL1p8QfDB8UVFyXnkzPIYnhWKc/BGxTCVx68SwT6mEZJGcIQnEGcQ9xjffgLYJs6YEG1jLb5lhsIFU9fUr0E6Up1XDSyywJVBESoG+5hHufGPIxjr4VQlHyQXErGO48TwFNideo5RxsFls46i1LlxY0nEWijHjDyxYorGxVLkIMAeIDLk6IQ64gw2F+A8HyxtpFQkbJVhX1T5K0nKVLPHbmLWKeYOsKJqmiGwOxfJsmlssriW3Lj5yOWsY3NVGiajlzHsWc3kj9+AVkqgYPqMZ2hpEWDCVOpsvwPh7nL+hvw746ZyhSDhCZcuwplRuGx2xOQqCdMeR7JVUKbDlC5a09qBf2wfmEL9BhCUxgRpW+HMAOCjwtqZRyqro8I8vhYooo7lW/ILlyssWZCVKgfpIMqyKGDVf5GeyFcQB+PCqJwlGm1KlQnEMIXtwklSrUcFS8udw8XHwfJRfFeDaPfCcHx0uEW9lPU+CZzfiPYBCLrmfXyQPHjJfMJc4ly9ogGy5bcOGWXEbEqHOWGiCuXMRbiCjwcKT7hyrG0aaS2j0eJsHT4gyYbhWHoiii2OoHjwlyKixvUMftmjJaanI8OWAB4A8KznuXHSKR54AC5R214xDithpDIVKx/QeOPCZKJ7fRTMu/cT1BS5TcJU5CVSjwMLySNCjI3UUWokMHS9Ms8deLPCnMY+C8HBm9Hho7nJctURKIghx4zXgfMnBC9QsolwJqsID10x8E4iwYCEXb4HxQlxbXgeBisLWNlfhVOWMFefpi2w4ipnA/MC0lgGLCo4yDULyFG45xHo3y3OtjSAgyGQSshx4Y+GOLYo5bQn1BGgV1HW9vgJvjuHjuNQLrwEnEX2P+iIA1BnqdkoYy25aiaFVAOIvbAJSxomz8Ti9f/CcIRnMYxlxYmmKOL34M5Sy9WckZvgmQErY+ZMeJ8E4Jf1cLFOINz4/qA/uG543t7EFeGL8hXi4cSu7inE7jkL8fzCX4jizthLZcekIS98WJcWBUGafo8wjgxdeAWsmf7NlFEpqW5Tc2U14CKIxeFiyKVj2UEVNeXDw5U17hM9Qhx5G4eGAyhgyxz3kA+CgfKqL7LnZBJlRqpmUNcbF89yw83F6R0IEXcgYeMuXV+DU1jaKPZ3eMQmEJvYrUZ2aZXFvifA+P4ZwT45zDJbtQypUiMH18/Mbamwd4MjCEuoLLh5LLnMCWEWY8C1jIJwzKgylp+fAy9y5adsUqfHnagx+BfMe+AuqfNEo2Jy68QQYRiRjz+hqI0cs9SYuXUsWBKhCHjqHhXgZKy1gQJOYKXTn14FQ8Gl2p8p+oo9yiwm+YN73yuN2F7HdfU48sRHk0xwieaomUA+4G4fUyDEr4PG9RYy8R8yFxUfKJQQ/1iVGVExgUiWOIw6xBeaEQiJyQh5GXLnDzFe5cIMWpcfBkUw8lw8XCPPgzbmCwXTogMuCvAslEV8RfoB6h8Fmlo58sr6gqVCWREs8LH4LFQrGx1dV9oQvtPBZDeIchCHioeLthUtiJwwLabG7B8QyhpP+T/xNvBzNt3JaRRY/ORFao9RnBlW4xV1lx/NqXuTnyWMeeYsjFnj2gl7CBVlp4O14gkXYM6hep8EXMnwSnKmbJw0Svkgca8K/EVKeiVx4BUw5l4o+tDbBbTjFJEpHSPlcuIWL4uDGoy/C0eA8mD9RRnB4PMCWAVy9B7YX2Xe9Shp+mMt/o8MAlr5yCWRQpBgywGUAp3uFFUOcFFAKPAEYsvwRvYueKiivL7mR4DPFr46hzD34PBDyccQUpoiF22z2MhDsKP5zrGriB3CzqN2kWP8AcBwgfdwxv+o88RoVlxEWaKS/D5LItvmiJpQt9Sgb6gAZOLxWvE44uRjqUzPiA9QHU5QR3wXLXaxExnomjDWcJLYRcrwiIxnEfK3+i6lvl1lzYMGOKHioHfiz0lBN4VFu1BA4gSlhORLJTrejmLxyPkIL3DwXg9s5dXfohYsOX2+3wB5SOSyLHmaiqLFQxQxdtyiEWnZOoeAhMyVx+i/BzLi7RXVwY/Bm0YZuRW3ByUy7IqVzP6CH4fCyvhlSt7bweFixLqL4lxa9sSoNHLv6nSW+3mU8nmPjnwz4puZM+IEAdRMiSsaj4kCyo/URUPGpbF+iPTkQqax2G/HqJMO5TwvweCzx3Li5Df0HiPBMCAoAteiYS6jmnjxnTwFQJWMvkPkwfkl04oIpGWZho+0DlKhfgD9DHwxYs3GXQT4kMqpzQ1hrHwVNmzhPaGHg8P1F+Ipp5hptVv8ARCDdcjFjOr6lS7jHIwBsazY3bLMCAB9SJOIsWVzUKmE+30TrxydIRxKZvpPgl4ZKuuZpxDGRWkCBKlojKYz7T5S9z+ZU7NRKLfB7pbCSXrKhTa7i3HnrJ8+UdymV+hvwHh39BLiPkzZU3rtYIBau5dfUPiEMECBCVKjat2DJdX4gyB4DxdRbiy4xYqjFXcEXmHMVdXrMRY+KmMKqHkhPmFeauAEUrI3vWPs2OPGsOCyIZnT5TaJUlTVoUcxvb8mvuIZXheJXKrtj3Tf+v3O8pyz4JwZPjnxzinp8dkQlTqWSJ6IWSrjcoD58IpFTgSjZZc5k95F9/iPXEymzVPcMouLqNtmxtyfBGVSoR8KSkW4eSpUWvLLQW9E0xHXRDFUHonx+IynqHiBBCBAlS5Ks5P8AfiAIS/DGMt4WLUY8i6ubiQIqAm5rOYQ+/AeC5fmpUIgtxhxEaPYkQU3+i1CkHYPNZcWBkR6lK55jZtywM4VKwhDV3s/1Li1HfgNmLut18fiHcKvKwq481dOP3NyzPNUyschsbdROgjBFMwVVxn8ShlRVMYxPBhHOkMcIHFBOs2JtafU+CB2Q+iAuDYj3Kgy4eKnEXPBLo356hguHl6+vMAefIWgQhPUBhpSnD3AACBUWLDYRZcWMYnjeeI2PVH3EUeWXRL/JcIbCZCZ53wR0sjaJiI0zmrd+NznMmXzE+Xwh2WXPux8HMA5eQiPGES2+o7+0AAAP0P6k4LIB4fjg+Dh2UkHg8SkolXEZXUru2VKqWlNMSMMJFVG3xEVxDbuEuNSw+HXuCPkKlPNJXwRErOR/UUzYl0y0t6YckfHPhiWS3oQzbX/BCRQeodKlHk6+YHgDYEqEIdVoOoaFAoIBXj6uVDwstYp4UUXEOE71HoCWwauD+/FHhUQoIQfBfjM8d+O/BF6jVawlmG7hPHefPEWsXwEyLcpDjH4ECDbqLhkKna4E2cRvoPD8U+GNfHg4Gp8XnDwqbHSb2C+2pUSIyvUSVGVUYS+fBhhMqONj4UvUfhAep2OYlyS+oZwnQCfDPhhPRH1RJcgqyPih6IW3ScIIeBOBUJp/Q2WhiBAgMqUyohKWvUPIBhA8MrysWXMjFi34VGx5K2V0qDlgLfg0rKgX4DZcPD1PULhL9eCIYpS8jUbtMYqBihy/5MgxHIxvkZesSlQQ9xc8Tk+NuohH84spNr+PtHt1XLOEqfFGsK2K1KKvuZzIlWQMKlSv0KqWLV76nMZWymfEqsYnc15PFRtYhddx1sSMcIw8siaxzAYuOcgjZhBjbhYX1KzlxPrGOd1KPUH6ntOIPoPk2WsC9PgKmkFXhIJIKngCHe/ghml7+YU814v9C3geDuKJcGXUHiNVMBZ32bDiF+AleK8FeK8txslSy2y4GvFwKoLBZl/BSoQWGM6YljZfcjb7i2ovhALxRc1fPL+Y0upco6EDr4EQanugep8c4M8FOQ8BKnPit8sSVKn14rxTEpiXHWSiJbxGKjA8rLSNuSCvDUtyoXpgNlErhixwxfqL9T6zPUIPH8MwcRL0hTPEm0K+EiSqyV+rfKB4qV5Zcc8Xw9xY4qNjWwfEZZS5VkbCoeQzwdw88zPJN0QdBGmbTAP/AEBmn5l5zG7qJGUt7jyHmKVLJR9cYwtAIwVaQfKIWNQxBFZ4QwiqISiBOSPmq8J5rxwQ4tlOyr5jXgnU7iSokq3w8/IkR4J0Rl4ZExbqMvEC6ibH+o2WoRhUpGmoXM3kZPRF7hJB51IespMRw9QlyoESORZZGOosWW9xoS4oiVFYAL1NPpPy+JLWHlhN8jxXml2oQCh4vJTxzhvnIH5JdtWq8KZfcwPWxGK3PXI3br4PKMX2f1LUhQ0elnoQTRAAhZsPjKnENEWXL8h4qPikLgeK8sqVkdiNRPXkSpUVXx4PgZUq5XhXMTxTGT3IVR6ErdxqwGqT0k3rAXxKwp1OLkT3KR8V/pOPb45YeVx8NRih4MWLuKIrZQE1Wxo+j/cYqH7jSDKlw8dymFeC53Lg+PfzAgaBxXjU0iQ/1AhVv0okLs4jxGtiT5oWLfg9Yv8AkmVxS/yMwIexDlomyvUGFFxViwnfjrx3B8E481k48p4oCHNx2UGeHxUS4ygIxlROXUdYeKnadSpSwJR4RPhE8KIgdSpSMuI3jHwI5QAcASrgBDzcQWM9I8xNWCXF6jFMqlgcs1Z7Yu8xxC+De56hPjxcyEBuUyoXPx4+IWqMTFGW6XbqpdbOlRyyoaQojiF0FPgvc66bDznmSUNS9+AfxAkAtaVNAzvJzKGuT3DSDxL42XtTkS2DcGyXUuVCaWPMTx0wIqseI+OfCvFeVeArzQPDUfUrx9TZ3KLhGVKuOyok+JUqfXgb8ORA5GC4C5UTwxJU4inbKQRu3jkxv3Ei2y0S8RnIy7YS5ZOoQeJe+N8D4f0LUA6sxQYsbC69XbC1Z6HCUa8d+aPgOY5r1m1K7kELcY6hV6umvxRKglZOyYWN31LLasgjB9MIUsqEupq4N34GGv6Cp2xVUvzc4J9/qc/Tz9eBFXCgPFX4ZXivD4a8B4aeHz3GBc1HkeAN8V4u4sWXNXLeGmMuopFY6H5g2peIZDZx4NIRMjKuUy/B55vwMJczzSOi+u4ac+7v6glA5t+ZhyQ1V/8AKp/qClIJSfSVrhZS59Ingqd4eB57u5qm5ELaQJAzTqORDgMEnSdfcGsl7Bh7lwfcGdS6nSw5lxh5WE5jnhiX4prrw3OKic5Ka4lR4ZeS2V4rynMOYlkSJsBR47lVxOvN7OZquvnwcIeLisuLpHiA5l8eBrfClRYRTIpT3wR1o5hhF6nX4mmH6O5n6Bg+bl+LLi4VaMHLHVv0ePz7hY2/UXdLACFfTEMOr8af7hp07YaY6wTJpQDtYSJKcSw0Nm/b4TmGEqdXG5RYMqWoPJr7nDtMuv8A2A2yyswS4YVzOwduxrkuFmsGmDcW0hEe2PCtPd3DiE7/AEXHiHyy7P0V4WV4SJZGe/fi5iUfDnjZbwdjL39Hwg5SqgKAogTPCy4ijYYi1XQRTi4V2ShasiKWJAuAqHUyXaVkXV6iitRYwlyO6cx8bR8hOpXz4GXcPIyyX4HY9ZLRLV5WrKCoK+Zds4MQN24+9T6CP9Tm2RjQqN0eJXMuI2mslKH1CbM8PDLyvHBL0nx5jDrDttT8xC/ld3ZBoFwiUX7CJbuXynXELcw5MG6qLRLqfNqEElQ4JscIfXhl+Lvws9TmLwVKqfcCPhj8Sod3KlNlD5UyqDw9wXfJX15BAGsOvt5hScS4kGb5b8RbQvtJ8qaLVsP0VmIP6Jy0lVl5AoNu1Z9bNx17y/0yzeQ7wovneX+5f+lCz+rgsU0/FwDvqDZnub131FGRTWBcRCtxMVEO2GyrhXm72cTiXcpf6g8FxVcxY33AhiiSFaxU6iU/mEcox+dQF7OWTvmSusT67m2GzDSHHZo60w+V6lQy5dxdl7C4bWi3tggHMFSz5wwQ6QM1QdwFc9dz0nGpziMtfRDbeotj4Zey4OTUuXcWXFMeWDBCZ4fLCo+OpUuVHL5ncYjH15p8MuXL7RnBB4UJo2wOV+gggQs52/0NjpPkpH6y5358i38soKADgOCJduOOZYInLZpdzv6JhuIFjeZLhZXF/wBDH0FbJs/EXsi/wk2APX8wCHc4oymLe477h4GpWxyHhhmTYOQb8Hi4cS4+xcwtFYKgIvIyAB4oXokW240qay4Od6i5E28TsNylNE+5KMb8XrLyM5Ivt8EWjULs2jwQEqpvZewVzKiTEDv1EFBsPUs1gGsuWpSA9RnLwayq/tWIWdqdHt2ofKcIRw8DFlRchGpXi/LrHKal5cup3Lnt8cRuvOsZUqPxGNNxeokYHuGRQFEIqAO1K4QPy/kQcWZ7W+0jNsd+NrstovVilmWT5mfLLnfUw2KXxGp2JQu64Yk7gPpPpItrt5cIAWGnJpOc+biU0lcyUBWVlMuJcCAnMSYR6gCcxGDcqpvl48GdePUBvANeD/7LIKDlYykubcwHmI6lzvZX2g3F+P8ACfBlnuVrm5WGVp9ZfiPU3w4Li9Tjwym43HCUtZOy5YjUB9SqQpqrMqAqGuH4gqYK3xD3MGUcn3AuXcthkNGcC9s0fPUE5xtMFVbhd7Fy4dzmW4Jd2x8kWhl5CWVUGVz5OGVLzPDLg7cuLLjGbGbvn/SPEI0Lt74BKWE2fl9wQBQFVLUZlhLSdRXvxcP9MCpTjuxFO57jado85itj84LHAI1vXOTQwer7hwmROQQar5QUdCIUlQDq/iINR+ZcIOjy/wAmZNp9RKWXGHkqXvjWJeQO8nBwRqCwdP8Acl821ydn2QSEGY45Ufu3/UJ7lvBVLHRA6z5odLBpd0/gi9Qmx4qJVTiFsD5jKlSlmTV5LN38R2t7jartlUSVOzm4rGzVkWOibGMybC1C+kuIN/ZJVumwwZZMi+cl0RO+iNkIQQpPqImVkPmVy7HLJ7Y3dS5fhcmeMGMz1OZkd7n1vh8PgxxJ3a+iEAqKHZwPKeAjk0JYaHqLC22K0psudRazS45xFRTfxEgEX1K+4o025iP43EyhjD7LkvEKH5nJZxObT1srQv7VhAqCEXbCFxBHcvkGF8LiHMUChmP5gy4M/MHfKvxW8jCicOAfkltw9Jh/9gBEe1g/Edif9BiBHVUNZBAuUYNgOKJnqPHJzLdwnLxvnsm6hzO/IV/MJe6x5K6nKp7gxUuVXG02XxsLOwK7WCHMNnP7nQgQdS6gFnKDH8oNy+Vx2c3C3D3L7GWqLdwDW+FhDXwXxL5udxhG2hY5Ut8XAqL4uXFiMSxi7mTc4iR6AtnMWKXT/wBmIRXOVYN0bG2mBbF3L3qpRG5Vz5y9s7REp9RXwLcNtXiY9oEb64PBinMT07gVsG7aiG4zJV5U0C7hi2Q4CHwhRyw4kyK9IGcsJFjIzTEnUXnMkXZsykulFZBhaH0kTTft4ctlLh5BmXzJUocHgTxK0b5/2yko+Y9Qbk2dv1Ci84hGE+bmEuF7CywX3cozb0nQ+ZmWQXr3KH1fMKAaHMlp5bPT6v3DjRwa79ylObscBWrIvUFYtfqFhkE09XHFWbKS/gnUHfmYgrLa5+vH4l3FZwTfdxiw5tnpGqPFkXyWMtYe8h3vDZp6R+D/ANEUPuNjWpemseo/xRe4EWVKPC62ab9dxY2bipNxhdIS/CmhhDZ3MqoZspcuDT8xChwQ9r6DqHBCL0yxjpIvklvmVUEOWfUB2fkhCAbkoZYOCMdQjptOj1KQKqJS6iKY1uZ4BVzDP5IafI/1ENz4RP8AUBUz13HNFsO+a/8Ac7S5wjiMs47lkvIVLmVOgEfp24ssCcWqdQ+S522FX4KuGywsq7ouWX/gS9LiDoPglcH7vRLDUtTlthy381Bre2eiWBUVsbcYhrSdmVSosVuvUtCrN5gy6dZrirhPuHzHmosS2L4t34dS7jHiMuU3FaYiU2FeuzMpgAjSbI8yxcWmxWcZwykIyhYtrUWo5E6OMUiVzLKi14eYfUKC5Vv4lzQNEM58czgYVCAKiUVClwLyMjWR5nqceZZxIDorO/ucKgOzlxGanMBxaRGg/BlobBc5SkYmlwynsJgVUuU8sFbl1LUcVGrM/GZf7nKCW6jI0DkTWx+mcYIcCxf3GvDkW5RPzKK0nBUqLlfExxMj6CLmZTJylwhgzhgzLjlS/cSyckqbQXt2L3TVbOZX1SnIb9spYwG1m/UVdtAWpaF83CpOCIyh8paZOwud87Ghg1BslhKUS7ZYVB5h17uKZ1KVqpcTj48eouEbi8UQreXBENUjeh4OZjkfcXviAXN5aMKu2AcxXvJd55Vbgje5LZc7hkuDCF+aNz7usjQSqpKxgENfvn+ZBMCI8MWM7a+ot5wwMgHZWayi1hWAFCAETfJL+MiCrBrmTnnY1meQQw/idCnyaQRjcLc8wVpO9z1CuN9CNryusuNykQjA9gfksgbScp+ScIMQmDP6cI1czQw7jOpxEszwdK2XzFMi740yWUuarUEszYtS+o0wsYcMuo28eWF2j2U4742UHG5CwulgN77hA5LDh/mKA1+BhQthZsYvcteuCX3DYZX1OfqdGVMq7z1LqmH2RduEZ9xch8xaFbHgjG4/TpLha0cxpCzDrNKacOCio+GQ3Kx2KopiqwdRW5yQfmfKbx1+l/5CA13hW+2HVx1U/Uy7iDYgiaR2/wDgv2MRlINV9e2NEX2EfSfMwggvmCCC23IQW+SIWP4qdVz3KAlhLvqNNnzcB7TXzZBKIwRzssGoOao/3EqF1BzZd8kvYwGAXNoOM9xgLd/ySxYrNlKmLgNiq54cpbr/AFR2epSV4WKviLDHwd/cL8NNvqcioAF/Nwlr1O+ag7GcQTYWGxUCXvimSmwvq42seIBCdK0ziX6HTcB4b0jxA3QymjGg1tUPUEzMlkOJccVC93mdtPxLvIuMq6YmHhNlwORYxE1lifWdln/+2dUaeBEczk7KOY49M5MaS+pZXg5LSvZG4cRnfjiHSvtKLtW1hVHZFRs2VVwMIJoVOdwcZfyIla/XhnNn0rARVS4OLi6QImr4+oySym+pbzdSrKe41zHv2QfhFjUqRcsYTLF8TNuBFTZXMt9EElPplNtxXE/G0ORnLfqeKhaiM8PnMt8oxIUNR+I54e18lj0zhucxK8cI4ROfvwmQ0PqWXOTwMYXxUBq4qsL7ZbTLK5WMHAi8OjWfMcLsdkD3cCmV9SnfoG/zAL9TEGOA+9l56l68cSlFok1l3fJOJrteF/2TH2+CRgiRjpOH4h2DFFRbDc/vGPKVK5ifb6qL5qNzb2Emlkp1HwpKf7idRJxL4i5N83Kumh/2woeAoZpApN0gYXB6lJciOxl+oPuhM3dqmsGID2MbaQBSkanMVbFncoq87LDfcsYyJHMqcFeEx1UsgAFTglHICmCxSwWNpX9xLQks4gWXANAnpi2i/MMMPQYw2RSqErc32WAdrX8eHuNozrmNWUVkTZkSghnEvUJ8okcTeIn1BAg43D4ZeQq7lqS9+JwJQg+K368BtXKycvygZ8ztoTqb9E2C6LY0Ao7X91Co00W9/dQe72EplF1yXZZLKxdhmpNZ0iuCk9/EuvBz9sWrK4JvKcgnEanU1jIWraPwacR2sXgqtpiuLIr90yyOypxUKbxEGUvIvkhHXbt8IAE4i7cH8vRNJ5QxtCGKtRYnbZRySlk4itdNwmCyLYPvdC/JCJ85TT7Iyb3s4T7IHbi7gRWaZHbY31Kuyo7mwbyofzSbQbzuXFjUKKQiDV1EST5EhVMDqLXDbl7l2uIeyFwlRYVORJZkfiZteyayWE4VkO8uxf4jMDUWeF6Rdrw3wzqLuMa/hBZv1EmR5jVEcgmt7M0nTCEtQvwxmTtZbHDDkmZlVAUfM2KPghZF31cIKW1cRaXEI7EtuC/aqLZSm62H5DUG+5Slfgl0TqXAwvCGFyxQusjx8V/TCgf0eGFD8wHvkl3yw4c8rFsTcRjplZzajS4dSo3xKlSi6nEHI3EOo3fjNqi4koLYejoiQstg2zddxtB8BFyUPMvlT86Fi2GMI4LeHUWE2Y69QYwheLgYkaQerL/JLQXpMXBcsMNRGCljdR1FsSaL0zSVWZgloplL7liBW0EmQ4jIiryi42MXCkA2rSENG4miVkLBpDyJZMk2tcIDJYsX+fxBZkBE4bi8x1+JexlpBeX5rY8c3OpYOCXsvqVkaDnI6EV/nxwqFeD6l0xaonTBdwyBkOLhvVQyc7ceotLHiFJx0QKK5lAlsTHJ6l4OaxlzRdTh2yzsov2EV424MYHIL/WsYFR5KFX8b4CpeXP7I/1n7thE2Ahe1rGp6TZymUVHhW3N9TGJmT8RlfEydxhzKuFMLlc7fUOVSpYox6+ZjYUVe5g/CNVC02LOB7lU6jLC4GlTDcW258iY7lm2XC11LB7mPqyGoQ8jsfZvUjFEcVXJCgnsZ29YWJD7Q0qWZhbuoekW7YLxkbCa4MnBUIWQgfkxWqV3mzg8+2PHBJhF+EONixgBX6JenlQeouJDIVW06+Yr3T12fZFvuXrLpyN0zlmhnR4ZWXHrLjVOTnvuL1EIxhvUSp1UvfPu+57nHUMsO2bTLi+ZxK4jzKJ08DzE9e7g1GWvV7YFgtaDMgGj1uzU6BpV4NfDFRbF8xvTGpV5zBuXKgtUXUrUOHMpGnEcR1zDD/Ud1cnJtNT8p/cdxdXO7UvHv0RRds8U0/c44lt/ipZ2T8+HI+K1JZV3gPawbHnTF44M+48ZRSLQ9TlPknOGogQXUQqjYy+D1LvHgS6yKqibEZNiXI2xgPUvCi9lCIljyQtY7rr+pQ/B+/klUqXtz+SJF1vcQNIwKT6iUhQQYKpTDC34HlUTLDL4iy2tFwIDwq0pd90lyuK2FXBbD/v4YsVmcf6GFWrg/MHLlstKnc2fnuLfPqYY0/V34eZanqU/MWOgEcI2Qa+qlz8QhgV6lrhyRYPOy7omdQYtyhd9VKgbvqCCHf3DmALc0fcdoYLaPxNoQd6fxFlUOzF8h39M4rErliUO3ET/ACbFZZaGxPDqEqFRXi5Yb9U+7UK2fMxevH5XFymNrEcJnuOQyLfxcZfPklbLUHjt77YDIyvL/KOwruP9w/Ec4YuUaIrfqN0oHiJtkWIwMhZCZ7ig1X5hTrnqFGpZAQKKWIAwbolMadigX2FMCtQmZtfczH28b/MVSkEgonJFkuG+Y5uVNImVCBpsPxsFpPRKLCWlOsLZdU0X6CWrwsXxDXfUHuc7c70hCwOmXOEGuPF8zslF3Oz78Dx4qPXjufE6T7Mqo6T2xB66j8EIc5cXYz3CXFxMzS+We8mMpX4nBcqoXEbi1AVE7THINpuHtB5OdgVVnwjDTVno38kpKjLweCPtYC/mnCyE+hGcdRf2o4TbjxLgZn8x8fMNI/EqPEM6i3LajzAIwXdRBAXEBgE/KVYXu1yy5+tIW/iJCHQ+r7a4hSZADmoLZtxWpYNLO4mUXLLqWbVg1DC7JeNkyhiyu0GYRLBY8vqB3BtrBEEvc5EpnpCXMlXvh/hqPURXD/8AUhkXfRFPUFje2E5hMTnhHQww6VFjk9uKVdDV8Sx8i80RfR2weQKB7e2WLUHDwd1Ma+I2bdY/7IvTkaxbQ+IuziG7cv0e5yWxaEz/AHFrfuOV9S2VF1jB9zLLhTWY9xpqUkahxc5ndy2LFq59eL2pexqch97Es/M46ucsRyPUrPHtYg3xHTC/bKUr8EI0fBzYxQTvdUwWQ9wU43RTZSt/oiuIj8FymksSu/Fxmy4xqoxgbEC3gjvdvD0Qo6IrIw4IRVArsqLW4MHUWL3AablWBIiynKpZduA0plho/NzlC8bVLIrdchRRH5h16YVB5mwqG43mV9wahchWD1Ea5EGnAbrKFjO5pTKTEuckaMo5jnxkLYo/cDSuksGbT7SoYZf7vU5blhKF1ECgE7HshVC/fV/5F9ldD0/UoNjL5lTgUltVL0hfx46L9Rbl18M+2XfcevFhu4c+O423Hi88EZdy+JcvglnuC4y9j7MIPHbHmMPqVHuAuPFQzmBjX36hErPdQ3XRr/FTkZXfgCM3FVLufCUlpcaZuuS4tDFe/Bu4Nv1lQAqLzJbfqXDYy41ZBgMAUG3BFbKJn9QxMhTXu5Tq1Op1F5PyQFh6lGpd5GBYeuIn2iicpiXxAolCVE4qbZaIqHXLH14xFaoi2XZGWcrj4+YnnILlXBjCBO5a9n5gmDF2flY1F32xcxihp8b/AF1AIABQHQRvUfaQQ9ipogByz4mIrll0VPcsFno6RcZyl6jtNeOuIvaWk9XCoOfiVquyK79xthO7ndrO4jZFS5f5XMvJVXLjXi5sEhtfzLlm7O5sovyQKuYg2/nws+US1I3BKvxcQeJcxB5zuOqj81bGKYVx3c4ZY8y8IpFm3ULZYxxNA2Vf9EQNQLixcLKO4bZARlIU9QpCxBfMZdthIILIKORgcWwWVF8QbNsA8T4hjbcq1DSFF2VcwqXUeOYDTQoy+bA1FKmHROZCwt7GlWXg9RcRu6lq2EFGrEGXLH7ZYkdwom+wA72Dhjd8vUt4mi3wYKdQV3Ftikv1GVryfCwXSv6giIqYfiUI7sYu3B2mPcUbl1DYMK/me5WQ48JAlz8dSsJVv3Lhfi3Y6M/6oJlXFX8sWvzK1Up1BrvwzPDNgWbCDvUtZwoYrdN/JMXGJKBc5xqO+MlSiPz4WE/EKIluaivtnQRRQDXcraSsYiWgim5RLlV9Iok79TaY0t5qKlaTjB8TDy+68TSWC93C3E4UVL0dLlOzkw3C+kCj6hSu5cuWBsswpSD7gLEMTclbEXKtQgpHqF4iVWIFgp/UsnFiF3Edo2E4FsWY8qlkvseZe6eg9zdZUv3Lr4g9sEBFuG1BgWi1x1olDmM05jVbcuAcb/M6/UDMSLk9whVIpn34Ff1McllQuuJcZUK3/ctx1USZ4WnsqKi+cnU6tIcy5xDqOKgu1HRcHyIov6CurkRBg5oM9XKD6MahseoryOMzYxcJ2R8PcU7J1D7leZxf+oQmX2+2DrEPkWKWbTvUa79I6QiC6YPuXedx8SIJz4uoWL9wuBlQru2WkeFNgq3UrunhiJtyn14EodR72SwjPyCMDgkENTZTjZ7ETyLB8oQURyF6TbmUtzCorIcHbiBB2X8FxR1AlB2ULpYwYC3UuIDlHIxK1swbPz6lbdr3L/tVOEHJICU3xLSqhWi7L5IkW1Kkdu8RxjCrWUKd6Cy4oa0vqcd8r00haXzCllke5ez6j/tLme5cHJfcKry1UeKl3x5y/G3HidZL5lsGXFxgrYqd+DJltxYHry1L9EdRF7CLZfD1LmMW98W1Li4l+LCLVbcIqunh6JpgVq+P77jbsuC2BXIhzKHZTiEex+tlN1E7lCwBRHZK8vMNthCAjT+pxicL5mXTBSrC5fOR4yXCibl+Cp+IkBqBq4mW9sKqViSKUNqDGYi2S/AXU+Z7QZWoS1LsuBrDS3tLI2TFKrWUwTkzmBnMIK0lni4etqTTB1cXC6bMkbRgqy9VZpsulepp4sHq2umABZ8ISY5l5rMX9Rsw5MFZHki8Qbgm+Klv9S6JkuifL4e4Ht8aDsW7yEsDSNcxn5mWeLuWXLYsbRxKCI3sqzoPzuML5i2KrqJ2X4xnD4SLMjbOoBHfOX8YBBTJlj1g6+YlpQ4LhV8+5artjwnY/K+pQNmSgiHcEyWMaPsgBpAQDI+kow1fJEDsANS7GvwzPuIreJCjiBGGh4C3CGQ7IjVTlXcRSvRAZWlE1AKF2UC25Jpp7lTJy4iXCHcyHUKAw6eUB8pGtMSA+IFHs18PiWUPgit3bxG/mVmhXHzFO9viJ90kVwMVaVivufFiu3El1qaPhZUSYZmpR6SBKw9nJH6KT/pK8XtT7QlcS9/EXknEFTLg/nY7xL2Ak2Hxc02oBiw9ktixOpMrIS5tkvuLLI+CtrGgt1LlBTfpsdvHn8Er1EjLi5ZzPUW2Ne5s+YH9D5WVA2iwhncifWANG6yg1itsSpR7jTeEdZYPEaMDLnNbLe2CwtqfBcBfxcbpgle4mi1EbiEXGqyCDmBQsBxCrZY8/wAxQyHMCgE52Pr5uUEBURXexbi4Y6ti+4idwgWgE2Q04XuKwD0Bs8tKQi4EHlN5dlSLaFJUFDJbuEjFOiVXY1YHMXX1cKtypKbfUbTGtYqS5uoiBH2QCSOCBV0gi2XxOCb+BsPEXJe1+YSr8Ltl5L8DBmsHObg9suHHuPUbrI7r3PaRnaxvPB4Fe4vhYuMt8AxHMsgX6HpLkq7FYxYd2PivDfh8MPP/AO2A6qZhV45lebhas4iqEzgJWWbLhXUooi3GCsqYlWS32kouBupcykG1KpouYgkv5ZUQq2ImMyNiRBoS5zLviKU+Z0Iem4JhMNRRGwg3HRxKFR93FdRHQ3UDcFriBiSS6AKSypyGyF+CHeQPBcQuqNv3AchZVgwKb9QS7gIYVOxIwpU0blCnXXjJlZLeW88BdVy9Qa8UuJReJy6fiVOCU5IstzaPxkLpA6vmO6vzTgpvIRe38sceFlwb7iy3Z2YuV8T8ni4rkY3kWe5wxio45U5QjjXjLiizHU23ij+0oEU/4MJwTvylefFsz8+H66i/MXWVLycD2QHyxgvac/cpsu3A0RT1DdMQwAQ4npgdk31EG5KawqVTCPPDOBnyFjlCJWr26wwCITakKBLXBCbrV2E0s6QSlMlWFDzSBRTFRYwjYhfU9K3xFLljcENoDUpLMqUxVHMXMPuGFUbfuVC2bGZKVHqF8O1ATiK4IDNSu6U1vcc00ZEy9uw+Yv0iPKTn+Yxe3CKu7qCjhDarF+3I83MOnBEVGVUIly1Rcur20j43+iH9pdkvmcoaYQJFnCa7m5Upuy2w9RZdx+pzNf5i+CPjY93OEARfMd6rfy8s4hEPo8UMpbOVR5jbMpnz4ZR5NqrjL99sNYFL0kbhokKtok4pOJdcwJpHUZQKcxBC5V3D5hpLpyBohwhaDq6qdomXxLGRmB3i4yXt/ZKq4FqL7cmoPqXVlP4lzGDcsORcjtVcRBIaVHJKTYZHagg9vih7h2MFIyMN57eEDUNMV7BoQ7iupa7i82VTEI6gW0JhN8Js9COtP2T445qM12IAsJ9EsLXmXGreZQQyODY3D1OmVw6e8o7PU+Ha4WZcWy+JhIckuWQXYv8AudLB8LOOYJXimGRjFsQGHAwGCgIffMWAVHjKRs7jzc6ie4yyOS4EcjkUQwDrZgVhHRwvCIyW6iGXBqXYlVLkIwgWVkEGqGsMZU4QaYCJKOsqCqnr1CrlCyXUXaMYVFv2RY238zHcDvLKg3pxHgsrobOgm4NEQ6phg2cLcBGzOjwjcG+Q6wLgU4IS5avnu+BdcXOdpKUNOAhVKOomSniXcOvHVRjZUNzm2Srj9Qa5ZNrVieu5QoFxP8kIkmHHiLtxq48Fjdz8y18eG4ojRbsMqx/ZpLNKfkhIzkZ14WuW+F8TqXmS3Jcv3GLGL6rniKpriLkeUMHYDzSD8w7KBRGeDoi2P3FjOY34qEUO8lyccfX3+fBYG1LjS4NWJWIWXEqEKUBAFKNtQKlDklIsIviKXKSu5TlA24U8MGvmAWBiQAMwiBuLS9XFVV1HgQgXS2bEfiVsL1MERuXsZu6iArOIaN8yglDxKUXqWrg9VBDpEbJjcYwOXJKG9QC1Fq2YlWXZKyNxFj8VEpRlsu9lh2hLJSy4sLJVVU/Ij8gHYcxWNUcXzA95u/MRRGsMNqeoguobvg4rjyRmqiudQhd4iVi29yVw3XhBIBsTknSX47Xe5vqGWpqXktuL8+D1H4nvYuxWQZdRqo4oDq2X8scqXOyCr8ZFr9xeovcfucxmePUoXpCr1AxAEUnWH3FpNW2X1KVKrqJD2E3Bx0pu5RstBVplFaOsYoGFxfJ+SVQ9wBznuVHpzFsWFg7zKBpt08wAScGMRImyLtiS1JkDRSFkujZjnMX4iog3CQCiv+JVwvcSVA5QBbLS8CQLv8CBRUodICs4793Lgxn3nxoTBzADx0zgjdRV3MoYBRBigwY2oJzkvYfipVS+B7hoWBv3MWsKiKgypLI+OJRhoXFinuPMbJRKEdNRGvRH4FsUR6hKSGqJ10/ZP7I8pUg+xl11L8AQjwl55s9TqOMmoqlNxuKE2nEchqo/EUUwi2s8HuJLYstXYuVDYoq0JQP3J6+IE/hR4K8BlxTzcpwS77lo3GECllfmFIrfLEsmTpcQ9zFT+IL2uNXDQoX4QFyyG655qDyUk6XfMeg1kbm0ywsgi3cd16N9Mrd3TCWxJU/mdBYg8AtDjYDmGVsItZGG6CBa6cXNKXNz1GcGDk4CpwlxbEtaXXDLLgoHqVEKm+pU9xKolkJRBdU6msSzxC6L8Rpx8kUVW1Yhi4ijUcJVSsO4Ve8lJpLiN7DsPcUCTEV1kOglkpfXExKtBETGgtiALBUFq34loi+PEdvPZKAs9nGpT7qulplPgeJcKVLvmXBjGFJUJeXGLj1dAflg/YYRzL8xxP7ixl5CYXNtlWsKqOh1a9tcQKoCVkdFTQcAUwGtmXjlQdiJ3USWGQLccRHIYS5sv5bhEOpgF0xfUBzayhVy6UuXvHbAWcVfEoA16i2Vnra7fqF6HQuDCrzuWxk2d5HhEj5TBjxzBDRJauQoS4C6uXMnG5lEr4je8xJozmVvYKggBhAIDslEcM4Q6yXRFtjFgIb3KbGL6QCHF3fLC6WotMTkqI5dC0RSCWls7ZK0gEX4j1VRYdxHicxWwuyHJUBTNdRUpn+4aDp5e/qDVI2RlEN8EbLIVE4Tkj4J9HP+YMbfzpAw/YeL4YRcuK5wfBzBiY8l50L4sGviKKUicTgi3Fiz5hdy20wHywWPPb2rKBfUV1WGhrSRR3GfIydIY+JwRrpuWmuLnU00qIHR4hJA9EMtStzYGEHqNOIa1BmJUuX+JY1UY0j/AHEq4tQ22oO+UlY1UtKr6gsczfCFS5gA1Mly/wA3Bh4EASzGhidkUIVRxLQ0JkCUjCYYKt2B1D5bQ3xC6uVC21Eqqjy0wAaVkp4c9Sgmn1BrkXuWKoKjyrY57iPbP1KTlN38xnNjLakCDn4TFaiVSmGLcNaEtzSoZlw+KhedIGShDRv6upVBLNuGQIyaz4yoKEQ5vuMXVjE3CUuy81fEPX0HH8kNE/C/C8nHk+4sVJlqTmr6DwcexbHZxcePDlx0iYVvi3qFfa9zJrSMTAlAbF5Vol26l+AO5ooiUxHnqWaiANwmhpyDqdA3B3uwguARQuKXpDmBxNC6aqVdYQYAs/liPuFucgoVFoJpxDaSv6Mqj+UwVCpKmg+4qdlRk+jE4guCaI9P+4dCFONGoTtoEigjufU4UMPTwL7jOMVS6Vl5CHEJYDAVxty8agQ5vey8pagMMNRRg0KXG6aYXyJzZx2KW7ilZGAWcSl6buiIKVrlgfbM545lQlNbfMccRAkAfiWBuXIbeRj6S9i1h9Snjfc+cuRcSor6iPcAjnm/AaPEXLvwBqURtYWwNQWAFl8RxRf0Mp9SmJ4ahFKILGdyKbji4Iq1j3CnuMcZccJz1LZZjVge1m4LcmxFVjxRKQlWLU2Iy5S4QIk5YhzCrqLLSoNwxOaX6lC70yxy3ktZYAvkjavuAsv3FtNergcGw5lHUsOTFdvqK6cOWrqKuJbmylpQnPKGdIkOB2hDo2fIYg6wGuU9SmcMT2saX99CVeBivcFBmmtTaH3OogFMD6IkP9Ssh2LKl1xHlMKXTG7HWpTaMiUrH1B+E0u599sOzGAuwXbYfLBKgH1LKVRTMM6UcQFW4SoiHXE4/mLyV1fB7j3Za1WKz8sr6lmjBcf1HQdx5TCC8aliW4JnO48pygDxCm42XqQyy6jUINfzEE6CbZKPCMU5yj8b/MxNItVkugIMWLkuM+YS2vwFe3pCWVcHgGZKrwZPuDLGqdTlfiJ2/wBSmUnXuWpnzOmjLY/3Dhrcsqq/ALNALjtlyRz+YCFuti+lwWUheBKViumwOG5YBU6IxCw7AKZN+oPzRnAyOn5OLljR3Opg+KOSzGDaYXlWmRgQS4pR1j3A0O9NW2rMbUqyMpzNm+iKsLSWBj2aMW70jF4INt8RIMcskYQbBsiWMaJbqcts19JT3ArJsNiI9zDZdQI7OYMY2NlWFi7C5C7y5pR9zns5jVlggzJkTdi9HK9St0aRcfEcz4ohUi+o8qdGKWZDvK1ZZeJaAixXQTHmDsAtERU8RGsj88w1Eu2J8yyl1CVxWw+AHs5j9BH08wf6nEJc3Gs9/wC/wXMRQuL4X5ZUwLeAr+Ix2lX54gNvPEAlnEPuWWBG3JBS6h7VBacFe48kMyi6ZpmDmoqzZ9TbGMY49eJgNhSLfK7+KuBoPcs2R5Ltlt31GjaXJrC1VQbeayJL8g0jciV0Teze4+T1jNJYaOwA2XkDDd1L0YfcOYKo6gnEeoPft6MlhQa78lpeoFEN7vcs0tldoO4ZOhq3eCkoTXPBgQ5tTsfMDAjwkMzToid1eTJCEHlQdGuZsS+ZzlCtmMFQBXCRpd08K5haiIGXdw92KpiRx7PMKxQnMJZW9fELWQbYiXKMS4Ml2vr5fU6KV+vifMqg6jFMqBdqNUXp45lKklR9S2wK9i0rIaHJRhWFGDuIzxMIPHTKFiVxDmMR+ZRmUivUYKOCuh8RwHapR5IT/CP5YhGEawhdi5FlvbO/FhnlT9QzVYf6gOnBhHSbkpKvwWtlSxuifHmOoMh7FRU1cd6RrU1GWGOAzmS7N5ja5CoxG/B34lWAwkKZTylDQ2wFqC2G6CXN7qCwhoa91xGBLjdQUcq4Oi2I2DXzE6sMCi2SjqlD1xBK7KMM4o8yqd2gH8QWvXlPB+HcuHaSmqqAxHThr0EPITItr2/BHFHvrdE7IQaz8eoygn8V/UIimVA3XeRBGu4XmyXcY3exoIix2C27yTifWDfJUabEODFsb9RVAzQVfECguI6ZVIQLhd1rKcXOUVKK3MprXEOflctWnErmuIy4MqM4IwZzDa6KPtlOTSC8NrYZAhEGEvtAeI1G3NplEwtcQfMOPuEZKJL8EtlrHZFnWPtDYcEBFR6efhjd5IjKS+5cXiPgVYcwFJ/+kspV5S4FpWMypaDx1kT4gY6MT3qu5yjc1yx2QsrmaFafEU4SguOK6WNiupj2bBucJHkxk2hbFtZ3ArlDiVwtRCjc6NQ/cQN1AKNxT6hV6Ew3NWlB2ETmN6vUcYbP0HiXEOvUTkdU0FuPimnRk7aIu0Kq2hlYBQtDhnALZVnSxmODXf2xy2VXVE1irutFOvQE4oK1WKnuK7lCHBBg7IKLAmfDdRbO9hp9wwljlhAHEKmGTiBOGRlcx2+IoAjjm5UV0QdmdP4Jd7gP0uWIPUcKXkpHgiuoKLJtDqPifESaRqMvBMvcNo2ViEIoKsV7HLdRTxHuPSJThgvIlZEFAiIV7lvULLYS9hLJAYHEc4ibuJnQRKuchIFCHJuXnA7rv/oZmVr/APy8KMlsLfIVsVtcRFYd6O/bFQD2e1gRRkrQcx0sEQScQMBjoEhAtExI7USaMK2nLqQS1BOZVTFrplcYj31L3xaX6lqn8xYXcRBwXCgU3fMwcwa5riUlihES6a9wGKLHZKXjuJxE5hL5jOz0PRCgDKD6iFShGUomxLqdEyjplCq9o1j29EPLUvYHKXpiArd9093Ka6CNM52Y7iB/l5fuX0hGP9EdCInRjw/M45gXCLgKsWr7X3HdnKPHyRKei10qWfAxRda9SiXFxU00sqsKqXBrqIfCQxxco6i7hs2ozUxBdFvb8RtXJrWe8ItnKECsP57PmFJlmzFPcLLonMf6nVgteQ6il0aVLcCKN1HlXbZiPmNyojvJXVwFoADUW2G1HOpo80T4IGr4ldiHSa5XUMStqplMv4jrEa8dsKiU5Eo6YcEI2PeGnzEwa41gl/kfySwQB7GyVL+ZUPUFpxn/AKjVSyqjjveS3hhS3h5bBsHJv/WEe43DAJXZX1Bh8yvZB2IhQhJcKZixPnphYOoVCbwwxLDYgDFtStN/EMaTmVG6gDARF14lYhRYSP3LkR4ZfuleSAkK2rLFP7iqJ3EtBlpDwclplUPxF7CKtrGpZ1lHBXPcxJQXCXgKhkUn8C1FRm6/jmoFWKLVJyoMod+xl1E77lOfol3xfMtVcwexWHp8QJuy0+DE3EKG4+mHCm5TZ1PcTkHUaDURDxVzgmsxBbFqreSpAa1uAD0P5YNEXZ+IZ7atH+oIcy2A4hnEXdHzNRM9xp7xUCwTObYagWpILokeCJmk5ce+a3xKWoQupfqF1mpCWdXE5DF9SoQ8XUFucEoh18TE1uquMxB6F1zEWOBJaJn4lLiWUyoljRDZdEDTeIzHYlWRW/hTiXAEZKcnekuMO55fREhmCJzHamwLi+k3wy65zGCUU9kqUlDhnY77l41/jwwXv6YbDwL9e5YqXXXCpC5UKL7gCwTIIKOrqmDbDh/KbtxRLcJTQQsiUpcScuYqExmOYDRirHQCCeYQ2g4yAwVKRpOa9xdUqC6uJtFybU9CGNApxXvYZILqowz4w0fpzDc/czVNz4MZ8xzQBIY6XKiLpSrt1EvdalCoB102drtfUYt5n3Wd/EszVDsr7Vy3YFhjUNOrsDQvsiGS1jQh56ORuFdFZecSwgVCLcFCIMMXBcKOECi7nmGhREImRSmTk6PcH566Y8Fs+4EcBw6qcgx4Cfgj87BF5cGu+KlJsPuIFx2CzY8TiNRUVa9i2ab7lF4nKlu/0ljHVRArUDH9ywUEKQVsJVE9ImQ2OU4LnCNEPhKzI2i9OSlH1A2MrInDmAgPQEuA6/MvbAvmFTwglGBPTNq9bcDWaJfez3l9YB1CX1KOJZyjq1bAntPUa6b/ANRt0uAIwVLSiFVaxQUs1VS65iEsqNqZDUi4giVlMpWu4ZDRig8l8kJ0NhtsXpBiJ7hWDMsJdvpkXjRW/MSUdmGyt1X9NI1gRvhJZxt6evqP6jcWzF9wySG9R6oCMzHBqPVER58bH9N8MLFurm5Wi4wSxi5ywFgOafmAXaSkaQFqjav+gjel/CeaN31DueiC5QBotqWiRAvpXuoEkYTmjmiYdGnIucH5YjZK+78QgN6+vpEpFbPxAoElA1LTYLF3AOREnCogQKjphT4JaguWcTSDiCHpbdaSFgRDF88EpJgi6APUQfM2WxYXUXVz871cpUDLM/WSu3CbRg1DwRVVUKabcaHHUJiCqJqEiX6Y0Ko+5VaJzTK2YkeZWqnwy/Ux9wwyvPKuG5VVhUR5BEtlSh9mLeBcXr4flDcCUEXulynW45RIXZox2qD1CyBzHcsYMQF90RR183OAs/JL8fCJVH2bG0tiTmoaHgqZxChTgRFUw4RUsdwCxH1LdcmD7nGokLMX8RL6CAvBsV8Wtk5Ax5DYN1PjhAQWHgo5J/0IBoQbNdX4nI67oudPohqLjxJfreVrp9pMuZiUSNIVAejuMs3BYXL17mAjuFt38xBtz1MvjYdn1A0+FlFEfzoOrBFLPx7hek4A7/E3raDgO/6l4x0ND6JSm7MysOwYBlSV6k5c/JzDRRK8L8OMBF1gtsABjbdPECqWPjR6DbRLel3hBrKj0gEGm4glykpuZE1zJWrmKoSsreu5uuCjQJLVnEztI2VgmynqEAcrFSja4nFEfAihq0g1bxOlGHtsqjZL7rmJ0Uw01KGhlbhBB4h0+5prJUph2TmRtMOanZPSWCV3TtlEE/Jo+mOYPzAZSFp3C/CUqjicCIS1czAV3GzYMsAc8Q9kibWuhZeUS0W4tuayoMs5ElAWUZhUVqiVjgmK0cxUjwy6uW4I08kQ46hoREsjRYVBYzhvMbLIrqKuz7jpFY9ZfOUiZ/5lhxidjUQ1KblNRVqOKzXLfEAimi18HojjAyNzsHToJZROWBy7wGO8/lANRvJr1aIRGnPB1Htlb0Cq1HH0Yuv7yvgh7MZ0g4ZQy4RRZ1+lr2YBrqvd9pxIAfROGRdumsNZUa5SeLiXVOysYgrglAP+pR2durVOq+WVCRaHGRArGdOA5m8SkEYzDxOZhgTnOpa7iyqJsRjBYfUGihRVRA3Lgsax5pjQwDnialBAWqZiY9WDbJfqB6lPcTwOhRU7gCr5WWTS34gguJNojv2/U05gFp6VcFdTA8ual0pYiKm1H1EUF5lkYQ/qLemYo9gShphiW/EEiFVXia3Bn3lSsNr78HUtwcTcCITSnqUduJlQGcoIt8yvKWNqHFyE4FvUNwigIRGl/ki9r/YSjcEgNOO5VAxswy2WgIBsSAOCI1cKj2MsXGI14XcomRKAfxOEpwUZKahpSRLbi8T7rmCsw+blLxfW4kEt11CBqqgqAATEKa6H7KvqBiQ7R9ynErupLR9kbTaL4AxaiotnAcrEI5D7A/EpTAFwpdv4JpigOkvYpLmzqOLarqAXzPzFw6JH0GQ0iDvCdPtncaNhv79EQIEDkES1la6Q5WVmxyqdZdW7aiwcLIwOrgFllp8Ca7SgHXzGBcLXtE3JwrdPywozZTwzkEcqAwq4vzEqBzFMCAAas4N3Cqv5YB2quyo6DL1KJCzQ8x0gVFtiPBcbGiXAgwK+uomsX3cYKUDK7hSgFbG3QvitiGyfxzElnUSwSPUXUo9CXvidHHtmVH9x62mxscQ6GTJouoL3Opc047ILYVXTLk03FJDzc+Mb+YsuA36TcHd+EuL6lAVL4KrkhCzAoKg1tgIXOXCjRU1dkBSHEJy76iIqG3XHWRkwoUwcOXqZrfUrzDaVTFMsuUfSVSuEPQxofUIoiINw05Jaq5d8odC4uBMG4MxqziexDqGKq1t+5RGULKmXcGVLcQsA7E5m/wBg/QQ1LlNWJlhYaNvSMFUytPX5jiCSNJRH9/anRly3CTawDsSttPXTCNQudJnH5YnOvQt3s+4J2Y5nslSNdetGhhnBL5UnBUITtXHor7hRuFW/RpHL73bZfUTWHGrtSVAAAXrebnLAkFtzWWWVtFxZzmC76QHgD8lGB2DMPIgI3gSU28jBCILspz2kqGi8yylEu1BrnmJQK/cqVN7lUwoDzf5heaVcYCwP1AMcaRcp5bPUVLWVVT/TxAMxeTVjC4eoOtmSVireGUmCjEpfJkpdXKYnmGl33PQxcIpSo1X6ijAXZoFeklrXukbYLblR+YKLmoVsIldkw1lzLuV7lVKhOoI+pFaFmF2UuyPdcuV407ISjFnKlouFozLl3I7rEOU3E2CEq84yHVlRTmUCB5uUqhjrsILioG6cirSFLUAdn/eBUW6iz9v7CJfVRdMiTmBfywvTAVAE4ixqO0rVaQ3Z7btNIxKAkECvhp7h47nRVGwh12LFnFpAkObXF3JKVyr+310SzOcPGvmamilm0ghE7sH3MksqhaOo0EgPmG1k7pUYH0id2dwiDOwJ37JwfRCVWtdS8olHqirNXu4jnHg+ZSALF1ej+ZTu1ovod/AhLi4TmuAWHWyMXL0Jk5uG39keCxKP8DEvDZXMXFyxSiaUdfiAaKmi3bhH5jxMRA6h3sPvOoqeksblMLlgRbAW1sQK3H3BU3X1CFVK5R2QxKolUpjlS1UcS6U8QOYow7YncjaxOSpY6XKXQnUJe8Fx+EubOYqKlDUV+6k2V3HSxVF3GKDxI0LgqO5fttJT4mVaMYZe0PpcG7ibXUbLeAbu4gKlmpw8Ke4Q2r7YkJomKL43SI4m3K0iJ/AnsHzE9uyuOGDFILUUyqY3CjsQxNi5ynNXuZs+4UY/GLbgbQjmNKT1DFsDD5ttV/CBtUuTS5RRBtGGoXFbEmxO87XP8Q2rMWJbRamr32pDWLwrG77+JUNSslnpPgjygKGRN8qDtvFBM5DnIMIQ523q34IZgRhFFekbrwtDZUCqTlMBGLCIdFDiLxIAT+ZK3C8SelPcQ0vJ88ScsG/hSOXrO4ZWsg02ciMdayOo5l1RRVxksgXn+iALEB6BN9UVTxXxOV1HbABYbzZ+Fk8fQwwS/N/PqBsnAGKq4Krkw6Ro3BrwJgOxSIwCIPLNrqBkNIWUQS0+YbglbGoRLWupvuDMgonpG0fc0CxlkypfhQRKyD2PDFk5lXLNRKq3pmgvGCVBonEvfEtu4XtqKXEa2Ude4TUPjDYPmEFQ+iVOGwiDJ6GBGbNaiEEp/qBhcTmNpLYacGdJUU7xNSpbSOSskrS38gRs6FKlC0ENk0nCwgtHLrmMLLvEHKl6eyarpyjiEvSrHPJN7Uw0kcyA8s6Zbqoc8Qx4mepiqJQ1ETZEtV1ANqBd1AhC1BBSpTUVQjpxyE/iBc20yG6vHsOrInAhLFmn6M1q3Yh7ckVYfCMCdcdF9ti6i7NzR7h8wrSUTLdyfiX5SNoDkuUdoa3dgPF8TGxg1cGvupwsomxeUPUBvovhr/bK5Kpm1LtqcWUuQWkCEcW0sCV/tvNwe/mpieaT5Gr0Sqcy1fqQivQsv09sOylMd8ZLUqAsiQ2n+HMR9AA+GFqVKHa6XceiFchcoMTTh79lTvgUcefcVllWjCncuBZEIMNXEVGCjOLyG2G2ANe4YfBOoggnJCIP4TJR0QEA4kfIwZash2b3LduGztAj6EFPFSpVuQHbLT2ECqKsnKbcqalR9wi10gm1AtRCwiGHAZlMuvEVaQn3b+sm3RCHJdD1teolCBUC5ZSXBbG4zDdk7Eyq2Al6ssBR5ycXHMqeoBVwUsHk45O9yiyhpKpMPcUC74gsGwbLnGC6peHH8RKvseJESDmxDvuWEK5lDLjFqG8MOpXa+YTC4UHShfyxYstcJpWw3E2EWJUvuXfCai4sr9QMCx2eCuLMo3G1i9R5XVFo9LXAx3rZHSmggsv1+SdRXEc5BrSHuiIxIAFD63mUDdbFWUV8Rq6BvHAaCzXjLRwkSoMlrVQV4rSvksllDiCdscq2iYPyqLYSj4guIUHRY5Ku8o+ysPaXuW87+OpVUxaIisLaVHJaYKtdQ3udw6bXAOuagDQDRFwdqy/aONkAHp3HLCGtsTh6UrgRdD35KOB5S3DEVN93HAi+5Tn3BXjBF+Ni0glghyURWdxXKvdO/hYWe2BhROA4lnEsNBrbEgycsaupucrcvpKslbpObNlVB6OYJsIKJ3EVa0YuNR1l3A2/2yxoRi0HuqXvxDlRTSBrkvuYEl1KEt+Ya8RIZ3K5ruZR04+/CtZiS6cquAFJBkq8hBrpCGsZzj1Pl4hTMsfdQHqEMKv17jQhFXiN6fCLAijZ7nZiSwtco5dgdP0RsIfI8zRH1koxbtUZBDnhS7izADBVFvUrz63HtmJbGh6f+576LwwTO8cQhxoRZ0DpleioFweIQ206DcFl0waWjq3zGRHBW/IEbpLU1Q7Yw4La217v1OrwcpPmBYprrhgF6LVYC4EW2F2hMwNyg4BNx2V2sUuwhRQ2AMFtxkVeSk+teksI4xbWI/AN1a8YFawUUurU/LF15qShpgMqE2vXMFZwoXXRgY0UV5JZZdlw6hXxN+vqrmGbX0Er2h6y5D/thfTvNHU5ebiQ7dZQ1Uq7YHAt+sDJcu++cj7qW3fMPTXg1HVMtJqcHElX5jv5Fk7hzTwesCVbOoryr4DTDZcBdJMoutuYWHPGjuEKO2o91KXFbYfEBuaLsBHmNDExYhIKxRSrQIu6DIFsv7h+aLimJEuxzi4iZt48hSuB6g1mL6Vs3FuSQqwwDPiUtalzniVxcCvVRyqqrIAx1aXUrhiNwqIK2m4YrqaxdiADnU1UZfMqHIlRwimo1a7+iP6HDuE2iFCAzfz1GD5dyk6ylQLlRmIYxGLbURoLuccQsbQ5OostGTgXO5wnJbbNOSPpRz3BAFEtJkXX/shRbUqF0kF2IqjsrgXfmI7uSroSNshHLf8ADiDFeBWvkl/owBKejYJ28qd2l+4aXCmr8g/7jtQ3NrlkCbY5fcoUyGhuEs7MWnGQ+mHdPT81F62Xd2Jqe56JrTG8mpYN1R9tx1A0q3p1/Mol2FWlh/3/AHCHVOb2Agg3MCIGAAOiP0qUdPJEGxHEWfcaIIwWQ1v7gP2C9vk/JlNVIE79PzCc1ZQpF4gwrY5rqNCCInPMVKVGFYziTE3moaCoeuq4lou/wviHYFe1uUhhKlljwk9OIBfTNEmCCECkF0h9xqL2EFIeyopSxlJtZeRFiuIXFohaaFH5g5nAi24IqShIipbqWthe87iS07Do5AUq6uFXJFr5iDJ0jYmrdzBE5uN+tEOZxCF3zZZH5YO25amuXBMHipu5sqLZ8sG1DC0iF7ESJ4QcFUTL9EZfhxERXZFNBcOf9wVGjFwODZZuGpYJcUPc4C4dBcKIq43UucNl5CqJTHYqPzudPT+ycj+HcMv1kSAGT0SJOuh9XGX+yoYHiFSAlBOo9dbGhUB3cT5IN0/MFBBOyINKY6Fbl+X8Ce5qKAXS5gZGcpKX1C5OX5G9uDVbdEVluZIUYL7lLssGvj6h8B3DK8RmxMQnOxsV8XL1TuWBcALHexF5CXcCU23NsXF1OAt6+4KxS7kryRkgK236iFoTYtp1jT2hW2Pb6l42mlR5p2zcxhZTzGpwWl0jhz1A6H9VgX9Io5d8kGAMrGsrB6eIy2E65t0Quxp9QisWEKOXpLShq6pC4GuDq2JBaBAshxSz1OaGjy7ilKrr6Piccg5yZd7ECZW5Q5UUsRYy1U3pnXEIU1LPsW7hUVzBpU74EpGxAomJG2HFRrUbLwSEEpyBf1Ko31CFRU3jXHTC3pNMbqUxtccpvuXe1JZClmXZvD75lTeY/wAGGvjKsupTcxhfTDRzqWAxZp6gts03U3kFQIpUSv4lBR8SiaJDbJqkDklqkybaOKKeyDotRTz3sxMX3L85oxTe05FIilIwvfCMWo07Cmemj+yWUaJ1sY7pdVNInZiRTzFqonxLXZUpiS0GXKWYkbAWnxDw1IsXbioRzrbST/XTTql82H2JOAHPcv0WcX5qaCx82/QIgH5D0FfUYXwL+99sAGB4eF5uNZmMhb79St1qWFQ1fBBkj2CvWPbPaZaFhLBVCGE8L8RaV1TeBb9EW22+F5BLKJVOn4jsCIp9m6lzdvffUSzflxHfGHDOCvUQXYBG+fqWnUa+bviDpDQcTiVaEccOhUeuEbuEB7X1DXF6sECTzV5uw0BX4ebgAgVl9q7KCnWk/wDJYCNDL9MSU6qsCUO+ivR+IWTYLZzcVNEquVVCrMez3B0hQutiNxDADYWkknPAaZkYilEsCWqYYkIKpiKjOD1LmVUsGIyRiFcdxjgLMLuUcSLplWYNUXwpaRhG8Gr4TjOuF1f1AVaKSzqF3UuDZLKtzKiLhKFc1fM9HqKE/hjpExr5lKbzPvKBncxqGDqIBrqJcLit3Up8wwuaYGmw4lODGKo/HgoJGN0RBQL6lHW/hgo2BbBRvgf1ZarbiNo7HdwI6IlFOG6lOLK09Ib4FsIS+YBvhcqFWo6qg9MKo/rdfaOyqsDa4t+iKKVCpbwCW18OhfZ6gbvnd9D5ZyN8UZHREgEC5x7ZW/hppDrmBDhQOqsMyNkipaL4TuXYMpQYFwFRfromj3doN9fM+GmFdx+EYONo4sFKq0KAjEPzBXNZTBEM8b+TFJSFUot7jeB/QEbRvlKWmQmEtixT0viDRJAco0Xco4QXMeldEw1oYs4azdIYbpct/MJjBHPQ7uWIq5EU+g6lKwmwcfc43sZShUaabyzQ19TVmWBbI5FPRCIfCnvtiuNuA0/bOFUeluBSkpXBqLYApeITXxG7UB2CPcQmAvqHWLOWlLDdRJnjREN+JidxlTC+40OTSZxMHJilY/cenFeplCl8QK0wO/Sty0VFHJu4rVZQO/HMDoQF+kmlRpyAwyuYBVhAvhDUDE6INorxClhbltTWqhjVck5vzAAko6hbRebHOVnJHNuvg4YEcralxVyxdZUC2XoSqp8QsQejm4iAEVSxsbziaSfUob4gwobeJfvHYu2wW4cBlCL8JYPU6sRmnYx3kVqx7HhIKAcnLjBIRb11UQc2RPiWkywi6ZLGYxWhI8d6DK9VDGClME1WYG41y+EvITFcAv6Rx1awta0flLqUUKqDbAgNTcMC37jIWgt7Pb7hwRqrwhMEHUmQLSyFLO5UEPjUOiopDQQs6MBQLzEU5U9o7basflhxsAAUOdbkpa03d3GFCIUMb+ErfPoJrEb9qBcz0R8dWIu3KympO+VMFbwDK6CVfyOeXqZoR1uoAqnpWQaoWndlFXrqWlbaxbeiVRiuVnaZQMl7XsQJgUpB79jHLdHnGw2sNHT3DzQX+iXKFQj7+nxNVHLj38xliRlw+oFAVcNqvmItwFLwmG0o2M2sAMgrXj3EtHREadxSaYPcHIVEaHzFXCcj7jdPxCjSLiSt/EQ1XrYI5ZKCo12Swm1uKBHVDAlBAASgF6gJjW5t8M9AIlMWnxaNtLeq/c3qB8XM6iqlVYveCCyUzYdsSd+FPUpj1OQVCen34CjiouGpWf7QC8alsRAa5piCW611LTmXrIlqyFjt/EZhNBwS1v52UHEq+ZVFnbhXdzdjWkKF26gYObxMKqMkdGEu6aav3D6+lB+eYRQChR3UHRAVC8m/S5Oxp2tIYVUZE0+oYuSgMen4ZRkxLuOVWQ0tF9c6bUESW2K3pCVoit3OGxAkXTrtZUzowVTiP5tXyehOuFGaypKRhT+NlbG26nAMWdew0miWsJog4Piu5kyKA6H0QFBiyU5y2CLB0Gl9MBRAqeKugxkMAR3cURDVILeuI1JRU0DHd9B2NdW9ZCAo1jXMoiFyxd1H5lXNflBW+VgFgalVBtMwXflD1KxpxzkUyniVDNupLCx5YLUerocs19N3m6UXrcETn2PLEbxWIDwidS8wrw2SgXul9U7gZUBQ5CPKF9B67gUl2OYPbEQHjmog6K2FnuPHNbzgcAljv4dBCNvmCOGZE4YoGUoHEeVVRR3LquGNQj9y7KgsWJjHSogrZmBuJNEUNv4labyjpMu0i72VpJZKpUQ4XqFwGOxwQ73dy5wuU8wuwtU+OUdeAKggoaw2WfJEVHBEA91CTNECL/m4mwXWXONFBKbfAAVS3udvZA1JTcYoxx5hbmIRICEouBVZhBBIH8AOy7km9ov9zkygoYu5BoM69SrKi8CDRSH3kfuHdTPHra5JlG74g+fl8kKjT9XB2rA5PTEaOpSoqBovbCHYuEERwfi5Y9gqTCsJnm8D/fyYeqRBOjhH16tVsA+WA2XlsL1WX1VqV2ZJAKLXjblCN+156EEXGqKP4gbHxrRMNolYsrrfpi7IW9dndSzbMuqMdoh6FCa2mh4XPJcpic2RF1XmMgRUHNE7hXPn5bbQfXBBp7Wu2BPgL9GQl0gm34y8aHtnKPuW+Esi7HmNROVhblNlbz0bfwRiwWc1DuOdAKPKUrqdw3CX1oW0uALFVcFDa7AAr7g9RpXVgNi4hlDrgWrZz0e7wGVBqm6cuIaVofLBQutLmkPsVocHQCZCULXpfRKb3QpbSgu4fiNMMN5ELLm2+6kVtB1ZM0jsRpi2RvZsbIqqGmzIJSRKUymJ5TpiHJclmxHQHbCaN1Vyt4/NwKbEUK1yBSPZChGI6gIqVWWRiIxKyvDEi9IdCvIYgFDHCbXUULiFZlrnsJRJSKyvnDqNxAeox9xcZDQhL2jPUxG6gaQdgWivcsEb5LEsSLazkhBMgOmANVHRYUnOwv7h3maHAOt1rDxggWErTYcjklBLvxUbEAuvZBXY6UtQDdp2QVXzV/JCLqf/2Q==" data-filename="IMG-20230423-WA0015.jpg" style="width: 308px;"><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(117000.00 AS Decimal(18, 2)), 10, NULL, 1, CAST(N'2023-04-24T12:25:34.7921182' AS DateTime2), N'Modern ', N'Sundache ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'2bac6fc2-9fb9-4a17-a483-0c0cce93bd37', N'1fe62c45-c13e-4c38-95c3-353693695942', N'Chicken', N'Food', N'Chicken', N'/Content/Images/2bac6fc2-9fb9-4a17-a483-0c0cce93bd37/photobg.jpg', N'/Content/Images/2bac6fc2-9fb9-4a17-a483-0c0cce93bd37/photo1.jpg', N'/Content/Images/2bac6fc2-9fb9-4a17-a483-0c0cce93bd37/photo2.jpg', N'/Content/Images/2bac6fc2-9fb9-4a17-a483-0c0cce93bd37/photo3.jpg', N'/Content/Images/2bac6fc2-9fb9-4a17-a483-0c0cce93bd37/photo4.jpg', N'/Content/Images/2bac6fc2-9fb9-4a17-a483-0c0cce93bd37/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T07:53:17.9284439' AS DateTime2), N'Food', N'K2 Maikaji', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'2e42602d-448b-49eb-8820-2453f2aff3ba', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Power Oil', N'food', N'2.6ltr', N'/Content/Images/2e42602d-448b-49eb-8820-2453f2aff3ba/photobg.png', N'/Content/Images/2e42602d-448b-49eb-8820-2453f2aff3ba/photo1.jpg', N'/Content/Images/2e42602d-448b-49eb-8820-2453f2aff3ba/photo2.png', N'/Content/Images/2e42602d-448b-49eb-8820-2453f2aff3ba/photo3.jpg', N'/Content/Images/2e42602d-448b-49eb-8820-2453f2aff3ba/photo4.png', N'/Content/Images/2e42602d-448b-49eb-8820-2453f2aff3ba/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-05-16T13:55:10.2447159' AS DateTime2), N'Food', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'2eb7528d-a2a5-4dab-baf7-de933d21f0ae', N'1fe62c45-c13e-4c38-95c3-353693695942', N'Chicken', N'Food', N'Chicken', N'/Content/Images/2eb7528d-a2a5-4dab-baf7-de933d21f0ae/photobg.webp', N'/Content/Images/2eb7528d-a2a5-4dab-baf7-de933d21f0ae/photo1.webp', N'/Content/Images/2eb7528d-a2a5-4dab-baf7-de933d21f0ae/photo2.webp', N'/Content/Images/2eb7528d-a2a5-4dab-baf7-de933d21f0ae/photo3.webp', N'/Content/Images/2eb7528d-a2a5-4dab-baf7-de933d21f0ae/photo4.webp', N'/Content/Images/2eb7528d-a2a5-4dab-baf7-de933d21f0ae/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T07:54:03.0610299' AS DateTime2), N'Food', N'K2 Maikaji', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'30d86aaf-9d03-4de4-afee-c99e33692cdb', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Snapchat Lotion', N'Lotion', N' Snapchat Lotion', N'/Content/Images/30d86aaf-9d03-4de4-afee-c99e33692cdb/photobg.jpeg', N'/Content/Images/30d86aaf-9d03-4de4-afee-c99e33692cdb/photo1.jpeg', N'/Content/Images/30d86aaf-9d03-4de4-afee-c99e33692cdb/photo2.jpeg', N'/Content/Images/30d86aaf-9d03-4de4-afee-c99e33692cdb/photo3.jpeg', N'/Content/Images/30d86aaf-9d03-4de4-afee-c99e33692cdb/photo4.jpeg', N'/Content/Images/30d86aaf-9d03-4de4-afee-c99e33692cdb/photo5.jpeg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(14000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-09T13:42:35.3198355' AS DateTime2), N'Lait', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'32772a79-c111-472a-afb5-c1df0b833b42', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'laQilla Basmati Rice', N'food', N'5kg', N'/Content/Images/32772a79-c111-472a-afb5-c1df0b833b42/photobg.jfif', N'/Content/Images/32772a79-c111-472a-afb5-c1df0b833b42/photo1.jfif', N'/Content/Images/32772a79-c111-472a-afb5-c1df0b833b42/photo2.jfif', N'/Content/Images/32772a79-c111-472a-afb5-c1df0b833b42/photo3.jfif', N'/Content/Images/32772a79-c111-472a-afb5-c1df0b833b42/photo4.jfif', N'/Content/Images/32772a79-c111-472a-afb5-c1df0b833b42/photo5.jfif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(14500.00 AS Decimal(18, 2)), 0, NULL, 10, CAST(N'2023-05-02T09:10:44.9310059' AS DateTime2), N'Food', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'34bbeed0-55b9-494b-b3c2-c67bc862ec8b', N'66073fa6-6047-4887-b9bc-2d44bd89b7a1', N'Oil', N'Oil', N'OIl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 1, CAST(N'2023-05-04T15:35:36.2329262' AS DateTime2), N'87687', N'Kings', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'3910938b-1581-412f-b7f4-64c433b5893e', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Garlic and ginger  ', N'vegetable', N'Garlic and ginger ', N'/Content/Images/3910938b-1581-412f-b7f4-64c433b5893e/photobg.jpg', N'/Content/Images/3910938b-1581-412f-b7f4-64c433b5893e/photo1.jpg', N'/Content/Images/3910938b-1581-412f-b7f4-64c433b5893e/photo2.jpg', N'/Content/Images/3910938b-1581-412f-b7f4-64c433b5893e/photo3.jpg', N'/Content/Images/3910938b-1581-412f-b7f4-64c433b5893e/photo4.jpg', N'/Content/Images/3910938b-1581-412f-b7f4-64c433b5893e/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T09:35:05.0302465' AS DateTime2), N'vegetable', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'3c8b6476-9a0a-4ff0-b5fc-2ca54ee0da5a', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Water melon', N'Food', N'Water melon', N'/Content/Images/3c8b6476-9a0a-4ff0-b5fc-2ca54ee0da5a/photobg.jpeg', N'/Content/Images/3c8b6476-9a0a-4ff0-b5fc-2ca54ee0da5a/photo1.jpeg', N'/Content/Images/3c8b6476-9a0a-4ff0-b5fc-2ca54ee0da5a/photo2.jpeg', N'/Content/Images/3c8b6476-9a0a-4ff0-b5fc-2ca54ee0da5a/photo3.jpeg', N'/Content/Images/3c8b6476-9a0a-4ff0-b5fc-2ca54ee0da5a/photo4.jpeg', N'/Content/Images/3c8b6476-9a0a-4ff0-b5fc-2ca54ee0da5a/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T09:25:36.1171084' AS DateTime2), N'Food', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'3c93c566-5a35-4b39-9168-c33b48dd43d0', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Spirulina 200grm  ', N'Herbs&Spices', N' Milkthustle 200grm 
', N'/Content/Images/3c93c566-5a35-4b39-9168-c33b48dd43d0/photobg.png', N'/Content/Images/3c93c566-5a35-4b39-9168-c33b48dd43d0/photo1.png', N'/Content/Images/3c93c566-5a35-4b39-9168-c33b48dd43d0/photo2.png', N'/Content/Images/3c93c566-5a35-4b39-9168-c33b48dd43d0/photo3.png', N'/Content/Images/3c93c566-5a35-4b39-9168-c33b48dd43d0/photo4.png', N'/Content/Images/3c93c566-5a35-4b39-9168-c33b48dd43d0/photo5.png', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T12:29:36.2601832' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'3cf1c39b-0f3d-466c-8f7b-159f1a8e90e5', N'4600be22-6eef-4827-bdd9-551268615f47', N'Yam ', N'Food', N'1500 per pieces ', N'/Content/Images/3cf1c39b-0f3d-466c-8f7b-159f1a8e90e5/photobg.jpg', N'/Content/Images/3cf1c39b-0f3d-466c-8f7b-159f1a8e90e5/photo1.jpeg', N'/Content/Images/3cf1c39b-0f3d-466c-8f7b-159f1a8e90e5/photo2.jpg', N'/Content/Images/3cf1c39b-0f3d-466c-8f7b-159f1a8e90e5/photo3.jpg', N'/Content/Images/3cf1c39b-0f3d-466c-8f7b-159f1a8e90e5/photo4.jpg', N'/Content/Images/3cf1c39b-0f3d-466c-8f7b-159f1a8e90e5/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-16T12:57:31.8186868' AS DateTime2), N'Food', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'3db059d7-9d92-43af-9e9a-0ea311b8a281', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'White pepper 200grm ', N'Herbs&Spices', N'White pepper 200grm  
', N'/Content/Images/3db059d7-9d92-43af-9e9a-0ea311b8a281/photobg.png', N'/Content/Images/3db059d7-9d92-43af-9e9a-0ea311b8a281/photo1.png', N'/Content/Images/3db059d7-9d92-43af-9e9a-0ea311b8a281/photo2.png', N'/Content/Images/3db059d7-9d92-43af-9e9a-0ea311b8a281/photo3.png', N'/Content/Images/3db059d7-9d92-43af-9e9a-0ea311b8a281/photo4.png', N'/Content/Images/3db059d7-9d92-43af-9e9a-0ea311b8a281/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:22:50.3412202' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'3e514beb-cadd-49ae-a697-fd0e690e36f3', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Luxury Chair', N'Morden ', N'  Chair', NULL, NULL, N'/Content/Images/3e514beb-cadd-49ae-a697-fd0e690e36f3/photo2.jpeg', NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(117000.00 AS Decimal(18, 2)), 10, NULL, 1, CAST(N'2023-04-24T12:22:22.3456365' AS DateTime2), N'Sundache enterprise ', N'', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'41225dbd-cc23-4f4e-8c7d-8c5f1548d23c', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Tatashe 1 basket ', N'vegetable', N' Tatashe 1 basket ', N'/Content/Images/41225dbd-cc23-4f4e-8c7d-8c5f1548d23c/photobg.png', N'/Content/Images/41225dbd-cc23-4f4e-8c7d-8c5f1548d23c/photo1.png', N'/Content/Images/41225dbd-cc23-4f4e-8c7d-8c5f1548d23c/photo2.png', N'/Content/Images/41225dbd-cc23-4f4e-8c7d-8c5f1548d23c/photo3.png', N'/Content/Images/41225dbd-cc23-4f4e-8c7d-8c5f1548d23c/photo4.png', N'/Content/Images/41225dbd-cc23-4f4e-8c7d-8c5f1548d23c/photo5.png', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T08:56:20.2419673' AS DateTime2), N'vegetable', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'4439e95c-2c35-4f20-9d07-c77414d675da', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Baobab 1kg ', N'Herbs&Spices', N'Baobab 1kg  
', N'/Content/Images/4439e95c-2c35-4f20-9d07-c77414d675da/photobg.png', N'/Content/Images/4439e95c-2c35-4f20-9d07-c77414d675da/photo1.png', N'/Content/Images/4439e95c-2c35-4f20-9d07-c77414d675da/photo2.png', N'/Content/Images/4439e95c-2c35-4f20-9d07-c77414d675da/photo3.png', N'/Content/Images/4439e95c-2c35-4f20-9d07-c77414d675da/photo4.png', N'/Content/Images/4439e95c-2c35-4f20-9d07-c77414d675da/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T12:26:37.4712413' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'4963f59b-ceb1-47f1-969b-25425d9189b0', N'4600be22-6eef-4827-bdd9-551268615f47', N'Duck', N'Birds', N'Duck 
4500 depending on the force', N'/Content/Images/4963f59b-ceb1-47f1-969b-25425d9189b0/photobg.jpg', N'/Content/Images/4963f59b-ceb1-47f1-969b-25425d9189b0/photo1.jpg', N'/Content/Images/4963f59b-ceb1-47f1-969b-25425d9189b0/photo2.jpg', N'/Content/Images/4963f59b-ceb1-47f1-969b-25425d9189b0/photo3.jpg', N'/Content/Images/4963f59b-ceb1-47f1-969b-25425d9189b0/photo4.jpg', N'/Content/Images/4963f59b-ceb1-47f1-969b-25425d9189b0/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4500.00 AS Decimal(18, 2)), 0, NULL, 0, CAST(N'2023-08-16T11:14:12.8883992' AS DateTime2), N'Birds', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'4fa6aa0f-5a89-4891-91d4-e964230c46a4', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Rose Plus Tissue', N'Toiletries', N'<p>tissue paper</p>', N'/Content/Images/4fa6aa0f-5a89-4891-91d4-e964230c46a4/photobg.webp', N'/Content/Images/4fa6aa0f-5a89-4891-91d4-e964230c46a4/photo1.webp', N'/Content/Images/4fa6aa0f-5a89-4891-91d4-e964230c46a4/photo2.webp', N'/Content/Images/4fa6aa0f-5a89-4891-91d4-e964230c46a4/photo3.webp', N'/Content/Images/4fa6aa0f-5a89-4891-91d4-e964230c46a4/photo4.webp', N'/Content/Images/4fa6aa0f-5a89-4891-91d4-e964230c46a4/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(800.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-04-27T18:19:15.5046325' AS DateTime2), N'Toiletries', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'4fd26fb1-34f2-4d8d-8a8f-ca17b8ebed4a', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Indomie Noodles', N'food', N'<p>noodles</p>', N'/Content/Images/4fd26fb1-34f2-4d8d-8a8f-ca17b8ebed4a/photobg.png', N'/Content/Images/4fd26fb1-34f2-4d8d-8a8f-ca17b8ebed4a/photo1.png', N'/Content/Images/4fd26fb1-34f2-4d8d-8a8f-ca17b8ebed4a/photo2.png', N'/Content/Images/4fd26fb1-34f2-4d8d-8a8f-ca17b8ebed4a/photo3.png', N'/Content/Images/4fd26fb1-34f2-4d8d-8a8f-ca17b8ebed4a/photo4.png', N'/Content/Images/4fd26fb1-34f2-4d8d-8a8f-ca17b8ebed4a/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4200.00 AS Decimal(18, 2)), 0, NULL, 100, CAST(N'2023-04-27T13:29:10.2685741' AS DateTime2), N'EgbochiResources ', N'Noodles', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'56285588-3cf6-4801-a113-9ad3a93b688c', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Meat 1 kl 3500', N'Meat', N'Meant 1 kl ', N'/Content/Images/56285588-3cf6-4801-a113-9ad3a93b688c/photobg.jpeg', N'/Content/Images/56285588-3cf6-4801-a113-9ad3a93b688c/photo1.jpeg', N'/Content/Images/56285588-3cf6-4801-a113-9ad3a93b688c/photo2.jpeg', N'/Content/Images/56285588-3cf6-4801-a113-9ad3a93b688c/photo3.jpeg', N'/Content/Images/56285588-3cf6-4801-a113-9ad3a93b688c/photo4.jpeg', N'/Content/Images/56285588-3cf6-4801-a113-9ad3a93b688c/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T09:37:10.1639452' AS DateTime2), N'Meat', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'56ac0028-c989-4c50-8840-d8ff42d7e51a', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Tomatoes 1 basket ', N'vegetable', N'Tomatoes 1 basket ', N'/Content/Images/56ac0028-c989-4c50-8840-d8ff42d7e51a/photobg.jpg', N'/Content/Images/56ac0028-c989-4c50-8840-d8ff42d7e51a/photo1.jpg', N'/Content/Images/56ac0028-c989-4c50-8840-d8ff42d7e51a/photo2.jpg', N'/Content/Images/56ac0028-c989-4c50-8840-d8ff42d7e51a/photo3.jpg', N'/Content/Images/56ac0028-c989-4c50-8840-d8ff42d7e51a/photo4.jpg', N'/Content/Images/56ac0028-c989-4c50-8840-d8ff42d7e51a/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T08:54:56.2564569' AS DateTime2), N'vegetable', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'59432130-f4d1-4b53-8775-628f1f19a9f5', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Aqua Missa Sun Sunscreen', N'Lotion', N' A gel-textured sunscreen that cools down the skin upon application and delivers protecting, hydrating, and soothing ingredients while shielding the skin from sun damage. Strengthened with SPF50+ PA+++ that blocks both UVA and UVB rays, this sunscreen comes in a lightweight and non-sticky gel formulation that feels refreshing on the skin.
How to useApply a generous amount after cleanser, toner, serum, and moisturizer. For daily use and application regularly every 2 to 4 hours depending on sun exposure', N'/Content/Images/59432130-f4d1-4b53-8775-628f1f19a9f5/photobg.jpg', N'/Content/Images/59432130-f4d1-4b53-8775-628f1f19a9f5/photo1.jpg', N'/Content/Images/59432130-f4d1-4b53-8775-628f1f19a9f5/photo2.jpg', N'/Content/Images/59432130-f4d1-4b53-8775-628f1f19a9f5/photo3.jpg', N'/Content/Images/59432130-f4d1-4b53-8775-628f1f19a9f5/photo4.jpg', N'/Content/Images/59432130-f4d1-4b53-8775-628f1f19a9f5/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-09T14:28:08.4016706' AS DateTime2), N'Aqua Missa Sun Sunscreen', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'5ac2f916-bb88-4c8b-9665-7801551f662f', N'156dfadb-828f-468a-9389-20f417e68d7f', N'Bathrobe', N'clothing', N'<p>Bathrobe</p>', N'/Content/Images/5ac2f916-bb88-4c8b-9665-7801551f662f/photobg.jpeg', N'/Content/Images/5ac2f916-bb88-4c8b-9665-7801551f662f/photo1.jpeg', N'/Content/Images/5ac2f916-bb88-4c8b-9665-7801551f662f/photo2.jpeg', N'/Content/Images/5ac2f916-bb88-4c8b-9665-7801551f662f/photo3.jpeg', N'/Content/Images/5ac2f916-bb88-4c8b-9665-7801551f662f/photo4.jpeg', N'/Content/Images/5ac2f916-bb88-4c8b-9665-7801551f662f/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5500.00 AS Decimal(18, 2)), 0, NULL, 23, CAST(N'2023-04-23T16:46:35.3317762' AS DateTime2), N'Clothing', N'Sedache Ent.', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'5b12ef0c-11ee-4a03-b648-e481366136ad', N'4600be22-6eef-4827-bdd9-551268615f47', N'onions', N'vegetable', N'onions', N'/Content/Images/5b12ef0c-11ee-4a03-b648-e481366136ad/photobg.jpg', N'/Content/Images/5b12ef0c-11ee-4a03-b648-e481366136ad/photo1.jpg', N'/Content/Images/5b12ef0c-11ee-4a03-b648-e481366136ad/photo2.jpg', N'/Content/Images/5b12ef0c-11ee-4a03-b648-e481366136ad/photo3.jpg', N'/Content/Images/5b12ef0c-11ee-4a03-b648-e481366136ad/photo4.jpg', N'/Content/Images/5b12ef0c-11ee-4a03-b648-e481366136ad/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-16T12:58:34.7235687' AS DateTime2), N'vegetable', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'5d400ee0-cc38-4f80-ad34-82354aca7aa4', N'4600be22-6eef-4827-bdd9-551268615f47', N'Pineapple ', N'Fruit', N'Pineapple ', N'/Content/Images/5d400ee0-cc38-4f80-ad34-82354aca7aa4/photobg.webp', N'/Content/Images/5d400ee0-cc38-4f80-ad34-82354aca7aa4/photo1.jpg', N'/Content/Images/5d400ee0-cc38-4f80-ad34-82354aca7aa4/photo2.jpg', N'/Content/Images/5d400ee0-cc38-4f80-ad34-82354aca7aa4/photo3.webp', N'/Content/Images/5d400ee0-cc38-4f80-ad34-82354aca7aa4/photo4.webp', N'/Content/Images/5d400ee0-cc38-4f80-ad34-82354aca7aa4/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 0, CAST(N'2023-08-16T10:36:19.6131720' AS DateTime2), N'Fruit', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'5f716c0b-76a8-40a9-9e4f-4d314862a87a', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Juliet Eve', N'Lotion', N' Satin Skinz SATIN SKINZ JULIET EVE
', N'/Content/Images/5f716c0b-76a8-40a9-9e4f-4d314862a87a/photobg.jpg', N'/Content/Images/5f716c0b-76a8-40a9-9e4f-4d314862a87a/photo1.jpg', N'/Content/Images/5f716c0b-76a8-40a9-9e4f-4d314862a87a/photo2.jpg', N'/Content/Images/5f716c0b-76a8-40a9-9e4f-4d314862a87a/photo3.jpg', N'/Content/Images/5f716c0b-76a8-40a9-9e4f-4d314862a87a/photo4.jpg', N'/Content/Images/5f716c0b-76a8-40a9-9e4f-4d314862a87a/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(11000.00 AS Decimal(18, 2)), 0, NULL, 60, CAST(N'2023-08-10T08:46:11.8071071' AS DateTime2), N'Satin Skinz SATIN SKINZ JULIET EVE', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'61e76399-16c1-477f-bf38-8f75fe54fee0', N'4600be22-6eef-4827-bdd9-551268615f47', N'Quail (Salwa Bird)', N'Birds', N'Quail (Salwa Bird)', N'/Content/Images/61e76399-16c1-477f-bf38-8f75fe54fee0/photobg.jpg', N'/Content/Images/61e76399-16c1-477f-bf38-8f75fe54fee0/photo1.jpg', N'/Content/Images/61e76399-16c1-477f-bf38-8f75fe54fee0/photo2.jpg', N'/Content/Images/61e76399-16c1-477f-bf38-8f75fe54fee0/photo3.jpg', N'/Content/Images/61e76399-16c1-477f-bf38-8f75fe54fee0/photo4.jpg', N'/Content/Images/61e76399-16c1-477f-bf38-8f75fe54fee0/photo5.jpg', NULL, N'Others', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-16T12:44:40.3773717' AS DateTime2), N'Birds', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'630f29a3-f6c6-4b6e-a678-16e4755ec4bc', N'1105f245-875d-4b0d-9641-6a354f707d5f', N' Sunflower oil', N'food', N'<p>Cookingoil</p>', N'/Content/Images/630f29a3-f6c6-4b6e-a678-16e4755ec4bc/photobg.webp', N'/Content/Images/630f29a3-f6c6-4b6e-a678-16e4755ec4bc/photo1.webp', N'/Content/Images/630f29a3-f6c6-4b6e-a678-16e4755ec4bc/photo2.webp', N'/Content/Images/630f29a3-f6c6-4b6e-a678-16e4755ec4bc/photo3.webp', N'/Content/Images/630f29a3-f6c6-4b6e-a678-16e4755ec4bc/photo4.webp', N'/Content/Images/630f29a3-f6c6-4b6e-a678-16e4755ec4bc/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(15000.00 AS Decimal(18, 2)), 0, NULL, 5, CAST(N'2023-04-27T13:55:53.4867257' AS DateTime2), N'food ', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'631eeebe-ac95-4aa8-91fc-066b77af8106', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Sweet potatoes 1 basket', N'Food', N'Sweet potatoes 1 basket', N'/Content/Images/631eeebe-ac95-4aa8-91fc-066b77af8106/photobg.png', N'/Content/Images/631eeebe-ac95-4aa8-91fc-066b77af8106/photo1.png', N'/Content/Images/631eeebe-ac95-4aa8-91fc-066b77af8106/photo2.png', N'/Content/Images/631eeebe-ac95-4aa8-91fc-066b77af8106/photo3.png', N'/Content/Images/631eeebe-ac95-4aa8-91fc-066b77af8106/photo4.png', N'/Content/Images/631eeebe-ac95-4aa8-91fc-066b77af8106/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T08:37:18.9276921' AS DateTime2), N'Food', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'643d9490-6534-4b91-9bbe-ac7694ae0e44', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Attarugu 1 basket', N'vegetable', N'Attarugu 1 basket', N'/Content/Images/643d9490-6534-4b91-9bbe-ac7694ae0e44/photobg.jpg', N'/Content/Images/643d9490-6534-4b91-9bbe-ac7694ae0e44/photo1.jpg', N'/Content/Images/643d9490-6534-4b91-9bbe-ac7694ae0e44/photo2.jpg', N'/Content/Images/643d9490-6534-4b91-9bbe-ac7694ae0e44/photo3.jpg', N'/Content/Images/643d9490-6534-4b91-9bbe-ac7694ae0e44/photo4.jpg', N'/Content/Images/643d9490-6534-4b91-9bbe-ac7694ae0e44/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T10:27:18.4748352' AS DateTime2), N'vegetable', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'648fd947-5b9d-49eb-bb93-033c74011bd7', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Arabian tea 200grm  ', N'Herbs&Spices', N'Arabian tea 200grm 

', N'/Content/Images/648fd947-5b9d-49eb-bb93-033c74011bd7/photobg.png', N'/Content/Images/648fd947-5b9d-49eb-bb93-033c74011bd7/photo1.png', N'/Content/Images/648fd947-5b9d-49eb-bb93-033c74011bd7/photo2.png', N'/Content/Images/648fd947-5b9d-49eb-bb93-033c74011bd7/photo3.png', N'/Content/Images/648fd947-5b9d-49eb-bb93-033c74011bd7/photo4.png', N'/Content/Images/648fd947-5b9d-49eb-bb93-033c74011bd7/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T11:55:34.4204323' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'64f9cfe2-616b-41bf-b3d1-a4bbf79042d8', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Cinnamon 200grm', N'Herbs&Spices', N'Cinnamon 200grm', N'/Content/Images/64f9cfe2-616b-41bf-b3d1-a4bbf79042d8/photobg.png', N'/Content/Images/64f9cfe2-616b-41bf-b3d1-a4bbf79042d8/photo1.png', N'/Content/Images/64f9cfe2-616b-41bf-b3d1-a4bbf79042d8/photo2.png', N'/Content/Images/64f9cfe2-616b-41bf-b3d1-a4bbf79042d8/photo3.png', N'/Content/Images/64f9cfe2-616b-41bf-b3d1-a4bbf79042d8/photo4.png', N'/Content/Images/64f9cfe2-616b-41bf-b3d1-a4bbf79042d8/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T11:42:29.4043535' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'670d013e-76a6-423e-9f3e-369afd6da207', N'4600be22-6eef-4827-bdd9-551268615f47', N'Old layer Chicken', N'Birds', N'Old layer Chicken', N'/Content/Images/670d013e-76a6-423e-9f3e-369afd6da207/photobg.png', N'/Content/Images/670d013e-76a6-423e-9f3e-369afd6da207/photo1.jpeg', N'/Content/Images/670d013e-76a6-423e-9f3e-369afd6da207/photo2.jpeg', N'/Content/Images/670d013e-76a6-423e-9f3e-369afd6da207/photo3.png', N'/Content/Images/670d013e-76a6-423e-9f3e-369afd6da207/photo4.jpeg', N'/Content/Images/670d013e-76a6-423e-9f3e-369afd6da207/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-16T11:00:27.1688401' AS DateTime2), N'Birds', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'682bf73a-3937-47d0-9e41-22ccb92c47b0', N'4600be22-6eef-4827-bdd9-551268615f47', N'Tomatoes', N'Food', N'
Fresh tomatoes
Our Range is from 
N500
N1000
N4500', N'/Content/Images/682bf73a-3937-47d0-9e41-22ccb92c47b0/photobg.jpeg', N'/Content/Images/682bf73a-3937-47d0-9e41-22ccb92c47b0/photo1.jpeg', N'/Content/Images/682bf73a-3937-47d0-9e41-22ccb92c47b0/photo2.jpeg', N'/Content/Images/682bf73a-3937-47d0-9e41-22ccb92c47b0/photo3.jpeg', N'/Content/Images/682bf73a-3937-47d0-9e41-22ccb92c47b0/photo4.jpeg', N'/Content/Images/682bf73a-3937-47d0-9e41-22ccb92c47b0/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(500.00 AS Decimal(18, 2)), 0, NULL, 100, CAST(N'2023-08-16T09:47:32.8447915' AS DateTime2), N'Food', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'692ee09f-ad8a-49d1-b508-d993e299e23f', N'4600be22-6eef-4827-bdd9-551268615f47', N'onions', N'Food', N'onions
N500 upwards ', N'/Content/Images/692ee09f-ad8a-49d1-b508-d993e299e23f/photobg.jpg', N'/Content/Images/692ee09f-ad8a-49d1-b508-d993e299e23f/photo1.jpg', N'/Content/Images/692ee09f-ad8a-49d1-b508-d993e299e23f/photo2.jpg', N'/Content/Images/692ee09f-ad8a-49d1-b508-d993e299e23f/photo3.jpg', N'/Content/Images/692ee09f-ad8a-49d1-b508-d993e299e23f/photo4.jpg', N'/Content/Images/692ee09f-ad8a-49d1-b508-d993e299e23f/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-16T12:56:07.0234738' AS DateTime2), N'Food', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'6d198a91-d924-4ccd-8420-2fb9157481bb', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Flax seed 200grm', N'Herbs&Spices', N'Flax seed 200grm', N'/Content/Images/6d198a91-d924-4ccd-8420-2fb9157481bb/photobg.png', N'/Content/Images/6d198a91-d924-4ccd-8420-2fb9157481bb/photo1.png', N'/Content/Images/6d198a91-d924-4ccd-8420-2fb9157481bb/photo2.png', N'/Content/Images/6d198a91-d924-4ccd-8420-2fb9157481bb/photo3.png', N'/Content/Images/6d198a91-d924-4ccd-8420-2fb9157481bb/photo4.png', N'/Content/Images/6d198a91-d924-4ccd-8420-2fb9157481bb/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T11:43:34.7240164' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'6d5231c0-4364-4e5f-bf7e-af9a52b7f521', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Eggs 1 crate ', N'Food', N'Eggs 1 crate ', N'/Content/Images/6d5231c0-4364-4e5f-bf7e-af9a52b7f521/photobg.jpg', N'/Content/Images/6d5231c0-4364-4e5f-bf7e-af9a52b7f521/photo1.jpg', N'/Content/Images/6d5231c0-4364-4e5f-bf7e-af9a52b7f521/photo2.jpg', N'/Content/Images/6d5231c0-4364-4e5f-bf7e-af9a52b7f521/photo3.jpg', N'/Content/Images/6d5231c0-4364-4e5f-bf7e-af9a52b7f521/photo4.jpg', N'/Content/Images/6d5231c0-4364-4e5f-bf7e-af9a52b7f521/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2200.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T08:40:16.6728307' AS DateTime2), N'Food', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'6ecf81c2-b64c-48d1-a71f-3efcd1dd470b', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'The Ordinary Glycolic Acid ', N'Lotion', N' Glycolic Acid is an alpha hydroxy acid that exfoliates the skin. This 7% toning solution offers mild exfoliation for improved skin radiance and visible clarity. The formula also improves the appearance of skin texture with continued use. 

This formula contains a studied Tasmanian Pepperberry derivative to help reduce irritation associated with acid use.  The formula is further supported with inclusion of ginseng root and aloe vera for both visible radiance and soothing benefits.  

This pH of this formula is approximately 3.6. Glycolic Acid has a pKa of 3.6 and pKa is the most important aspect to consider in formulating with acids. pKa implies acid availability. When pKa is close to pH, there is an ideal balance between salt and acidity, maximizing effectiveness of the acid and reducing irritation. Higher pH numbers in such a case would increase salt which counter-intuitively would make the formula even more irritating than if the formula was more acidic.
Directions', N'/Content/Images/6ecf81c2-b64c-48d1-a71f-3efcd1dd470b/photobg.jpg', N'/Content/Images/6ecf81c2-b64c-48d1-a71f-3efcd1dd470b/photo1.jpg', N'/Content/Images/6ecf81c2-b64c-48d1-a71f-3efcd1dd470b/photo2.jpg', N'/Content/Images/6ecf81c2-b64c-48d1-a71f-3efcd1dd470b/photo3.jpg', N'/Content/Images/6ecf81c2-b64c-48d1-a71f-3efcd1dd470b/photo4.jpg', N'/Content/Images/6ecf81c2-b64c-48d1-a71f-3efcd1dd470b/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(15000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-09T14:07:56.5341223' AS DateTime2), N'Glycolic Acid', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'6fd905d2-40a5-4190-b416-bfaf383169e3', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Dandelion root 200grm  ', N'Herbs&Spices', N' Dandelion root 200grm  ', N'/Content/Images/6fd905d2-40a5-4190-b416-bfaf383169e3/photobg.png', N'/Content/Images/6fd905d2-40a5-4190-b416-bfaf383169e3/photo1.png', N'/Content/Images/6fd905d2-40a5-4190-b416-bfaf383169e3/photo2.png', N'/Content/Images/6fd905d2-40a5-4190-b416-bfaf383169e3/photo3.png', N'/Content/Images/6fd905d2-40a5-4190-b416-bfaf383169e3/photo4.png', N'/Content/Images/6fd905d2-40a5-4190-b416-bfaf383169e3/photo5.png', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(6500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T11:51:10.3085719' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'707d29ab-b76a-48e3-876e-0996aa8ce4f7', N'4600be22-6eef-4827-bdd9-551268615f47', N'Water Mellon ', N'Fruit', N'Water Mellon ', N'/Content/Images/707d29ab-b76a-48e3-876e-0996aa8ce4f7/photobg.jpeg', N'/Content/Images/707d29ab-b76a-48e3-876e-0996aa8ce4f7/photo1.jpeg', N'/Content/Images/707d29ab-b76a-48e3-876e-0996aa8ce4f7/photo2.jpeg', N'/Content/Images/707d29ab-b76a-48e3-876e-0996aa8ce4f7/photo3.jpeg', N'/Content/Images/707d29ab-b76a-48e3-876e-0996aa8ce4f7/photo4.jpeg', N'/Content/Images/707d29ab-b76a-48e3-876e-0996aa8ce4f7/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 100, CAST(N'2023-08-16T10:31:09.9734007' AS DateTime2), N'Fruit', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'712f5a3f-53d8-43d5-8611-ff426453b811', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'LADIES SHINE SUPPLIMENT', N'Cream', N' Products with electrical plugs are designed for use in the US. Outlets and voltage differ internationally and this product may require an adapter or converter for use in your destination. Please check compatibility before purchasing', N'/Content/Images/712f5a3f-53d8-43d5-8611-ff426453b811/photobg.jpg', N'/Content/Images/712f5a3f-53d8-43d5-8611-ff426453b811/photo1.jpg', N'/Content/Images/712f5a3f-53d8-43d5-8611-ff426453b811/photo2.jpg', N'/Content/Images/712f5a3f-53d8-43d5-8611-ff426453b811/photo3.jpg', N'/Content/Images/712f5a3f-53d8-43d5-8611-ff426453b811/photo4.jpg', N'/Content/Images/712f5a3f-53d8-43d5-8611-ff426453b811/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(18500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-10T08:41:15.2884759' AS DateTime2), N'LADIES SHINE SUPPLIMENT', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'7484b696-13da-4be9-86e1-17be36b726b7', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Black pepper 200grm  ', N'Herbs&Spices', N' Black pepper 200grm 
', N'/Content/Images/7484b696-13da-4be9-86e1-17be36b726b7/photobg.png', N'/Content/Images/7484b696-13da-4be9-86e1-17be36b726b7/photo1.png', N'/Content/Images/7484b696-13da-4be9-86e1-17be36b726b7/photo2.png', N'/Content/Images/7484b696-13da-4be9-86e1-17be36b726b7/photo3.png', N'/Content/Images/7484b696-13da-4be9-86e1-17be36b726b7/photo4.png', N'/Content/Images/7484b696-13da-4be9-86e1-17be36b726b7/photo5.png', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T12:22:23.9614781' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'7ae52d31-f927-474e-a588-80156c4f7400', N'4600be22-6eef-4827-bdd9-551268615f47', N'Local Chicken', N'Birds', N'Local Chicken', N'/Content/Images/7ae52d31-f927-474e-a588-80156c4f7400/photobg.jpg', N'/Content/Images/7ae52d31-f927-474e-a588-80156c4f7400/photo1.jpg', N'/Content/Images/7ae52d31-f927-474e-a588-80156c4f7400/photo2.jpg', N'/Content/Images/7ae52d31-f927-474e-a588-80156c4f7400/photo3.jpg', N'/Content/Images/7ae52d31-f927-474e-a588-80156c4f7400/photo4.jpg', N'/Content/Images/7ae52d31-f927-474e-a588-80156c4f7400/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-16T10:54:00.1048861' AS DateTime2), N'Birds', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'7c884ac9-1e66-402c-955c-fa5f0ca07149', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Medix 5.5 Vitamin C Cream Face Lotion & Body Lotion', N'Lotion', N' VITAMIN C – Incorporating a Vitamin C infused body lotion into your daily skincare routine can help to promote a more healthy, radiant, & youthful-looking complexion. Vitamin C helps promote an even skin tone, while also helping stimulate collagen production to improve skin elasticity + firmness. Vitamin C also helps to minimize redness or irritation in the skin, helps protect from environmental stressors like UV rays, and helps reduce the appearance of fine lines, sun damage, & wrinkles.

EFFECTIVE INGREDIENTS – Medix 5.5 Vitamin C Cream Brighten + Firm Body Lotion is formulated with the perfect combination of effective anti aging + brightening ingredients, including Shea Butter, Aloe Vera, Ferulic Acid, Turmeric, Vitamin E, Glycerin, Ginger, & More. Shea Butter deeply moisturizes the skin, improves elasticity, & provides a protective barrier to help prevent moisture loss. Vitamin E helps protect skin against free radicals + UV Damage. Aloe Vera helps calm + hydrate the skin.

RADIANT SKIN – This Medix 5.5 Vitamin C Body Cream infused with Turmeric helps refine the look of aging skin and uneven skin tone. Vitamin C helps promote an even skin tone, while also helping stimulate collection production to help improve skin elasticity + firmness. Advanced Brightening Vitamin C Body & Face Lotion helps refine the look of discolored skin, age spots, freckles, sun damage from sunspots, rough skin texture, hyperpigmentation, & acne-scars.

SAFE FOR SENSITIVE SKIN – This Non-Greasy Vitamin C + Turmeric infused formula absorbs easily into the skin and is rich enough to be a long-lasting body moisturizer, but also gentle enough to be used as daily facial moisturizer. Formulated to be safe for all skin types, including oily skin + sensitive skin. Hydrate, Brighten, & Moisturize dull, lackluster skin with Medix 5.5 Vitamin C + Turmeric Face & Body Moisturizer Lotion to help leave your skin looking smoother, firmer, & more radiant.

CLEAN BEAUTY – Vegan + Cruelty-Free. Free From: Parabens, Drying Alcohols, Animal-Derived Ingredients, PEGs, Sulfates, Dyes, Propylene Glycol, Mineral Oil, & Talc. Manufactured In Our FDA Inspected Lab in Chicago, USA. Dermatologist-Tested, Clinically-Tested, & Allergy-Tested. 

NOTE: Medix Vitamin C Cream can fade slightly yellow from white over time due to the Ascorbic Acid. This is natural aging and does not impact the quality of the formula or effectiveness of the ingredients', N'/Content/Images/7c884ac9-1e66-402c-955c-fa5f0ca07149/photobg.jpg', N'/Content/Images/7c884ac9-1e66-402c-955c-fa5f0ca07149/photo1.jpg', N'/Content/Images/7c884ac9-1e66-402c-955c-fa5f0ca07149/photo2.jpg', N'/Content/Images/7c884ac9-1e66-402c-955c-fa5f0ca07149/photo3.jpg', N'/Content/Images/7c884ac9-1e66-402c-955c-fa5f0ca07149/photo4.jpg', N'/Content/Images/7c884ac9-1e66-402c-955c-fa5f0ca07149/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(13000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-10T09:32:56.1855450' AS DateTime2), N'Medix 5.5 Vitamin C Cream Face Lotion & Body Lotion', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'7e76f5f0-47a4-4bd9-9611-be5779529e8c', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Chia seed 200grm', N'Herbs&Spices', N'Chia seed 200grm', N'/Content/Images/7e76f5f0-47a4-4bd9-9611-be5779529e8c/photobg.png', N'/Content/Images/7e76f5f0-47a4-4bd9-9611-be5779529e8c/photo1.png', N'/Content/Images/7e76f5f0-47a4-4bd9-9611-be5779529e8c/photo2.png', N'/Content/Images/7e76f5f0-47a4-4bd9-9611-be5779529e8c/photo3.png', N'/Content/Images/7e76f5f0-47a4-4bd9-9611-be5779529e8c/photo4.png', N'/Content/Images/7e76f5f0-47a4-4bd9-9611-be5779529e8c/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T11:43:08.5536347' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'84b1b1b9-afb3-42c5-81c1-09076ce3dde8', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Miracle Pure White Supplement', N'Miracle Pure White Supplement', N' Miracle Pure White Supplement lightens spots and dullness reveal the timeless beauty that is formulated with L-Glutathione, ascorbic acid, vitamin C.Gluta White Sparkle L-Glutathione Plus Supplement lightens spots and dullness reveal the timeless beauty that is formulated with L-Glutathione, ascorbic acid, vitamin C.Gluta White Sparkle L-Glutathione Plus Supplement lightens spots and dullness reveal the timeless beauty that is formulated with L-Glutathione, ascorbic acid, vitamin C.Gluta White Sparkle L-Glutathione Plus Supplement lightens spots and dullness reveal the timeless beauty that is formulated with L-Glutathione, ascorbic acid, vitamin C.Gluta White Sparkle L-Glutathione Plus Supplement lightens spots and dullness reveal the timeless beauty that is formulated with L-Glutathione, ascorbic acid, vitamin C.Gluta White Sparkle L-Glutathione Plus Supplement lightens spots and dullness reveal the timeless beauty that is formulated with L-Glutathione, ascorbic acid, vitamin C.', N'/Content/Images/84b1b1b9-afb3-42c5-81c1-09076ce3dde8/photobg.png', N'/Content/Images/84b1b1b9-afb3-42c5-81c1-09076ce3dde8/photo1.png', N'/Content/Images/84b1b1b9-afb3-42c5-81c1-09076ce3dde8/photo2.png', N'/Content/Images/84b1b1b9-afb3-42c5-81c1-09076ce3dde8/photo3.jpg', N'/Content/Images/84b1b1b9-afb3-42c5-81c1-09076ce3dde8/photo4.jpg', N'/Content/Images/84b1b1b9-afb3-42c5-81c1-09076ce3dde8/photo5.png', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(18500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-10T08:54:21.0069210' AS DateTime2), N'Miracle Pure White Supplement', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'84b272d0-821d-46a8-b331-368cfdd1d843', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Hibiscuss 100grm ', N'Herbs&Spices', N'Hibiscuss 100grm  
', N'/Content/Images/84b272d0-821d-46a8-b331-368cfdd1d843/photobg.png', N'/Content/Images/84b272d0-821d-46a8-b331-368cfdd1d843/photo1.png', N'/Content/Images/84b272d0-821d-46a8-b331-368cfdd1d843/photo2.png', N'/Content/Images/84b272d0-821d-46a8-b331-368cfdd1d843/photo3.png', N'/Content/Images/84b272d0-821d-46a8-b331-368cfdd1d843/photo4.png', N'/Content/Images/84b272d0-821d-46a8-b331-368cfdd1d843/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T12:25:39.5008258' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'864e4e50-f11d-486a-bf27-45e5b8c32dd8', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'SKIN AQUA SUNSCREEN MOISTURE', N'Lotion', N' This sunscreen can be used on the face and body to provide protection against UVA/UVB for the transparent finish. It is in lightweight texture and gives you a refreshing feeling which resembles the application of toner for comfortable and re-hydrating results. It has SPF50 and PA++++ sun protection with Collagen, Supahiaruron Acid Hyaluronic Acid and Amino Acid for light moisturizing, smoothing and protecting benefits. It resists water and sweat, as well as prevents redness, sunburn, and sunspots.

For fragrance and hypoallergenic. For all skin types

How to use
Apply it after cleansing and toning as the last step of skincare regimen. Prior to re-application during the day, dry the skin and absorb excess sebum for better application. It can be used daily and under makeup as a makeup base.

Ingredients
Water, Alcohol, Ethylhexyl Methoxycinnamate (Octinoxate), Dipropylene Glycol, Sodium Hyaluronate, Sodium Acetylated Hyaluronate, Hydrolyzed Collagen, Arginine, Diethylamino Hydroxybenzoyl Hexyl Benzoate (Uvinul A Plus), Glycol Dimethacrylate Crosspolymer, Butylene Glycol, BisEthylhexyloxyphenol Methoxyphenyl Triazine (Tinosorb S), Ethylhexyl Triazone (Uvinul T 150), Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Triethanolamine, bis-PEG-18 Methyl Ether Dimethyl Silane, Polystyrene, Disodium EDTA, Xanthan Gum, Polyvinyl Alcohol, Methylparabe', N'/Content/Images/864e4e50-f11d-486a-bf27-45e5b8c32dd8/photobg.jpg', N'/Content/Images/864e4e50-f11d-486a-bf27-45e5b8c32dd8/photo1.jpg', N'/Content/Images/864e4e50-f11d-486a-bf27-45e5b8c32dd8/photo2.jpg', N'/Content/Images/864e4e50-f11d-486a-bf27-45e5b8c32dd8/photo3.jpg', N'/Content/Images/864e4e50-f11d-486a-bf27-45e5b8c32dd8/photo4.jpg', N'/Content/Images/864e4e50-f11d-486a-bf27-45e5b8c32dd8/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(9000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-09T14:18:58.8484942' AS DateTime2), N'Aqua', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'86bf8fea-57ed-4eed-aeee-212b15f55eeb', N'4600be22-6eef-4827-bdd9-551268615f47', N'Turkey ', N'Birds', N' Turkey ', N'/Content/Images/86bf8fea-57ed-4eed-aeee-212b15f55eeb/photobg.jpg', N'/Content/Images/86bf8fea-57ed-4eed-aeee-212b15f55eeb/photo1.jpg', N'/Content/Images/86bf8fea-57ed-4eed-aeee-212b15f55eeb/photo2.jpg', N'/Content/Images/86bf8fea-57ed-4eed-aeee-212b15f55eeb/photo3.jpg', N'/Content/Images/86bf8fea-57ed-4eed-aeee-212b15f55eeb/photo4.jpg', N'/Content/Images/86bf8fea-57ed-4eed-aeee-212b15f55eeb/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(35000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-16T11:16:14.3789796' AS DateTime2), N'Birds', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'88123694-d062-4266-9a93-83a08729750f', N'156dfadb-828f-468a-9389-20f417e68d7f', N'Fresh Tomatoes', N'Food', N'<p>Fresh Tomatoes<br></p>', N'/Content/Images/88123694-d062-4266-9a93-83a08729750f/photobg.jpeg', N'/Content/Images/88123694-d062-4266-9a93-83a08729750f/photo1.jpeg', N'/Content/Images/88123694-d062-4266-9a93-83a08729750f/photo2.jpeg', N'/Content/Images/88123694-d062-4266-9a93-83a08729750f/photo3.jpeg', N'/Content/Images/88123694-d062-4266-9a93-83a08729750f/photo4.jpeg', N'/Content/Images/88123694-d062-4266-9a93-83a08729750f/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-04-23T16:50:04.2829349' AS DateTime2), N'Food', N'Sedache Ent.', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'8a79a900-9926-4eb2-9c62-b0baf4e4be5c', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Green tea 200grm  ', N'Herbs&Spices', N'Green tea 200grm  
', N'/Content/Images/8a79a900-9926-4eb2-9c62-b0baf4e4be5c/photobg.png', N'/Content/Images/8a79a900-9926-4eb2-9c62-b0baf4e4be5c/photo1.png', N'/Content/Images/8a79a900-9926-4eb2-9c62-b0baf4e4be5c/photo2.png', N'/Content/Images/8a79a900-9926-4eb2-9c62-b0baf4e4be5c/photo3.png', N'/Content/Images/8a79a900-9926-4eb2-9c62-b0baf4e4be5c/photo4.png', N'/Content/Images/8a79a900-9926-4eb2-9c62-b0baf4e4be5c/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T12:20:17.6568964' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'8b09f5fa-a334-4aec-95ef-493f6063d423', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Cerave Moisturizing Lotion ', N'Lotion', N' Feel the difference with CeraVe. Your fragrance free, non-irritating, non-comedogenic skincare range. Developed with dermatologists, CeraVe does more than just moisturise the skin. It’s secret? CeraVe contains three essential ceramides that help restore your skin’s natural barrier to lock in moisture for all day hydration.

The CeraVe range is specifically designed to moisturise sensitive skin that is dry to very dry, suitable for eczema prone skin. CeraVe contains key ingredients; ceramides 1, 3 and 6–II to help restore skin’s natural barrier, hyaluronic acid to help retain skin’s natural moisture and glycerin to hydrate and soothe dry and irritated skin

Help restore your skin''s protective barrier with CeraVe Moisturizing Cream, Face and Body Moisturizer for normal to dry skin. It''s made with a unique formula that contains three essential ceramides and hyaluronic acid to help retain your skin''s natural moisture. This 19-oz CeraVe moisturizing cream is non-irritating and provides 24 hours of hydration. It will not clog your pores and is non-greasy for easy application. Developed with dermatologists, this CeraVe moisturizer for normal to dry skin is also safe for sensitive skin. MVE technology: Ensures moisturizing ingredients are delivered to the skin slowly over time, lasting long after you apply it Hyaluronic Acid: Helps retain skin''s natural moisture Ceramides: Help restore and maintain its natural protective barrier. Accepted by the National Eczema Association. CeraVe moisturizer for dry skin is suitable for sensitive skin. Provides patented controlled release of ingredients to help repair and restore your skin''s natural protective barrier.

 ALL DAY HYDRATION ] Lightweight formula that provides 24-hour hydration and helps restore the protective skin barrier with three essential ceramides (1,3,6-II)
[ MOISTURE-RETAINING INGREDIENTS ] Formulated with hyaluronic acid to help retain skin''s natural moisture
[ PATENTED TECHNOLOGY ] Utilizes patented MVE controlled-release technology to help replenish ceramides and deliver long lasting moisturization
[ GENTLE ON SKIN ] Free of fragrance and oil, hypoallergenic, non-comedogenic and non-irritating
[ HYDRATES WITHOUT CLOGGING PORES ] Ideal for normal to dry ski', N'/Content/Images/8b09f5fa-a334-4aec-95ef-493f6063d423/photobg.jpg', N'/Content/Images/8b09f5fa-a334-4aec-95ef-493f6063d423/photo1.jpg', N'/Content/Images/8b09f5fa-a334-4aec-95ef-493f6063d423/photo2.jpg', N'/Content/Images/8b09f5fa-a334-4aec-95ef-493f6063d423/photo3.jpg', N'/Content/Images/8b09f5fa-a334-4aec-95ef-493f6063d423/photo4.jpg', N'/Content/Images/8b09f5fa-a334-4aec-95ef-493f6063d423/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(12500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-10T09:41:01.6639330' AS DateTime2), N'Cerave Moisturizing Lotion ', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'8b345518-7f16-404b-8a0a-5d5bdb30d009', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Shikakai 100grm ', N'Herbs&Spices', N'Shikakai 100grm  
', N'/Content/Images/8b345518-7f16-404b-8a0a-5d5bdb30d009/photobg.jpg', N'/Content/Images/8b345518-7f16-404b-8a0a-5d5bdb30d009/photo1.jpg', N'/Content/Images/8b345518-7f16-404b-8a0a-5d5bdb30d009/photo2.jpg', N'/Content/Images/8b345518-7f16-404b-8a0a-5d5bdb30d009/photo3.jpg', N'/Content/Images/8b345518-7f16-404b-8a0a-5d5bdb30d009/photo4.jpg', N'/Content/Images/8b345518-7f16-404b-8a0a-5d5bdb30d009/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:25:10.5566809' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'8e8de588-2075-4a46-93a0-fd1e17c4f510', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Pumpkin 200grm  ', N'Herbs&Spices', N'Pumpkin 200grm  ', N'/Content/Images/8e8de588-2075-4a46-93a0-fd1e17c4f510/photobg.png', N'/Content/Images/8e8de588-2075-4a46-93a0-fd1e17c4f510/photo1.png', N'/Content/Images/8e8de588-2075-4a46-93a0-fd1e17c4f510/photo2.png', N'/Content/Images/8e8de588-2075-4a46-93a0-fd1e17c4f510/photo3.png', N'/Content/Images/8e8de588-2075-4a46-93a0-fd1e17c4f510/photo4.png', N'/Content/Images/8e8de588-2075-4a46-93a0-fd1e17c4f510/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T11:50:38.6460763' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'8ecb377e-5f94-47b6-b259-18a2ea9c06b4', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Akpi seed 200grm  ', N'Herbs&Spices', N'Akpi seed 200grm 2000', N'/Content/Images/8ecb377e-5f94-47b6-b259-18a2ea9c06b4/photobg.jpg', N'/Content/Images/8ecb377e-5f94-47b6-b259-18a2ea9c06b4/photo1.jpg', N'/Content/Images/8ecb377e-5f94-47b6-b259-18a2ea9c06b4/photo2.jpg', N'/Content/Images/8ecb377e-5f94-47b6-b259-18a2ea9c06b4/photo3.jpg', N'/Content/Images/8ecb377e-5f94-47b6-b259-18a2ea9c06b4/photo4.jpg', N'/Content/Images/8ecb377e-5f94-47b6-b259-18a2ea9c06b4/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 60, CAST(N'2023-08-28T11:48:34.9092601' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'906e5150-eb2f-4ea7-9ebd-294e5c68ddc8', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Special suya pepper 500grm  ', N'Herbs&Spices', N'Special suya pepper 500grm 
', N'/Content/Images/906e5150-eb2f-4ea7-9ebd-294e5c68ddc8/photobg.jpg', N'/Content/Images/906e5150-eb2f-4ea7-9ebd-294e5c68ddc8/photo1.jpg', N'/Content/Images/906e5150-eb2f-4ea7-9ebd-294e5c68ddc8/photo2.jpg', N'/Content/Images/906e5150-eb2f-4ea7-9ebd-294e5c68ddc8/photo3.jpg', N'/Content/Images/906e5150-eb2f-4ea7-9ebd-294e5c68ddc8/photo4.jpg', N'/Content/Images/906e5150-eb2f-4ea7-9ebd-294e5c68ddc8/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:19:37.8581805' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'914f6993-a7c4-4264-a8e8-1b7346dabc43', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Menthol 100grm ', N'Herbs&Spices', N'Menthol 100grm  
', N'/Content/Images/914f6993-a7c4-4264-a8e8-1b7346dabc43/photobg.png', N'/Content/Images/914f6993-a7c4-4264-a8e8-1b7346dabc43/photo1.png', N'/Content/Images/914f6993-a7c4-4264-a8e8-1b7346dabc43/photo2.png', N'/Content/Images/914f6993-a7c4-4264-a8e8-1b7346dabc43/photo3.png', N'/Content/Images/914f6993-a7c4-4264-a8e8-1b7346dabc43/photo4.png', N'/Content/Images/914f6993-a7c4-4264-a8e8-1b7346dabc43/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:27:27.7083974' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'91aee02e-c8a7-4a75-bedf-787d60103bcf', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Golden penny oil ', N'Food', N'<p>Golden penny oil&nbsp;<br></p>', N'/Content/Images/91aee02e-c8a7-4a75-bedf-787d60103bcf/photobg.jpeg', N'/Content/Images/91aee02e-c8a7-4a75-bedf-787d60103bcf/photo1.jpeg', N'/Content/Images/91aee02e-c8a7-4a75-bedf-787d60103bcf/photo2.jpeg', N'/Content/Images/91aee02e-c8a7-4a75-bedf-787d60103bcf/photo3.jpeg', N'/Content/Images/91aee02e-c8a7-4a75-bedf-787d60103bcf/photo4.jpeg', N'/Content/Images/91aee02e-c8a7-4a75-bedf-787d60103bcf/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(6500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-04-23T17:02:36.2008227' AS DateTime2), N'Food', N'Food', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'964aa497-0de7-4b38-a3d0-e53abe288503', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'BALANCE ACTIVE FORMULA SERUM', N'BALANCE ACTIVE FORMULA SERUM', N' BALANCE ACTIVE FORMULA SERUM', N'/Content/Images/964aa497-0de7-4b38-a3d0-e53abe288503/photobg.png', N'/Content/Images/964aa497-0de7-4b38-a3d0-e53abe288503/photo1.jpg', N'/Content/Images/964aa497-0de7-4b38-a3d0-e53abe288503/photo2.jpg', N'/Content/Images/964aa497-0de7-4b38-a3d0-e53abe288503/photo3.jpg', N'/Content/Images/964aa497-0de7-4b38-a3d0-e53abe288503/photo4.jpg', N'/Content/Images/964aa497-0de7-4b38-a3d0-e53abe288503/photo5.png', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-10T09:05:16.3078732' AS DateTime2), N'BALANCE ACTIVE FORMULA SERUM', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'96e97e7e-ddc1-4011-9c1e-33d273c8a2f0', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Pineapple ', N'Fruit', N'Pineapple ', N'/Content/Images/96e97e7e-ddc1-4011-9c1e-33d273c8a2f0/photobg.png', N'/Content/Images/96e97e7e-ddc1-4011-9c1e-33d273c8a2f0/photo1.png', N'/Content/Images/96e97e7e-ddc1-4011-9c1e-33d273c8a2f0/photo2.png', N'/Content/Images/96e97e7e-ddc1-4011-9c1e-33d273c8a2f0/photo3.png', N'/Content/Images/96e97e7e-ddc1-4011-9c1e-33d273c8a2f0/photo4.png', N'/Content/Images/96e97e7e-ddc1-4011-9c1e-33d273c8a2f0/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1200.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T09:29:28.7364654' AS DateTime2), N'Fruit', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'98f61669-7262-443b-9817-2808026d6501', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Coriander 200grm ', N'Herbs&Spices', N'Coriander 200grm ', N'/Content/Images/98f61669-7262-443b-9817-2808026d6501/photobg.png', N'/Content/Images/98f61669-7262-443b-9817-2808026d6501/photo1.png', N'/Content/Images/98f61669-7262-443b-9817-2808026d6501/photo2.png', N'/Content/Images/98f61669-7262-443b-9817-2808026d6501/photo3.png', N'/Content/Images/98f61669-7262-443b-9817-2808026d6501/photo4.png', N'/Content/Images/98f61669-7262-443b-9817-2808026d6501/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T11:47:05.6353453' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'9b69285e-d993-4430-8bc8-edd950502de1', N'4600be22-6eef-4827-bdd9-551268615f47', N'rabbit', N'Food', N'rabbit', N'/Content/Images/9b69285e-d993-4430-8bc8-edd950502de1/photobg.jpg', N'/Content/Images/9b69285e-d993-4430-8bc8-edd950502de1/photo1.jpg', N'/Content/Images/9b69285e-d993-4430-8bc8-edd950502de1/photo2.jpg', N'/Content/Images/9b69285e-d993-4430-8bc8-edd950502de1/photo3.jpg', N'/Content/Images/9b69285e-d993-4430-8bc8-edd950502de1/photo4.jpg', N'/Content/Images/9b69285e-d993-4430-8bc8-edd950502de1/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-16T12:46:02.4374080' AS DateTime2), N'Food', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'9c24be20-0213-473f-8a1f-1b781e028918', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Aeroplane basmati rice ', N'Food', N'<p>Aeroplane basmati rice&nbsp;<br></p>', N'/Content/Images/9c24be20-0213-473f-8a1f-1b781e028918/photobg.jpeg', N'/Content/Images/9c24be20-0213-473f-8a1f-1b781e028918/photo1.jpeg', N'/Content/Images/9c24be20-0213-473f-8a1f-1b781e028918/photo2.jpeg', N'/Content/Images/9c24be20-0213-473f-8a1f-1b781e028918/photo3.jpeg', N'/Content/Images/9c24be20-0213-473f-8a1f-1b781e028918/photo4.jpeg', N'/Content/Images/9c24be20-0213-473f-8a1f-1b781e028918/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(14000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-04-23T17:03:13.3385770' AS DateTime2), N'Food', N'Food', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'9e1efe1a-bdb7-4638-86e3-8fda82b3ac7e', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Caraway 200grm ', N'Herbs&Spices', N'Caraway 200grm  
', N'/Content/Images/9e1efe1a-bdb7-4638-86e3-8fda82b3ac7e/photobg.png', N'/Content/Images/9e1efe1a-bdb7-4638-86e3-8fda82b3ac7e/photo1.png', N'/Content/Images/9e1efe1a-bdb7-4638-86e3-8fda82b3ac7e/photo2.png', N'/Content/Images/9e1efe1a-bdb7-4638-86e3-8fda82b3ac7e/photo3.png', N'/Content/Images/9e1efe1a-bdb7-4638-86e3-8fda82b3ac7e/photo4.png', N'/Content/Images/9e1efe1a-bdb7-4638-86e3-8fda82b3ac7e/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T12:21:27.8183681' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'9e8c6085-725a-48e8-bb18-93ca679de6d2', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Carrot  ', N'vegetable', N'Carrot ', N'/Content/Images/9e8c6085-725a-48e8-bb18-93ca679de6d2/photobg.png', N'/Content/Images/9e8c6085-725a-48e8-bb18-93ca679de6d2/photo1.png', N'/Content/Images/9e8c6085-725a-48e8-bb18-93ca679de6d2/photo2.png', N'/Content/Images/9e8c6085-725a-48e8-bb18-93ca679de6d2/photo3.png', N'/Content/Images/9e8c6085-725a-48e8-bb18-93ca679de6d2/photo4.png', N'/Content/Images/9e8c6085-725a-48e8-bb18-93ca679de6d2/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T09:32:27.7739512' AS DateTime2), N'vegetable', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'9fcc737d-0681-4d26-9ab7-48c4e4d8fa53', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Rosemary 200grm ', N'Herbs&Spices', N' Rosemery 200grm  
', N'/Content/Images/9fcc737d-0681-4d26-9ab7-48c4e4d8fa53/photobg.png', N'/Content/Images/9fcc737d-0681-4d26-9ab7-48c4e4d8fa53/photo1.png', N'/Content/Images/9fcc737d-0681-4d26-9ab7-48c4e4d8fa53/photo2.png', N'/Content/Images/9fcc737d-0681-4d26-9ab7-48c4e4d8fa53/photo3.png', N'/Content/Images/9fcc737d-0681-4d26-9ab7-48c4e4d8fa53/photo4.png', N'/Content/Images/9fcc737d-0681-4d26-9ab7-48c4e4d8fa53/photo5.png', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:29:12.0793742' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'9feae5b2-098a-499f-874b-f99e355b9929', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Hypo', N'Bleach', N'<p>1litre</p>', N'/Content/Images/9feae5b2-098a-499f-874b-f99e355b9929/photobg.jpg', N'/Content/Images/9feae5b2-098a-499f-874b-f99e355b9929/photo1.jpg', N'/Content/Images/9feae5b2-098a-499f-874b-f99e355b9929/photo2.jpg', N'/Content/Images/9feae5b2-098a-499f-874b-f99e355b9929/photo3.jpg', N'/Content/Images/9feae5b2-098a-499f-874b-f99e355b9929/photo4.jpg', N'/Content/Images/9feae5b2-098a-499f-874b-f99e355b9929/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1300.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-04-27T13:58:15.5556964' AS DateTime2), N'Bleach', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'a0668c82-3343-47d6-b00a-a8f1dac995d8', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'2sure Dishwash', N'Detergent ', N'1ltr', N'/Content/Images/a0668c82-3343-47d6-b00a-a8f1dac995d8/photobg.jpeg', N'/Content/Images/a0668c82-3343-47d6-b00a-a8f1dac995d8/photo1.jpeg', N'/Content/Images/a0668c82-3343-47d6-b00a-a8f1dac995d8/photo2.jpeg', N'/Content/Images/a0668c82-3343-47d6-b00a-a8f1dac995d8/photo3.jpeg', N'/Content/Images/a0668c82-3343-47d6-b00a-a8f1dac995d8/photo4.jpeg', N'/Content/Images/a0668c82-3343-47d6-b00a-a8f1dac995d8/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1100.00 AS Decimal(18, 2)), 0, NULL, 3, CAST(N'2023-04-29T14:55:47.0748487' AS DateTime2), N'Detergent', N'Egbochi Resources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'a1f3d823-4035-456a-84ab-9e6f9a9fbec6', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Macadamia 200grm  ', N'Herbs&Spices', N'Macadamia 200grm 6500', N'/Content/Images/a1f3d823-4035-456a-84ab-9e6f9a9fbec6/photobg.png', N'/Content/Images/a1f3d823-4035-456a-84ab-9e6f9a9fbec6/photo1.png', N'/Content/Images/a1f3d823-4035-456a-84ab-9e6f9a9fbec6/photo2.png', N'/Content/Images/a1f3d823-4035-456a-84ab-9e6f9a9fbec6/photo3.png', N'/Content/Images/a1f3d823-4035-456a-84ab-9e6f9a9fbec6/photo4.png', N'/Content/Images/a1f3d823-4035-456a-84ab-9e6f9a9fbec6/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(6500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T11:49:05.5048195' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'a379a725-bef0-45f5-8d8c-57c9df26d8b2', N'40c01a6a-5637-4801-8dc0-a823947f9e9c', N'Hitarget', N'Clothing ', N'6 yards Wrapper', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(8000.00 AS Decimal(18, 2)), 0, NULL, 7, CAST(N'2023-08-29T15:05:17.8094814' AS DateTime2), N'Clothing ', N'Rockia enterprise ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'a45bbda4-3c83-46d3-b37c-91457c95d433', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Blemish Care bath Soap ', N'Saop', N' Formulated with glutathione, Licorice and citrus extracts
Smoothes the skin
Brightens the skin
Moisturizes the skin
Fights anti aging signs', N'/Content/Images/a45bbda4-3c83-46d3-b37c-91457c95d433/photobg.jpg', N'/Content/Images/a45bbda4-3c83-46d3-b37c-91457c95d433/photo1.jpg', N'/Content/Images/a45bbda4-3c83-46d3-b37c-91457c95d433/photo2.jpg', N'/Content/Images/a45bbda4-3c83-46d3-b37c-91457c95d433/photo3.jpg', N'/Content/Images/a45bbda4-3c83-46d3-b37c-91457c95d433/photo4.jpg', N'/Content/Images/a45bbda4-3c83-46d3-b37c-91457c95d433/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-10T08:34:55.7829747' AS DateTime2), N'Blemish Care bath Soap ', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'a7e73e38-5efc-4c07-83ba-d116d2dfc34c', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Yam one set ', N'Food', N'Yam one set ', N'/Content/Images/a7e73e38-5efc-4c07-83ba-d116d2dfc34c/photobg.jpeg', N'/Content/Images/a7e73e38-5efc-4c07-83ba-d116d2dfc34c/photo1.jpeg', N'/Content/Images/a7e73e38-5efc-4c07-83ba-d116d2dfc34c/photo2.jpeg', N'/Content/Images/a7e73e38-5efc-4c07-83ba-d116d2dfc34c/photo3.jpeg', N'/Content/Images/a7e73e38-5efc-4c07-83ba-d116d2dfc34c/photo4.jpeg', N'/Content/Images/a7e73e38-5efc-4c07-83ba-d116d2dfc34c/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(8500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T10:39:32.8435660' AS DateTime2), N'Food', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'aa8f0c08-3683-4747-aae3-0eb551af5aed', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Wesson oil 4 Ltrs', N'Food', N'<p>Wesson oil 4 Ltrs<br></p>', N'/Content/Images/aa8f0c08-3683-4747-aae3-0eb551af5aed/photobg.jpeg', N'/Content/Images/aa8f0c08-3683-4747-aae3-0eb551af5aed/photo1.jpeg', N'/Content/Images/aa8f0c08-3683-4747-aae3-0eb551af5aed/photo2.jpeg', N'/Content/Images/aa8f0c08-3683-4747-aae3-0eb551af5aed/photo3.jpeg', N'/Content/Images/aa8f0c08-3683-4747-aae3-0eb551af5aed/photo4.jpeg', N'/Content/Images/aa8f0c08-3683-4747-aae3-0eb551af5aed/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(14000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-04-23T17:00:29.2635052' AS DateTime2), N'Food', N'', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'adb1bd8d-6982-4c92-96a6-5724b1f539d3', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Chicken  ', N'Food', N'Chicken 4,000', N'/Content/Images/adb1bd8d-6982-4c92-96a6-5724b1f539d3/photobg.png', N'/Content/Images/adb1bd8d-6982-4c92-96a6-5724b1f539d3/photo1.png', N'/Content/Images/adb1bd8d-6982-4c92-96a6-5724b1f539d3/photo2.png', N'/Content/Images/adb1bd8d-6982-4c92-96a6-5724b1f539d3/photo3.png', N'/Content/Images/adb1bd8d-6982-4c92-96a6-5724b1f539d3/photo4.png', N'/Content/Images/adb1bd8d-6982-4c92-96a6-5724b1f539d3/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T09:36:08.4171424' AS DateTime2), N'Food', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'adb40078-9239-4d1e-8c0e-924d064530f5', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Indomie Noodles', N'food', N'pack', N'/Content/Images/adb40078-9239-4d1e-8c0e-924d064530f5/photobg.jfif', N'/Content/Images/adb40078-9239-4d1e-8c0e-924d064530f5/photo1.jfif', N'/Content/Images/adb40078-9239-4d1e-8c0e-924d064530f5/photo2.webp', N'/Content/Images/adb40078-9239-4d1e-8c0e-924d064530f5/photo3.jpg', N'/Content/Images/adb40078-9239-4d1e-8c0e-924d064530f5/photo4.jfif', N'/Content/Images/adb40078-9239-4d1e-8c0e-924d064530f5/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(200.00 AS Decimal(18, 2)), 0, NULL, 500, CAST(N'2023-05-16T14:01:27.9927046' AS DateTime2), N'Food', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'b191b755-1225-4eda-a20b-0e919a32341e', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Maca powder 200grm ', N'Herbs&Spices', N'Maca powder 200grm ', N'/Content/Images/b191b755-1225-4eda-a20b-0e919a32341e/photobg.png', N'/Content/Images/b191b755-1225-4eda-a20b-0e919a32341e/photo1.png', N'/Content/Images/b191b755-1225-4eda-a20b-0e919a32341e/photo2.png', N'/Content/Images/b191b755-1225-4eda-a20b-0e919a32341e/photo3.png', N'/Content/Images/b191b755-1225-4eda-a20b-0e919a32341e/photo4.png', N'/Content/Images/b191b755-1225-4eda-a20b-0e919a32341e/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(8000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T11:52:18.0011416' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'b2e3bc38-0bd3-41e9-a2e6-65805be0a286', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Almond 200grm ', N'Herbs&Spices', N'Almond 200grm  ', N'/Content/Images/b2e3bc38-0bd3-41e9-a2e6-65805be0a286/photobg.png', N'/Content/Images/b2e3bc38-0bd3-41e9-a2e6-65805be0a286/photo1.png', N'/Content/Images/b2e3bc38-0bd3-41e9-a2e6-65805be0a286/photo2.png', N'/Content/Images/b2e3bc38-0bd3-41e9-a2e6-65805be0a286/photo3.png', N'/Content/Images/b2e3bc38-0bd3-41e9-a2e6-65805be0a286/photo4.png', N'/Content/Images/b2e3bc38-0bd3-41e9-a2e6-65805be0a286/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T11:49:54.3150656' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'b40ffe59-91dc-4fd8-8a24-3f6149eb4b73', N'156dfadb-828f-468a-9389-20f417e68d7f', N'Dry Fish', N'Food', N'<p>Dry Fish</p>', N'/Content/Images/b40ffe59-91dc-4fd8-8a24-3f6149eb4b73/photobg.jpeg', N'/Content/Images/b40ffe59-91dc-4fd8-8a24-3f6149eb4b73/photo1.jpeg', N'/Content/Images/b40ffe59-91dc-4fd8-8a24-3f6149eb4b73/photo2.jpeg', N'/Content/Images/b40ffe59-91dc-4fd8-8a24-3f6149eb4b73/photo3.jpeg', N'/Content/Images/b40ffe59-91dc-4fd8-8a24-3f6149eb4b73/photo4.jpeg', N'/Content/Images/b40ffe59-91dc-4fd8-8a24-3f6149eb4b73/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 12, CAST(N'2023-04-23T16:48:06.8058006' AS DateTime2), N'Food', N'Sedache Ent.', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'b43b7112-dfb5-41ae-ae5f-f53bc1fcb79c', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'simple facial wash', N'Lotion', N' The simple kind to skin refreshing facial wash is fortified with pro vitamin B5, vitamin E and amino acids for smoother, healthy-looking skin. This refreshing face wash is 100% soap free, and it removes dirt and impurities without stripping the skin off its natural moisture.
This face wash is also perfect for sensitive skin as it leaves no adverse reaction.

It is hypoallergenic, dermatologically tested and formulated without any harsh chemicals that can upset the skin.
How to use: In your hands, pour a small amount and work into a rich lather and wash gently on the face.

The simple kind to skin refreshing facial wash is fortified with pro vitamin B5, vitamin E and amino acids for smoother, healthy-looking skin. This refreshing face wash is 100% soap free, and it removes dirt and impurities without stripping the skin off its natural moisture.

How to use: In your hands, pour a small amount and work into a rich lather and wash gently on the face.', N'/Content/Images/b43b7112-dfb5-41ae-ae5f-f53bc1fcb79c/photobg.jpg', N'/Content/Images/b43b7112-dfb5-41ae-ae5f-f53bc1fcb79c/photo1.jpg', N'/Content/Images/b43b7112-dfb5-41ae-ae5f-f53bc1fcb79c/photo2.jpg', N'/Content/Images/b43b7112-dfb5-41ae-ae5f-f53bc1fcb79c/photo3.jpg', N'/Content/Images/b43b7112-dfb5-41ae-ae5f-f53bc1fcb79c/photo4.jpg', N'/Content/Images/b43b7112-dfb5-41ae-ae5f-f53bc1fcb79c/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-10T10:05:44.1664579' AS DateTime2), N'simple facial wash', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'b98bd66e-27bd-4491-8299-9c6c2d071d5f', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Jik', N'Detergent ', N'1ltr', N'/Content/Images/b98bd66e-27bd-4491-8299-9c6c2d071d5f/photobg.webp', N'/Content/Images/b98bd66e-27bd-4491-8299-9c6c2d071d5f/photo1.webp', N'/Content/Images/b98bd66e-27bd-4491-8299-9c6c2d071d5f/photo2.webp', N'/Content/Images/b98bd66e-27bd-4491-8299-9c6c2d071d5f/photo3.webp', N'/Content/Images/b98bd66e-27bd-4491-8299-9c6c2d071d5f/photo4.webp', N'/Content/Images/b98bd66e-27bd-4491-8299-9c6c2d071d5f/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1400.00 AS Decimal(18, 2)), 1, NULL, 12, CAST(N'2023-04-29T14:50:21.4118057' AS DateTime2), N'Detergent', N'Egbochi Resources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'b9c420af-9373-4d52-b343-dda18691a2fc', N'4600be22-6eef-4827-bdd9-551268615f47', N' Turkey Local One', N'Birds', N' Turkey Local One', N'/Content/Images/b9c420af-9373-4d52-b343-dda18691a2fc/photobg.jpg', N'/Content/Images/b9c420af-9373-4d52-b343-dda18691a2fc/photo1.jpg', N'/Content/Images/b9c420af-9373-4d52-b343-dda18691a2fc/photo2.jpg', N'/Content/Images/b9c420af-9373-4d52-b343-dda18691a2fc/photo3.jpg', N'/Content/Images/b9c420af-9373-4d52-b343-dda18691a2fc/photo4.jpg', N'/Content/Images/b9c420af-9373-4d52-b343-dda18691a2fc/photo5.jpg', NULL, N'Others', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(25000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-16T11:16:52.1394756' AS DateTime2), N'Birds', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'ba420dd5-5c69-4e5e-948b-8ec90f51aa39', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Ashwagander root 200grm  ', N'Herbs&Spices', N'Ashwagander root 200grm  ', N'/Content/Images/ba420dd5-5c69-4e5e-948b-8ec90f51aa39/photobg.jpg', N'/Content/Images/ba420dd5-5c69-4e5e-948b-8ec90f51aa39/photo1.webp', N'/Content/Images/ba420dd5-5c69-4e5e-948b-8ec90f51aa39/photo2.jpg', N'/Content/Images/ba420dd5-5c69-4e5e-948b-8ec90f51aa39/photo3.webp', N'/Content/Images/ba420dd5-5c69-4e5e-948b-8ec90f51aa39/photo4.webp', N'/Content/Images/ba420dd5-5c69-4e5e-948b-8ec90f51aa39/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(6500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T11:51:43.2997628' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'bf892bb6-b4d7-445e-8f54-2f12acda8aff', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Black seed 200grm  ', N'Herbs&Spices', N'Black seed 200grm ', N'/Content/Images/bf892bb6-b4d7-445e-8f54-2f12acda8aff/photobg.png', N'/Content/Images/bf892bb6-b4d7-445e-8f54-2f12acda8aff/photo1.png', N'/Content/Images/bf892bb6-b4d7-445e-8f54-2f12acda8aff/photo2.png', N'/Content/Images/bf892bb6-b4d7-445e-8f54-2f12acda8aff/photo3.png', N'/Content/Images/bf892bb6-b4d7-445e-8f54-2f12acda8aff/photo4.png', N'/Content/Images/bf892bb6-b4d7-445e-8f54-2f12acda8aff/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 60, CAST(N'2023-08-28T11:44:33.9354934' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c29bc86b-ddc7-44ef-bdff-8d0653ba9710', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Kings oil 4 Ltrs', N'Food', N'<p>Kings oil 4 Ltrs<br></p>', N'/Content/Images/c29bc86b-ddc7-44ef-bdff-8d0653ba9710/photobg.jpeg', N'/Content/Images/c29bc86b-ddc7-44ef-bdff-8d0653ba9710/photo1.jpeg', N'/Content/Images/c29bc86b-ddc7-44ef-bdff-8d0653ba9710/photo2.jpeg', N'/Content/Images/c29bc86b-ddc7-44ef-bdff-8d0653ba9710/photo3.jpeg', N'/Content/Images/c29bc86b-ddc7-44ef-bdff-8d0653ba9710/photo4.jpeg', N'/Content/Images/c29bc86b-ddc7-44ef-bdff-8d0653ba9710/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7600.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-04-23T17:01:45.5776864' AS DateTime2), N'Food', N'', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c2a3e083-ef2d-40d1-adb4-1eacf62732b9', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Apple 5 PC''s', N'Fruit', N'Apple 5 PC''s', N'/Content/Images/c2a3e083-ef2d-40d1-adb4-1eacf62732b9/photobg.png', N'/Content/Images/c2a3e083-ef2d-40d1-adb4-1eacf62732b9/photo1.png', N'/Content/Images/c2a3e083-ef2d-40d1-adb4-1eacf62732b9/photo2.png', N'/Content/Images/c2a3e083-ef2d-40d1-adb4-1eacf62732b9/photo3.png', N'/Content/Images/c2a3e083-ef2d-40d1-adb4-1eacf62732b9/photo4.png', N'/Content/Images/c2a3e083-ef2d-40d1-adb4-1eacf62732b9/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T09:27:02.2165748' AS DateTime2), N'Fruit', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c331b2d2-bf7f-48c4-abee-59a4bc20a2a8', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Cabbage  ', N'vegetable', N'Cabbage ', N'/Content/Images/c331b2d2-bf7f-48c4-abee-59a4bc20a2a8/photobg.png', N'/Content/Images/c331b2d2-bf7f-48c4-abee-59a4bc20a2a8/photo1.png', N'/Content/Images/c331b2d2-bf7f-48c4-abee-59a4bc20a2a8/photo2.png', N'/Content/Images/c331b2d2-bf7f-48c4-abee-59a4bc20a2a8/photo3.png', N'/Content/Images/c331b2d2-bf7f-48c4-abee-59a4bc20a2a8/photo4.png', N'/Content/Images/c331b2d2-bf7f-48c4-abee-59a4bc20a2a8/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T09:31:33.1536151' AS DateTime2), N'vegetable', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c375918b-7047-43b7-b1d5-9e05ee414a79', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Cosrx Advanced Snail ', N'Lotion', N' Natural glow from healthy skin!

What it is: Light- weight essence which absorbed into skin fast and gives skin natural glow from inside.



WHY IT''S SPECIAL:



Snail Mucin

96.3% of Snail Secretion Filtrate helps protect the skin from moisture loss while improving skin elasticity. Snail mucin helps repair and soothes red, sensitive skin after breakouts by replenishing moisture.

Lightweight Essence

Lightweight, yet moisturizing texture gives you long-lasting hydration without feeling heavy on the skin.

Cruelty-Free

COSRX is a cruelty-free brand and we do not test on animals. Our snail mucin products are also 100% cruelty-free which caused no harm to animals throughout the making process.This essence has a whopping 96% snail secretion filtrate for super intense repair and hydration. Think of this like vitamins for your face since it''s loaded with replenishing and revitalizing nutrients to help prevent and repair damage, giving you ultimate elasticity and hydration.

 

Snail mucin has the ability to repair everything from dry patches, to acne breakouts while helping zap hyperpigmentation, so with loyal use your skin will glow to look its healthiest.

 

Great for all skin types.

 This product has a pH level of 6.5. Fragrance-free.', N'/Content/Images/c375918b-7047-43b7-b1d5-9e05ee414a79/photobg.jpg', N'/Content/Images/c375918b-7047-43b7-b1d5-9e05ee414a79/photo1.jpg', N'/Content/Images/c375918b-7047-43b7-b1d5-9e05ee414a79/photo2.jpg', N'/Content/Images/c375918b-7047-43b7-b1d5-9e05ee414a79/photo3.jpg', N'/Content/Images/c375918b-7047-43b7-b1d5-9e05ee414a79/photo4.jpg', N'/Content/Images/c375918b-7047-43b7-b1d5-9e05ee414a79/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-10T08:06:21.5282486' AS DateTime2), N'Cosrx Advanced Snail ', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c388cab8-6fd0-4aaa-882a-efab53b256ae', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Sulphur 100grm ', N'Herbs&Spices', N'Sulphur 100grm  
', N'/Content/Images/c388cab8-6fd0-4aaa-882a-efab53b256ae/photobg.webp', N'/Content/Images/c388cab8-6fd0-4aaa-882a-efab53b256ae/photo1.webp', N'/Content/Images/c388cab8-6fd0-4aaa-882a-efab53b256ae/photo2.webp', N'/Content/Images/c388cab8-6fd0-4aaa-882a-efab53b256ae/photo3.webp', N'/Content/Images/c388cab8-6fd0-4aaa-882a-efab53b256ae/photo4.webp', N'/Content/Images/c388cab8-6fd0-4aaa-882a-efab53b256ae/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T12:27:05.5580515' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c5146f44-f804-4ab9-9094-790b47d7c8b7', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Skin by zaron lotion', N'Lotion', N' he Vitamin C Brightening/Moisturizing Body Lotion is a new addition to the fast-growing skincare line by Zaron Cosmetics unveiled last year here.

The new product according to the brand “has a rich formula designed to give your skin the boost and protection it needs, with a mixture of brightening, hydrating, cell-stimulating, repairing, and skin-protecting ingredients, that are guaranteed to leave your skin supple and younger-looking“.

The brightening/moisturising lotion is specially formulated for hydration which is one thing beauty by Zaron is largely about. It brightens the skin, plumps the skin by boosting the production of collagen which slows the ageing process. It’s also formulated to even out skin tone and fade hyperpigmentation.

Its actives include Niacinamide to intensely moisturize, hydrate and build cells in the skin. It improves the appearance and texture of the skin. It also contains Mother of Pearl Extracts to stimulate skin cells to produce collagen, Kojic Acid, Collagen Alpha Arbutin and Vitamin C.

We can tell this lotion is loaded with good stuff!', N'/Content/Images/c5146f44-f804-4ab9-9094-790b47d7c8b7/photobg.jpeg', N'/Content/Images/c5146f44-f804-4ab9-9094-790b47d7c8b7/photo1.jpeg', N'/Content/Images/c5146f44-f804-4ab9-9094-790b47d7c8b7/photo2.jpeg', N'/Content/Images/c5146f44-f804-4ab9-9094-790b47d7c8b7/photo3.jpeg', N'/Content/Images/c5146f44-f804-4ab9-9094-790b47d7c8b7/photo4.jpeg', N'/Content/Images/c5146f44-f804-4ab9-9094-790b47d7c8b7/photo5.jpeg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(14000.00 AS Decimal(18, 2)), 0, NULL, 60, CAST(N'2023-08-10T08:15:31.7805471' AS DateTime2), N'lotion', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c5242b3e-0b21-4a4b-a6eb-48c8a2c7dd41', N'4600be22-6eef-4827-bdd9-551268615f47', N' Broiler Chicken', N'Food', N' Broiler Chicken', N'/Content/Images/c5242b3e-0b21-4a4b-a6eb-48c8a2c7dd41/photobg.png', N'/Content/Images/c5242b3e-0b21-4a4b-a6eb-48c8a2c7dd41/photo1.jpeg', N'/Content/Images/c5242b3e-0b21-4a4b-a6eb-48c8a2c7dd41/photo2.jpeg', N'/Content/Images/c5242b3e-0b21-4a4b-a6eb-48c8a2c7dd41/photo3.jpeg', N'/Content/Images/c5242b3e-0b21-4a4b-a6eb-48c8a2c7dd41/photo4.jpeg', N'/Content/Images/c5242b3e-0b21-4a4b-a6eb-48c8a2c7dd41/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-16T10:49:32.9212414' AS DateTime2), N'Food', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c59ee832-5fb6-43a8-a4b6-303c89ae62a9', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Molfix  Baby Pampers', N'Baby', N'<p>Molfix&nbsp; Baby Pampers<br></p>', N'/Content/Images/c59ee832-5fb6-43a8-a4b6-303c89ae62a9/photobg.jpeg', N'/Content/Images/c59ee832-5fb6-43a8-a4b6-303c89ae62a9/photo1.jpeg', N'/Content/Images/c59ee832-5fb6-43a8-a4b6-303c89ae62a9/photo2.jpeg', N'/Content/Images/c59ee832-5fb6-43a8-a4b6-303c89ae62a9/photo3.jpeg', N'/Content/Images/c59ee832-5fb6-43a8-a4b6-303c89ae62a9/photo4.jpeg', N'/Content/Images/c59ee832-5fb6-43a8-a4b6-303c89ae62a9/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-04-23T17:04:46.3546785' AS DateTime2), N'Baby', N'', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c6e81431-e4e2-424f-b8a6-392e1d140f09', N'156dfadb-828f-468a-9389-20f417e68d7f', N'Fresh Peper', N'Food', N'<p>Fresh Peper<br></p>', N'/Content/Images/c6e81431-e4e2-424f-b8a6-392e1d140f09/photobg.jpeg', N'/Content/Images/c6e81431-e4e2-424f-b8a6-392e1d140f09/photo1.jpeg', N'/Content/Images/c6e81431-e4e2-424f-b8a6-392e1d140f09/photo2.jpeg', N'/Content/Images/c6e81431-e4e2-424f-b8a6-392e1d140f09/photo3.jpeg', N'/Content/Images/c6e81431-e4e2-424f-b8a6-392e1d140f09/photo4.jpeg', N'/Content/Images/c6e81431-e4e2-424f-b8a6-392e1d140f09/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 0, CAST(N'2023-04-23T16:49:19.9639292' AS DateTime2), N'Food', N'Sedache Ent.', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'c95a79bf-f6e3-44ff-b396-1e6c93f58322', N'4600be22-6eef-4827-bdd9-551268615f47', N'Guinea Fowl', N'Birds', N'Guinea Fowl (Zabe)', N'/Content/Images/c95a79bf-f6e3-44ff-b396-1e6c93f58322/photobg.webp', N'/Content/Images/c95a79bf-f6e3-44ff-b396-1e6c93f58322/photo1.jpg', N'/Content/Images/c95a79bf-f6e3-44ff-b396-1e6c93f58322/photo2.webp', N'/Content/Images/c95a79bf-f6e3-44ff-b396-1e6c93f58322/photo3.jpg', N'/Content/Images/c95a79bf-f6e3-44ff-b396-1e6c93f58322/photo4.jpg', N'/Content/Images/c95a79bf-f6e3-44ff-b396-1e6c93f58322/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3500.00 AS Decimal(18, 2)), 0, NULL, 60, CAST(N'2023-08-16T11:15:31.0157100' AS DateTime2), N'Birds', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'cbc04601-ae6f-4dfd-ac0d-f0077339352b', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Kojie San Soap', N'Soap', N' About this item
Reveal Your Most Radiant Self: Experience real kojic acid soap brightening that combats the look of hyperpigmentation, sun and age spots, and other blemishes with the authentic Kojie San Soap. Renew your skin with our professional strength kojic soap.

Flawless Skin from Head to Toe: The Kojie San Kojic Acid Soap is a face soap for women and men, as well as a moisturizing bar soap for body. Use our hyperpigmentation soap as an underarm soap, dark skin remover for inner thighs, face bar soap, or black neck remover.

Lather in Quality Ingredients: We know how sensitive sun damaged skin can be, so our brightening bar soap for face and body has glycerin, tea tree, coconut oil, and other natural ingredients to cleanse your skin gently.

Say Goodbye to Dark Spots: This fresh orange soap-scented skin brightener soap has Zero Pigment Light Technology to target areas that need extra care to give you more even, smoother glowing skin. Truly the perfect Japanese soap bar.

Home of the Original Kojic Acid Soap: Kojie San’s formulation blends effective ingredients to nourish your skin and target blemishes to reveal your inner beauty! Check your product’s authenticity with our Hidden Tag technology', N'/Content/Images/cbc04601-ae6f-4dfd-ac0d-f0077339352b/photobg.jpg', N'/Content/Images/cbc04601-ae6f-4dfd-ac0d-f0077339352b/photo1.jpg', N'/Content/Images/cbc04601-ae6f-4dfd-ac0d-f0077339352b/photo2.jpg', N'/Content/Images/cbc04601-ae6f-4dfd-ac0d-f0077339352b/photo3.jpg', N'/Content/Images/cbc04601-ae6f-4dfd-ac0d-f0077339352b/photo4.jpg', N'/Content/Images/cbc04601-ae6f-4dfd-ac0d-f0077339352b/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-10T08:28:57.1328048' AS DateTime2), N'Koji', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'cd495ab4-0198-4709-950b-bf0225c4eb66', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Golden Morn', N'Food', N'<p>Cereal</p>', N'/Content/Images/cd495ab4-0198-4709-950b-bf0225c4eb66/photobg.webp', N'/Content/Images/cd495ab4-0198-4709-950b-bf0225c4eb66/photo1.webp', N'/Content/Images/cd495ab4-0198-4709-950b-bf0225c4eb66/photo2.webp', N'/Content/Images/cd495ab4-0198-4709-950b-bf0225c4eb66/photo3.webp', N'/Content/Images/cd495ab4-0198-4709-950b-bf0225c4eb66/photo4.webp', N'/Content/Images/cd495ab4-0198-4709-950b-bf0225c4eb66/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 150, CAST(N'2023-04-27T13:46:08.9919230' AS DateTime2), N'Cereal', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'ce153889-2b7a-4bff-aadc-c1a18fb95f5b', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Ginseng root 200grm  ', N'Herbs&Spices', N'Ginseng root 200grm 
', N'/Content/Images/ce153889-2b7a-4bff-aadc-c1a18fb95f5b/photobg.png', N'/Content/Images/ce153889-2b7a-4bff-aadc-c1a18fb95f5b/photo1.png', N'/Content/Images/ce153889-2b7a-4bff-aadc-c1a18fb95f5b/photo2.png', N'/Content/Images/ce153889-2b7a-4bff-aadc-c1a18fb95f5b/photo3.png', N'/Content/Images/ce153889-2b7a-4bff-aadc-c1a18fb95f5b/photo4.png', N'/Content/Images/ce153889-2b7a-4bff-aadc-c1a18fb95f5b/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(25000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T11:52:56.3298996' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'ce6f1722-c639-4bff-b4fc-cfeb4cb6a78f', N'4600be22-6eef-4827-bdd9-551268615f47', N'Pepper', N'Food', N'Pepper 
Our range is from 
N200
N3000
UPWARD', N'/Content/Images/ce6f1722-c639-4bff-b4fc-cfeb4cb6a78f/photobg.jpeg', N'/Content/Images/ce6f1722-c639-4bff-b4fc-cfeb4cb6a78f/photo1.jpeg', N'/Content/Images/ce6f1722-c639-4bff-b4fc-cfeb4cb6a78f/photo2.jpeg', N'/Content/Images/ce6f1722-c639-4bff-b4fc-cfeb4cb6a78f/photo3.jpeg', N'/Content/Images/ce6f1722-c639-4bff-b4fc-cfeb4cb6a78f/photo4.jpeg', N'/Content/Images/ce6f1722-c639-4bff-b4fc-cfeb4cb6a78f/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(200.00 AS Decimal(18, 2)), 0, NULL, 100, CAST(N'2023-08-16T09:53:48.9644449' AS DateTime2), N'Baba Aisha', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'd17b45ca-ed78-4689-b589-372fd2f27e68', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Maharani Basmati Rice', N'food', N' 5kg', N'/Content/Images/d17b45ca-ed78-4689-b589-372fd2f27e68/photobg.jfif', N'/Content/Images/d17b45ca-ed78-4689-b589-372fd2f27e68/photo1.jfif', N'/Content/Images/d17b45ca-ed78-4689-b589-372fd2f27e68/photo2.jfif', N'/Content/Images/d17b45ca-ed78-4689-b589-372fd2f27e68/photo3.jfif', N'/Content/Images/d17b45ca-ed78-4689-b589-372fd2f27e68/photo4.jfif', N'/Content/Images/d17b45ca-ed78-4689-b589-372fd2f27e68/photo5.jfif', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(16000.00 AS Decimal(18, 2)), 0, NULL, 10, CAST(N'2023-05-02T09:08:43.2110138' AS DateTime2), N'Food', N'EgbochiResources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'd1a1e08a-9043-4784-a3ac-27c8ea16228d', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Black tea 200grm  ', N'Herbs&Spices', N'Black tea 200grm 
', N'/Content/Images/d1a1e08a-9043-4784-a3ac-27c8ea16228d/photobg.png', N'/Content/Images/d1a1e08a-9043-4784-a3ac-27c8ea16228d/photo1.png', N'/Content/Images/d1a1e08a-9043-4784-a3ac-27c8ea16228d/photo2.png', N'/Content/Images/d1a1e08a-9043-4784-a3ac-27c8ea16228d/photo3.png', N'/Content/Images/d1a1e08a-9043-4784-a3ac-27c8ea16228d/photo4.png', N'/Content/Images/d1a1e08a-9043-4784-a3ac-27c8ea16228d/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:20:52.2643933' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'd2cf4d31-e893-4754-b606-a9a5405d3273', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Mustard 200grm', N'Herbs&Spices', N'Mustard 200grm', N'/Content/Images/d2cf4d31-e893-4754-b606-a9a5405d3273/photobg.png', N'/Content/Images/d2cf4d31-e893-4754-b606-a9a5405d3273/photo1.png', N'/Content/Images/d2cf4d31-e893-4754-b606-a9a5405d3273/photo2.png', N'/Content/Images/d2cf4d31-e893-4754-b606-a9a5405d3273/photo3.png', N'/Content/Images/d2cf4d31-e893-4754-b606-a9a5405d3273/photo4.png', N'/Content/Images/d2cf4d31-e893-4754-b606-a9a5405d3273/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T11:44:03.9079570' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'd3d95f68-41da-46ad-95cd-ddaa11dbd2f5', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Rose flower 200grm  ', N'Herbs&Spices', N'Rose flower 200grm 
', N'/Content/Images/d3d95f68-41da-46ad-95cd-ddaa11dbd2f5/photobg.png', N'/Content/Images/d3d95f68-41da-46ad-95cd-ddaa11dbd2f5/photo1.png', N'/Content/Images/d3d95f68-41da-46ad-95cd-ddaa11dbd2f5/photo2.png', N'/Content/Images/d3d95f68-41da-46ad-95cd-ddaa11dbd2f5/photo3.png', N'/Content/Images/d3d95f68-41da-46ad-95cd-ddaa11dbd2f5/photo4.png', N'/Content/Images/d3d95f68-41da-46ad-95cd-ddaa11dbd2f5/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T11:53:57.9956005' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'd43b8f8d-990f-4f43-8cca-8cfd970d7e79', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Saffron 250grm  ', N'Herbs&Spices', N'Saffron 250grm 
', N'/Content/Images/d43b8f8d-990f-4f43-8cca-8cfd970d7e79/photobg.png', N'/Content/Images/d43b8f8d-990f-4f43-8cca-8cfd970d7e79/photo1.png', N'/Content/Images/d43b8f8d-990f-4f43-8cca-8cfd970d7e79/photo2.png', N'/Content/Images/d43b8f8d-990f-4f43-8cca-8cfd970d7e79/photo3.png', N'/Content/Images/d43b8f8d-990f-4f43-8cca-8cfd970d7e79/photo4.png', N'/Content/Images/d43b8f8d-990f-4f43-8cca-8cfd970d7e79/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 60, CAST(N'2023-08-28T12:26:14.4464045' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'd4ed26af-8a46-4149-ba93-18da26392114', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'ARISH POTATOES 1basket', N'Food', N'ARISH POTATOES 1basket', N'/Content/Images/d4ed26af-8a46-4149-ba93-18da26392114/photobg.png', N'/Content/Images/d4ed26af-8a46-4149-ba93-18da26392114/photo1.png', N'/Content/Images/d4ed26af-8a46-4149-ba93-18da26392114/photo2.png', N'/Content/Images/d4ed26af-8a46-4149-ba93-18da26392114/photo3.png', N'/Content/Images/d4ed26af-8a46-4149-ba93-18da26392114/photo4.png', N'/Content/Images/d4ed26af-8a46-4149-ba93-18da26392114/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3500.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T08:32:17.9053966' AS DateTime2), N'Food', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'd64d5d02-3358-4b62-bb80-d0fe7a96ee15', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Fennel 200grm', N'Herbs&Spices', N'Fennel 200grm  ', N'/Content/Images/d64d5d02-3358-4b62-bb80-d0fe7a96ee15/photobg.png', N'/Content/Images/d64d5d02-3358-4b62-bb80-d0fe7a96ee15/photo1.png', N'/Content/Images/d64d5d02-3358-4b62-bb80-d0fe7a96ee15/photo2.png', N'/Content/Images/d64d5d02-3358-4b62-bb80-d0fe7a96ee15/photo3.png', N'/Content/Images/d64d5d02-3358-4b62-bb80-d0fe7a96ee15/photo4.png', N'/Content/Images/d64d5d02-3358-4b62-bb80-d0fe7a96ee15/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T11:46:30.7135788' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'dcb15ded-da01-4906-9b52-97f61478cf9d', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Ginger 200grm  ', N'Herbs&Spices', N'Ginger 200grm 
', N'/Content/Images/dcb15ded-da01-4906-9b52-97f61478cf9d/photobg.png', N'/Content/Images/dcb15ded-da01-4906-9b52-97f61478cf9d/photo1.png', N'/Content/Images/dcb15ded-da01-4906-9b52-97f61478cf9d/photo2.png', N'/Content/Images/dcb15ded-da01-4906-9b52-97f61478cf9d/photo3.png', N'/Content/Images/dcb15ded-da01-4906-9b52-97f61478cf9d/photo4.png', N'/Content/Images/dcb15ded-da01-4906-9b52-97f61478cf9d/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T12:28:36.8370765' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'df18c303-8c5c-4c90-8454-8fb31e720137', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Clove 200grm ', N'Herbs&Spices', N'Clove 200grm  
', N'/Content/Images/df18c303-8c5c-4c90-8454-8fb31e720137/photobg.png', N'/Content/Images/df18c303-8c5c-4c90-8454-8fb31e720137/photo1.png', N'/Content/Images/df18c303-8c5c-4c90-8454-8fb31e720137/photo2.png', N'/Content/Images/df18c303-8c5c-4c90-8454-8fb31e720137/photo3.png', N'/Content/Images/df18c303-8c5c-4c90-8454-8fb31e720137/photo4.png', N'/Content/Images/df18c303-8c5c-4c90-8454-8fb31e720137/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:23:12.4076991' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'e4b8eb1b-1f7f-43ca-9c73-018f23fe0404', N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Viva Gold', N'Detergent ', N'900g', N'/Content/Images/e4b8eb1b-1f7f-43ca-9c73-018f23fe0404/photobg.jpg', N'/Content/Images/e4b8eb1b-1f7f-43ca-9c73-018f23fe0404/photo1.jpg', N'/Content/Images/e4b8eb1b-1f7f-43ca-9c73-018f23fe0404/photo2.jpg', N'/Content/Images/e4b8eb1b-1f7f-43ca-9c73-018f23fe0404/photo3.jpg', N'/Content/Images/e4b8eb1b-1f7f-43ca-9c73-018f23fe0404/photo4.jpg', N'/Content/Images/e4b8eb1b-1f7f-43ca-9c73-018f23fe0404/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1400.00 AS Decimal(18, 2)), 1, NULL, 12, CAST(N'2023-04-29T14:52:56.2101051' AS DateTime2), N'Detergent', N'Egbochi Resources ', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'e58b6a7e-1c64-4f65-b013-4a7b5d2879e2', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Cumin 200grm  ', N'Herbs&Spices', N'Cumin 200grm ', N'/Content/Images/e58b6a7e-1c64-4f65-b013-4a7b5d2879e2/photobg.png', N'/Content/Images/e58b6a7e-1c64-4f65-b013-4a7b5d2879e2/photo1.png', N'/Content/Images/e58b6a7e-1c64-4f65-b013-4a7b5d2879e2/photo2.png', N'/Content/Images/e58b6a7e-1c64-4f65-b013-4a7b5d2879e2/photo3.png', N'/Content/Images/e58b6a7e-1c64-4f65-b013-4a7b5d2879e2/photo4.png', N'/Content/Images/e58b6a7e-1c64-4f65-b013-4a7b5d2879e2/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 50, CAST(N'2023-08-28T11:45:31.1433323' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'e9e86e08-a2ad-4b20-a9a0-fffadde88504', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'koji vit ultra tube', N'tube', N' Brand	kojivit
Item Form	Cream
Active Ingredients	allantoin,glycolic acid,isopropyl,kojic acid,licorice,methylparaben,niacinamide,polyacrylamide,propylene glycol,propylparaben,sodium hydroxideallantoin,glycolic acid,isopropyl,kojic acid,licorice,methylparaben,niacinamide,polyacrylamide,propylene glycol,propylparaben,sodium hydroxide
Net Quantity	15.0 gram', N'/Content/Images/e9e86e08-a2ad-4b20-a9a0-fffadde88504/photobg.jpg', N'/Content/Images/e9e86e08-a2ad-4b20-a9a0-fffadde88504/photo1.jpg', N'/Content/Images/e9e86e08-a2ad-4b20-a9a0-fffadde88504/photo2.jpg', N'/Content/Images/e9e86e08-a2ad-4b20-a9a0-fffadde88504/photo3.jpg', N'/Content/Images/e9e86e08-a2ad-4b20-a9a0-fffadde88504/photo4.jpg', N'/Content/Images/e9e86e08-a2ad-4b20-a9a0-fffadde88504/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(8500.00 AS Decimal(18, 2)), 0, NULL, 0, CAST(N'2023-08-10T09:56:49.1933972' AS DateTime2), N'koji vit ultra tube', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'f22a3c7a-c7e6-43cf-af66-50affc2e7d8b', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Barley seed 200grm ', N'Herbs&Spices', N'Barley seed 200grm  
', N'/Content/Images/f22a3c7a-c7e6-43cf-af66-50affc2e7d8b/photobg.png', N'/Content/Images/f22a3c7a-c7e6-43cf-af66-50affc2e7d8b/photo1.png', N'/Content/Images/f22a3c7a-c7e6-43cf-af66-50affc2e7d8b/photo2.png', N'/Content/Images/f22a3c7a-c7e6-43cf-af66-50affc2e7d8b/photo3.png', N'/Content/Images/f22a3c7a-c7e6-43cf-af66-50affc2e7d8b/photo4.png', N'/Content/Images/f22a3c7a-c7e6-43cf-af66-50affc2e7d8b/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:31:01.9555011' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'f2ce910b-767c-42f3-a8d2-208853eb8017', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Spirulina 200grm ', N'Herbs&Spices', N'Spirulina 200grm  
', N'/Content/Images/f2ce910b-767c-42f3-a8d2-208853eb8017/photobg.png', N'/Content/Images/f2ce910b-767c-42f3-a8d2-208853eb8017/photo1.png', N'/Content/Images/f2ce910b-767c-42f3-a8d2-208853eb8017/photo2.png', N'/Content/Images/f2ce910b-767c-42f3-a8d2-208853eb8017/photo3.png', N'/Content/Images/f2ce910b-767c-42f3-a8d2-208853eb8017/photo4.png', N'/Content/Images/f2ce910b-767c-42f3-a8d2-208853eb8017/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T12:30:11.5957406' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'f335285b-76e5-439c-8183-2ebcf20a2c70', N'4600be22-6eef-4827-bdd9-551268615f47', N'Pigeon', N'Birds', N'Pigeon', N'/Content/Images/f335285b-76e5-439c-8183-2ebcf20a2c70/photobg.jpg', N'/Content/Images/f335285b-76e5-439c-8183-2ebcf20a2c70/photo1.jpg', N'/Content/Images/f335285b-76e5-439c-8183-2ebcf20a2c70/photo2.jpg', N'/Content/Images/f335285b-76e5-439c-8183-2ebcf20a2c70/photo3.jpg', N'/Content/Images/f335285b-76e5-439c-8183-2ebcf20a2c70/photo4.jpg', N'/Content/Images/f335285b-76e5-439c-8183-2ebcf20a2c70/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-16T12:46:30.1820933' AS DateTime2), N'Birds', N'Baba Aisha', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'f4fcb6ef-1bea-4dbe-b570-a4de20365255', N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Calandular 200grm ', N'Herbs&Spices', N'Calandular 200grm  
', N'/Content/Images/f4fcb6ef-1bea-4dbe-b570-a4de20365255/photobg.png', N'/Content/Images/f4fcb6ef-1bea-4dbe-b570-a4de20365255/photo1.png', N'/Content/Images/f4fcb6ef-1bea-4dbe-b570-a4de20365255/photo2.png', N'/Content/Images/f4fcb6ef-1bea-4dbe-b570-a4de20365255/photo3.png', N'/Content/Images/f4fcb6ef-1bea-4dbe-b570-a4de20365255/photo4.png', N'/Content/Images/f4fcb6ef-1bea-4dbe-b570-a4de20365255/photo5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(6000.00 AS Decimal(18, 2)), 0, NULL, 40, CAST(N'2023-08-28T12:24:18.8258223' AS DateTime2), N'Herbs&Spices', N'Herbs&Spices Wuse', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'f649c52f-f390-449c-85b8-03381980aefe', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'QEI Lotion', N'Lotion', N' QEI Paris Active Harmonie Reparateur Lait Corporel Lotion with Carrot Oil -Is a Multi-vitamin toning Body Lotion. The Harmonie Lotion helps remove impurities, tones your skin and soothes it.', N'/Content/Images/f649c52f-f390-449c-85b8-03381980aefe/photobg.jpg', N'/Content/Images/f649c52f-f390-449c-85b8-03381980aefe/photo1.jpg', N'/Content/Images/f649c52f-f390-449c-85b8-03381980aefe/photo2.jpg', N'/Content/Images/f649c52f-f390-449c-85b8-03381980aefe/photo3.jpg', N'/Content/Images/f649c52f-f390-449c-85b8-03381980aefe/photo4.jpg', N'/Content/Images/f649c52f-f390-449c-85b8-03381980aefe/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(13000.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-09T13:51:20.8019582' AS DateTime2), N'QEI Lotion ', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'f8dccb47-d904-40bc-bbbd-38993992c684', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'onions 1 basket', N'vegetable', N'onions 1 basket', N'/Content/Images/f8dccb47-d904-40bc-bbbd-38993992c684/photobg.jpg', N'/Content/Images/f8dccb47-d904-40bc-bbbd-38993992c684/photo1.jpg', N'/Content/Images/f8dccb47-d904-40bc-bbbd-38993992c684/photo2.jpg', N'/Content/Images/f8dccb47-d904-40bc-bbbd-38993992c684/photo3.jpg', N'/Content/Images/f8dccb47-d904-40bc-bbbd-38993992c684/photo4.jpg', N'/Content/Images/f8dccb47-d904-40bc-bbbd-38993992c684/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T10:29:05.1102581' AS DateTime2), N'vegetable', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'fa5a8135-d83b-4455-bf91-624e14ac4711', N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'tretinoin gel usp', N'tube', N' A-Ret Tretinoin 0.025% Gel is a form of vitamin A that is used to treat acne which appears as spots or pimples on your face, chest, or back. It also helps to smooth rough facial skin and to reduce fine wrinkles on the skin.
A-Ret Tretinoin 0.025% Gel reduces excessive oil production of the skin. Ideally, a pinpoint application at nighttime is recommended for the duration prescribed by your doctor. 

The amount you need and for how long you need to take it will depend on what you are being treated for. You should normally wash and dry the affected area before applying a thin layer of this medicine. Follow your doctor’s instructions. You should not apply it to damaged or broken skin and avoid contact with your mouth, eyes, and nose.

Retino-A cream is used for the treatment of Acne, Wrinkles, Dry, Rough patches and tiny bumps on skin, white blood cell cancer and other conditions. The complete list of uses and indications for Retin-A Cream are Acne, Wrinkles, Dry, rough patches and tiny bumps on skin. Do you have wrinkles, folds, skin discoloration, aging skin etc on your skin or any other body part. Use this product to clear it off. It wipes off all forms of above listed skin issues and leaves the skin beautiful. No matter how many years it have lasted, it cures it. Very safe. Suitable for all skin types. Skin folds and discoloration can be painful  and irritating and get dangerous when left untreated. It''s one of the best doctors'' prescription for the treatment of the listed.

Retin-A cream is a medicine that is used for the treatment of Acne, Wrinkles, Dry, Rough patches and tiny bumps on skin, white blood cell cancer and other conditions. The complete list of uses and indications for Retin-A Cream are Acne, Wrinkles, Dry, rough patches and tiny bumps on skin. Do you have wrinkles, folds, skin discoloration, aging skin etc on your skin or any other body part. Use this product to clear it off. It wipes off all forms of above listed skin issues and leaves the skin beautiful. No matter how many years it have lasted, it cures it. Very safe. Suitable for all skin types. Skin folds and discoloration can be painful  and irritating and get dangerous when left untreated. It''s one of the best doctors'' prescription for the treatment of the listed.', N'/Content/Images/fa5a8135-d83b-4455-bf91-624e14ac4711/photobg.jpg', N'/Content/Images/fa5a8135-d83b-4455-bf91-624e14ac4711/photo1.jpg', N'/Content/Images/fa5a8135-d83b-4455-bf91-624e14ac4711/photo2.jpg', N'/Content/Images/fa5a8135-d83b-4455-bf91-624e14ac4711/photo3.jpg', N'/Content/Images/fa5a8135-d83b-4455-bf91-624e14ac4711/photo4.jpg', N'/Content/Images/fa5a8135-d83b-4455-bf91-624e14ac4711/photo5.jpg', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(5500.00 AS Decimal(18, 2)), 0, NULL, 0, CAST(N'2023-08-10T10:01:42.4031225' AS DateTime2), N'tretinoin gel usp', N'Trinigold', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'fbd24529-7a2e-49f9-a39b-fe8c54817756', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Ram meat 1 kl  ', N'Meat', N'Ram meat 1 kl 3500', N'/Content/Images/fbd24529-7a2e-49f9-a39b-fe8c54817756/photobg.jpg', N'/Content/Images/fbd24529-7a2e-49f9-a39b-fe8c54817756/photo1.jpg', N'/Content/Images/fbd24529-7a2e-49f9-a39b-fe8c54817756/photo2.jpg', N'/Content/Images/fbd24529-7a2e-49f9-a39b-fe8c54817756/photo3.jpg', N'/Content/Images/fbd24529-7a2e-49f9-a39b-fe8c54817756/photo4.jpg', N'/Content/Images/fbd24529-7a2e-49f9-a39b-fe8c54817756/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3500.00 AS Decimal(18, 2)), 0, NULL, 30, CAST(N'2023-08-28T09:37:37.7939762' AS DateTime2), N'Meat', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'fdb33229-b73a-4ab7-880c-9af0ed0a43c2', N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'Pawpaw big', N'Fruit', N' Powpow big', N'/Content/Images/fdb33229-b73a-4ab7-880c-9af0ed0a43c2/photobg.png', N'/Content/Images/fdb33229-b73a-4ab7-880c-9af0ed0a43c2/photo1.png', N'/Content/Images/fdb33229-b73a-4ab7-880c-9af0ed0a43c2/photo2.png', N'/Content/Images/fdb33229-b73a-4ab7-880c-9af0ed0a43c2/photo3.png', N'/Content/Images/fdb33229-b73a-4ab7-880c-9af0ed0a43c2/photo4.png', N'/Content/Images/fdb33229-b73a-4ab7-880c-9af0ed0a43c2/photo5.png', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2023-08-28T09:28:39.4323044' AS DateTime2), N'Fruit', N'DanMadam Nigeria', NULL)
GO
INSERT [dbo].[Sale] ([id], [userid], [email], [productid], [productname], [description], [amountpaid], [qty], [unitprice], [totalcost], [discountperc], [discountamount], [insertdate], [orderid]) VALUES (N'1310201F', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'hawyimran@gmail.com', N'9feae5b2-098a-499f-874b-f99e355b9929', N'Hypo', N'<p>1litre</p>', CAST(31900.00 AS Decimal(18, 2)), 1, CAST(1300.00 AS Decimal(18, 2)), CAST(1300.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-26T15:29:07.563' AS DateTime), NULL)
GO
INSERT [dbo].[Sale] ([id], [userid], [email], [productid], [productname], [description], [amountpaid], [qty], [unitprice], [totalcost], [discountperc], [discountamount], [insertdate], [orderid]) VALUES (N'2F6C0024', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'hawyimran@gmail.com', N'4fa6aa0f-5a89-4891-91d4-e964230c46a4', N'Rose Plus Tissue', N'<p>tissue paper</p>', CAST(31900.00 AS Decimal(18, 2)), 2, CAST(800.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-26T15:29:07.613' AS DateTime), NULL)
GO
INSERT [dbo].[Sale] ([id], [userid], [email], [productid], [productname], [description], [amountpaid], [qty], [unitprice], [totalcost], [discountperc], [discountamount], [insertdate], [orderid]) VALUES (N'54B1A7A1', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'hawyimran@gmail.com', N'a0668c82-3343-47d6-b00a-a8f1dac995d8', N'2sure Dishwash', N'1ltr', CAST(31900.00 AS Decimal(18, 2)), 2, CAST(1100.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-26T15:29:07.617' AS DateTime), NULL)
GO
INSERT [dbo].[Sale] ([id], [userid], [email], [productid], [productname], [description], [amountpaid], [qty], [unitprice], [totalcost], [discountperc], [discountamount], [insertdate], [orderid]) VALUES (N'CA19EE66', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'hawyimran@gmail.com', N'9c24be20-0213-473f-8a1f-1b781e028918', N'Aeroplane basmati rice ', N'<p>Aeroplane basmati rice&nbsp;<br></p>', CAST(31900.00 AS Decimal(18, 2)), 1, CAST(14000.00 AS Decimal(18, 2)), CAST(14000.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-26T15:29:07.620' AS DateTime), NULL)
GO
INSERT [dbo].[Sale] ([id], [userid], [email], [productid], [productname], [description], [amountpaid], [qty], [unitprice], [totalcost], [discountperc], [discountamount], [insertdate], [orderid]) VALUES (N'E10BB257', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'hawyimran@gmail.com', N'e4b8eb1b-1f7f-43ca-9c73-018f23fe0404', N'Viva Gold', N'900g', CAST(31900.00 AS Decimal(18, 2)), 2, CAST(1400.00 AS Decimal(18, 2)), CAST(2800.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-26T15:29:07.617' AS DateTime), NULL)
GO
INSERT [dbo].[Sale] ([id], [userid], [email], [productid], [productname], [description], [amountpaid], [qty], [unitprice], [totalcost], [discountperc], [discountamount], [insertdate], [orderid]) VALUES (N'F8D48729', N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'hawyimran@gmail.com', N'2e42602d-448b-49eb-8820-2453f2aff3ba', N'Power Oil', N'2.6ltr', CAST(31900.00 AS Decimal(18, 2)), 2, CAST(5000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-06-26T15:29:07.617' AS DateTime), NULL)
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Abia State', N'1')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Delta State', N'10')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Ebonyi State', N'11')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Edo State', N'12')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Ekiti State', N'13')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Enugu State', N'14')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Federal Capital Territory', N'15')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Gombe State', N'16')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Imo State', N'17')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Jigawa State', N'18')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Kaduna State', N'19')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Adamawa State', N'2')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Kano State', N'20')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Katsina State', N'21')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Kebbi State', N'22')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Kogi State', N'23')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Kwara State', N'24')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Lagos State', N'25')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Nasarawa State', N'26')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Niger State', N'27')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Ogun State', N'28')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Ondo State', N'29')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Akwa Ibom State', N'3')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Osun State', N'30')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Oyo State', N'31')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Plateau State', N'32')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Rivers State', N'33')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Sokoto State', N'34')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Taraba State', N'35')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Yobe State', N'36')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Zamfara', N'37')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Anambra State', N'4')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Bauchi State', N'5')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Bayelsa State', N'6')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Benue State', N'7')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Borno State', N'8')
GO
INSERT [dbo].[State] ([states], [stateid]) VALUES (N'Cross River State', N'9')
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'03cc1726-35e9-4121-b4a1-38b1117f6dd4', N'Joshua', N'Joida', N'07064519172', N'USER', NULL, 0, N'joshuajoida@gmail.com', 0, NULL, N'GtSJHjlvG7KiyhgfCWufOmMDBZQfJhZRnpojKzJXxtk=', NULL, NULL, 0, 0, NULL, NULL, 0, N'joshuajoida@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2023-02-10T08:52:25.493' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'063a1042-ee02-43f2-a6b2-2d5bf3dabfa0', N'Herbs&Spices', N'Wuse', N'08162854465', N'VENDOR', NULL, 0, N'muftahuidris7070@gmail.com', 0, NULL, N'E3UzcxjDRyBq9Jp64g8M9crntYtEXpkW59PAni/E1oI=', NULL, NULL, 0, 0, NULL, NULL, 0, N'muftahuidris7070@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-23T13:17:35.253' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(20000.00 AS Decimal(18, 2)), CAST(N'2023-08-23T13:25:19.243' AS DateTime), CAST(N'2024-08-22T13:25:19.243' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'08c006e8-3853-4a04-b15d-3de7c36727bd', N'Calab', N'Fiday', N'09079218851', N'USER', NULL, 0, N'calebfridaymaikomo@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'calebfridaymaikomo@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-11T23:00:14.787' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'0cdd2bca-f204-4f92-a6cf-4a2ab2b57f01', N'', N'', N'', N'USER', NULL, 0, N'dammmydamsel123@gmail.com', 0, NULL, N'PEl38ngbVfOuEZNfG9zPS4UO79aq9iysZ/b/BoOBKoE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'dammmydamsel123@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-07-09T14:28:46.297' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'0d50bb9a-b565-4bf9-80d5-c9aec3506032', N'Khaleed', N'Abubakar', N'08038841357', N'USER', NULL, 0, N'khaleed.abubakar@yahoo.com', 0, NULL, N'aRiC/M4o6tDhqy/ylS8p5Zee4Ra1GEl3fmDWV4eoRpQ=', NULL, NULL, 0, 0, NULL, NULL, 0, N'khaleed.abubakar@yahoo.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-09-03T13:15:14.053' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.123' AS DateTime), CAST(N'2022-09-04T17:00:54.123' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'0d7e5933-e4c8-498d-8579-eb7d6b115471', N'Yusuf Hamma', N'Abubakar', N'+2348032556481', N'USER', NULL, 0, N'Yusufh1.abubakar@gmail.com', 0, NULL, N'w8drx0vDnfaRRJGDn26QuN1RCViC45isQsgHoRr7mrnLvgtFgAn4Hj61AMfqC/Jv', NULL, NULL, 0, 0, NULL, NULL, 0, N'Yusufh1.abubakar@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2023-01-17T10:13:04.323' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'1105f245-875d-4b0d-9641-6a354f707d5f', N'Egbochi', N'Resources', N'08073991686', N'VENDOR', NULL, 0, N'chyiwuoha@gmail.com', 0, NULL, N'dC4cFAuq40i36wEycr53cg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'chyiwuoha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-04-23T16:54:56.563' AS DateTime), N'Egbochi Resources & Concept
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-04-23T00:00:00.000' AS DateTime), CAST(N'2024-04-23T00:00:00.000' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'156dfadb-828f-468a-9389-20f417e68d7f', N'Sunday', N'edache', N'07064629763', N'VENDOR', NULL, 1, N'sedache7@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'sedache7@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-04-16T15:23:10.500' AS DateTime), N'Sundache nig enterprise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-04-23T00:00:00.000' AS DateTime), CAST(N'2024-04-23T00:00:00.000' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'17a08bad-e2be-4c4c-88a1-1ffe6b29261c', N'Hyedima', N'Waha', N'08127243528', N'USER', NULL, 0, N'hh@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hh@gmail.com', N'NIGERIA', N'Bayelsa State', NULL, NULL, NULL, CAST(N'2022-08-24T15:37:21.787' AS DateTime), N'Mangal Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'Hauwa ', N'Imran', N'09032307443', N'USER', NULL, 0, N'hawyimran@gmail.com', 0, NULL, N'H5fTzzwENcmmPa2F4GyiEKdq6p4HfyDG+F0ZkPyKDRY=', NULL, NULL, 0, 0, NULL, NULL, 0, N'hawyimran@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T12:25:03.203' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(31900.00 AS Decimal(18, 2)), CAST(N'2023-06-26T15:29:07.533' AS DateTime), CAST(N'2023-06-26T15:29:07.533' AS DateTime), N'PAID', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'1e368a64-f946-45c2-9583-3b6fe84feb0d', N'', N'', N'', N'USER', NULL, 0, N'ajumaproperties0077@gmail.com', 0, NULL, N'lhDG5OR1/pIGK/bDpy6HR1Mm2Gyh+CUOUPbrtwvRS/s=', NULL, NULL, 0, 0, NULL, NULL, 0, N'ajumaproperties0077@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-07-17T18:02:27.180' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'1fe62c45-c13e-4c38-95c3-353693695942', N'K2 maikaji', N'Wuse', N'091334642266', N'VENDOR', NULL, 0, N'nuhukatsina@gmail.com', 0, NULL, N'mi1SkHeRaDYz6kzhMKl0GsqN00vr3BIQA2fFdm5L4lo=', NULL, NULL, 0, 0, NULL, NULL, 0, N'nuhukatsina@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-23T13:06:18.253' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-23T13:13:04.580' AS DateTime), CAST(N'2024-08-22T13:13:04.580' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'20ee9d0b-cca4-4680-b6b6-e60b874cb011', N'Muhammad', N'Salisu', N'08033105785', N'USER', NULL, 0, N'msalisu406@gmail.com', 0, NULL, N'zBxnSpx08cIQpxx33soC/DpI7DOWhDFFrODaKRnrCbs=', NULL, NULL, 0, 0, NULL, NULL, 0, N'msalisu406@gmail.com', N'NIGERIA', N'Sokoto State', NULL, NULL, NULL, CAST(N'2023-01-31T09:55:35.443' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'22362f56-8e8a-453b-9929-9ffa06960bd8', N'Mahamud', N'Sanusi', N'08137243528', N'USER', NULL, 0, N'asdcnigeria@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'asdcnigeria@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:08.760' AS DateTime), N'Test Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'27811d28-3bf6-493d-b088-fa4aa0d1d1e2', N'Hyedima', N'Waha', N'+2348137243523', N'VENDOR', NULL, 0, N'shyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'shyedimawaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-25T23:06:09.877' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.457' AS DateTime), CAST(N'2022-09-04T17:00:54.457' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'27d53347-cbf3-4a7b-a3c1-980dd697cac1', N'Sunny World', N'Interior', N'09032923584', N'VENDOR', NULL, 0, N'es1277183@gmail.com', 0, NULL, N'4RZSQzYpeWwvpEK24glA/A==', NULL, NULL, 0, 0, NULL, NULL, 0, N'es1277183@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-19T15:50:08.443' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-21T12:29:45.140' AS DateTime), CAST(N'2024-08-20T12:29:45.140' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'288c98d9-2099-4420-b7cf-331b340cd8b0', N'Jeremiah', N'Gambo', N'09136711223', N'USER', NULL, 0, N'gambojeremiah17@gmail.com', 0, NULL, N'JYuseK/Lw022MAa06cZAomHM/i2RNp+k7dZcOe5TdXE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'gambojeremiah17@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2023-01-18T14:03:14.390' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'37a7289c-58d8-466e-97d2-6594611b5727', N'Dolleki', N'Shinga', N'090990999897', N'SERVICE PROVIDER', NULL, 0, N'dhyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'dhyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:41:12.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'37b99b89-fe10-4eb9-b9f3-dd523a7b8c91', N'', N'', N'', N'USER', NULL, 0, N'djbadspin@gmail.com', 0, NULL, N'CcMoEgHHPM5T5wWu3z6IDaU4jVYuvQZN9vCkNd0DKGQ=', NULL, NULL, 0, 0, NULL, NULL, 0, N'djbadspin@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-08-23T14:58:56.503' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'3934c10b-0304-413c-b801-26f021a0c4eb', N'Hyedima', N'Waha', N'08137243528sdasda', N'USER', NULL, 0, N'hyedimawasdasdaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawasdasdaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-23T13:39:18.273' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'3dc6bf37-fefa-4e1b-bf06-4c29bfcd8d7d', N'', N'', N'', N'USER', NULL, 0, N'khaleed.abubakar11@gmail.com', 0, NULL, N'aRiC/M4o6tDhqy/ylS8p5dVoxr5uZkstYUqQvilX41Q=', NULL, NULL, 0, 0, NULL, NULL, 0, N'khaleed.abubakar11@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-05-16T14:56:28.067' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'40c01a6a-5637-4801-8dc0-a823947f9e9c', N'Basil', N'NwIke', N'07053236383', N'VENDOR', NULL, 0, N'basilnwike@gmail.com', 0, NULL, N'OfQE8f0JUpTrwxX5KH7ZuqBYfr4xzC23PP1qcvc9SGw=', NULL, NULL, 0, 0, NULL, NULL, 0, N'basilnwike@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-29T14:55:15.333' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(20000.00 AS Decimal(18, 2)), CAST(N'2023-08-29T15:02:13.233' AS DateTime), CAST(N'2024-08-28T15:02:13.233' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'41960a0e-802c-46e0-a377-2e34349ff38b', N'', N'', N'', N'USER', NULL, 0, N'juliebabe889@gmail.com', 0, NULL, N'eHvx0slkKwMou4epdCTObfhDQOkq7L85Xk2M5r/YJrI=', NULL, NULL, 0, 0, NULL, NULL, 0, N'juliebabe889@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-07-20T17:11:26.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'41d10463-47f0-49b7-ae27-027d6ca9b2fc', N'DanMadam ', N'Nigeria ', N'08135344718', N'VENDOR', NULL, 0, N'daudanafiu22@gmail.com', 0, NULL, N'YXY7GOLGp4kDmw8D/oM5yQ==', NULL, NULL, 0, 0, NULL, NULL, 0, N'daudanafiu22@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-23T12:26:47.320' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-23T12:38:19.217' AS DateTime), CAST(N'2024-08-22T12:38:19.217' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'426f5965-21f5-47c9-b546-27b15322fbc8', N'Ponsak ', N'Christopher ', N'08060100241', N'USER', NULL, 0, N'christopherponsak1@gmail.com', 0, NULL, N'rNh4uBBtk1lb6AUEvBqfjNOEKqVdk/iFt94TnSHYcvs=', NULL, NULL, 0, 0, NULL, NULL, 0, N'christopherponsak1@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2023-01-07T19:01:17.837' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'4600be22-6eef-4827-bdd9-551268615f47', N'Baba', N'Aisha ', N'09078999909', N'VENDOR', NULL, 0, N'markusapc@gmail.com', 0, NULL, N'GYu0a9HBckMGMKXVI+ki0A==', NULL, NULL, 0, 0, NULL, NULL, 0, N'markusapc@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-15T13:13:20.950' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-15T13:18:55.443' AS DateTime), CAST(N'2024-08-14T13:18:55.443' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'4fc96983-02be-4dd9-b2ce-761a970dbffb', N'OLUWASEGUN', N'OGUNDELE', N'08104635124', N'USER', NULL, 0, N'ogundeleoluwasegun2016@gmail.com', 0, NULL, N'QzgVU1YWbEVdm6IyhqZjFj1p5dIbeuSz6crMptftHP0=', NULL, NULL, 0, 0, NULL, NULL, 0, N'ogundeleoluwasegun2016@gmail.com', N'NIGERIA', N'Ogun State', NULL, NULL, NULL, CAST(N'2022-11-22T14:14:17.537' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'Hyedima', N'Waha', N'+2348137243528', N'SERVERICE PROVIDER', NULL, 0, N'sssssshyedimawahdaa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'ddddddhyedimawaha@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-09T08:56:15.447' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7085.00 AS Decimal(18, 2)), CAST(N'2022-09-20T22:58:31.893' AS DateTime), CAST(N'2023-09-20T22:58:31.893' AS DateTime), N'PAID', NULL, NULL, N'/Content/Images/profile/579f2dc6-a9d0-4631-8651-3fddd8d5f069.JPG')
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'5a8493ce-e448-435e-95df-d48d4f11bf3b', N'', N'', N'', N'USER', NULL, 0, N'otinoyimayaki@gmail.com', 0, NULL, N'bg+Clm9SzViWSH2LFv14G7DlW9SvThIYGrK6Ky/Zci8=', NULL, NULL, 0, 0, NULL, NULL, 0, N'otinoyimayaki@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-03-29T10:45:29.760' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'60570a42-8d53-4d47-8f62-5048f7fccec3', N'', N'', N'', N'USER', NULL, 0, N'imogierhoda@yahoo.com', 0, NULL, N'8Mo3ZkdL6qrtjh/NuaQfWBuVY2HK9WmsdIujUhYkNj0=', NULL, NULL, 0, 0, NULL, NULL, 0, N'imogierhoda@yahoo.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-05-01T15:07:28.140' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'66073fa6-6047-4887-b9bc-2d44bd89b7a1', N'', N'', N'', N'USER', NULL, 0, N'Admin@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'Admin@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-05-04T15:07:34.900' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'6e4997b4-7596-4c31-8985-803b5f2ffa5f', N'Emmanuel ', N'Elisha', N'07060629476', N'VENDOR', NULL, 0, N'emmanuelelisha12@gmail.com', 0, NULL, N'4RT/d/TYYRWMEx5cdAARzg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'emmanuelelisha12@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-26T11:15:53.463' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-08-26T13:21:34.043' AS DateTime), CAST(N'2023-08-26T13:21:34.043' AS DateTime), N'PAID', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'76a4ab51-3c0b-4d52-9c37-775740fab5ff', N'', N'', N'', N'USER', NULL, 0, N'a.lb.e.r.th.a.ns.hin4.9@gmail.com', 0, NULL, N'OlJLMncm15QHsGcKkyloWlMSKDY+Qedvv+ae4OdknEY=', NULL, NULL, 0, 0, NULL, NULL, 0, N'a.lb.e.r.th.a.ns.hin4.9@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-04-09T03:54:49.890' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'7f4cc10d-978f-471b-8ae5-cecfe2a3f2b5', N'Abdulrahhamans Store', N'Wuse', N'09050778771', N'VENDOR', NULL, 0, N'abdulrahmanabdull1987@gmail.com', 0, NULL, N'k62asqyicoezy/q3SihdoA==', NULL, NULL, 0, 0, NULL, NULL, 0, N'abdulrahmanabdull1987@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-23T12:42:05.997' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-08-23T12:49:17.003' AS DateTime), CAST(N'2024-08-22T12:49:17.003' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'7fa371b4-d17a-40f2-98b7-463c49e96dbf', N'Trinigold', N'Cosmetics', N'08080803295', N'VENDOR', NULL, 0, N'vivianeucharia235@gmail.com', 0, NULL, N'nf14UE97jEX4PQrr7pfFQd2TMrrUdPP3+k93/R3I48k=', NULL, NULL, 0, 0, NULL, NULL, 0, N'vivianeucharia235@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-02T14:17:08.757' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'97eb8fc1-546d-4d87-a452-08b9c74bfdf9', N'Adeniyi', N'Olubusayo', N'08023598127', N'VENDOR', NULL, 0, N'sshyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'sshyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-08-06T22:11:14.737' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'999faf72-b988-42ee-8a18-4eefba6a17d9', N'', N'', N'', N'USER', NULL, 0, N'bakgudnes98@gmail.com', 0, NULL, N'y+iHL0lFtQ67JvRjNe7KvgAeRi1YiIxaside8limmCo=', NULL, NULL, 0, 0, NULL, NULL, 0, N'bakgudnes98@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-07-26T09:37:32.053' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'9ded35ef-c9eb-4916-ad17-dabe751f4b15', N'Isaac', N'Aliyu', N'09090898989', N'VENDOR', NULL, 0, N'isaacaliyugarba@gmail.com', 0, NULL, N'1gjVA9NDrarnRuIwiUXdyw==', NULL, NULL, 0, 0, NULL, NULL, 0, N'isaacaliyugarba@gmail.com', N'NIGERIA', N'Edo State', NULL, NULL, NULL, CAST(N'2022-08-26T12:59:00.910' AS DateTime), N'MAGEL STORE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'a0021b05-16c1-4e91-abf6-a09066686c9c', N'', N'', N'', N'USER', NULL, 0, N'zarahsaeed9@gmail.com', 0, NULL, N'1i9CQb9twIGL8F1Yedah+lSfiQZ3Ipp4ZFoWyDkF1bA=', NULL, NULL, 0, 0, NULL, NULL, 0, N'zarahsaeed9@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-05-06T04:44:19.680' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'a6876ea2-21df-41a6-8f36-e5d017db2c8f', N'Bilkisu Umar', N'Dogo', N'08024891201', N'USER', NULL, 0, N'beelyumar4181@gmail.com', 0, NULL, N'3f0S0vMAO6tvLEHSw1r4QkniqsL6UsbH4TbvycQoRQE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'beelyumar4181@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T22:44:17.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.533' AS DateTime), CAST(N'2022-09-04T17:00:56.533' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'a86679ee-7792-47bf-8da4-fe0ec2961b1e', N'Eze', N'Victor ', N'09016042241', N'VENDOR', NULL, 0, N'ezevictor790@gmail.com', 0, NULL, N'APRaFGMQRvoLsKwpX0VMTxFL2y3QI9VoLX7jhdwHKSQ=', NULL, NULL, 0, 0, NULL, NULL, 0, N'ezevictor790@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-07-19T21:06:07.263' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'aab986d9-fa59-4bd3-a6e4-78ee21d3d7fe', N'', N'', N'', N'USER', NULL, 0, N'hannatdave@gmail.com', 0, NULL, N'3f0S0vMAO6tvLEHSw1r4QkniqsL6UsbH4TbvycQoRQE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'hannatdave@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-05-08T10:31:08.233' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'b1e16079-f3e0-4124-ae68-f78edd88748c', N'stephen', N'sabuda', N'08133701187', N'VENDOR', NULL, 0, N'stephensabuda@gmail.com', 0, NULL, N'sd1vbadKlSwRwp5Tsa3V3ReA2xc8lRn0y/yfy3bzZM4=', NULL, NULL, 0, 0, NULL, NULL, 0, N'stephensabuda@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-26T11:24:37.330' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.670' AS DateTime), CAST(N'2022-09-04T17:00:56.670' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'b675e03c-a42d-47a0-860f-1d83f3d844c9', N'Justin ', N'Ofodile ', N'07031289362', N'USER', NULL, 0, N'justinofodile@gmail.com', 0, NULL, N'TLkK56CM4fHKVV3xW/25Cjj+/KXUhHoaVbEpSIgYcRs=', NULL, NULL, 0, 0, NULL, NULL, 0, N'justinofodile@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2023-02-04T18:35:54.790' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'c82fae25-cdd7-444e-bdfb-44c8afbc559a', N'', N'', N'', N'USER', NULL, 0, N'ossairuthy@gmail.com', 0, NULL, N'SGuuzA6ugX4MN4Fsb5Oe0z9p3MsHE//i8WnqIH/4DgE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'ossairuthy@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-08-24T00:42:23.517' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'cc8e878c-6f45-4939-a139-10dbab9d1426', N'', N'', N'', N'USER', NULL, 0, N'ugocugo272@gmail.com', 0, NULL, N'tnXsOgzCiSZDObcec8v82ZYk3LMTThT7agPst+IwvBY=', NULL, NULL, 0, 0, NULL, NULL, 0, N'ugocugo272@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-05-05T08:53:38.430' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'df891868-7a69-48ea-b00c-e24c51460fe2', N'Bilkisu ', N'Imam', N'8038451334', N'USER', NULL, 0, N'imambilkis@gmail.com', 0, NULL, N'XIA9bHj7aT2GeKKLiNGsdHBtBeAjSrT8w2nLRj41SYc=', NULL, NULL, 0, 0, NULL, NULL, 0, N'imambilkis@gmail.com', N'NIGERIA', N'Niger State', NULL, NULL, NULL, CAST(N'2023-01-18T18:02:46.537' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e0486f57-ed71-4f4e-a689-30c5e3d17f5f', N'Chioma', N'Molokwu ', N'08163448297', N'VENDOR', NULL, 0, N'kendragibson169@gmail.com', 0, NULL, N'M5PpJWHRmcEDbcAbVyZYQjnWa1KGO3mcyz+r1ZTkW8o=', NULL, NULL, 0, 0, NULL, NULL, 0, N'kendragibson169@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-07-24T10:46:23.430' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(10000.00 AS Decimal(18, 2)), CAST(N'2023-07-24T10:48:34.427' AS DateTime), CAST(N'2024-07-23T10:48:34.427' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e105876d-a209-4982-8870-06283df10dbf', N'Noah', N'Paul', N'09089564543', N'VENDOR', NULL, 0, N'noah@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'noah@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:03:43.777' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Hyedima', N'Waha', N'0813724897876', N'VENDOR', NULL, 0, N'hyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-23T01:32:52.550' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(N'2022-10-05T23:10:00.567' AS DateTime), CAST(N'2023-10-05T23:10:00.567' AS DateTime), N'PAID', NULL, NULL, N'/Content/Images/profile/e268d340-53a9-4618-bee7-c0cc54d35b8f.jpg')
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e9855d96-9b7a-43b5-9bc6-5bdd9cdfcb96', N'', N'', N'', N'USER', NULL, 0, N'Dogobeely@gmail.com', 0, NULL, N'Veg5PhY9XzinHwlSTvDO9eK9QbGkTTQ/4XZ5c11uels=', NULL, NULL, 0, 0, NULL, NULL, 0, N'Dogobeely@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-05-08T10:24:31.817' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'ea297fa2-b620-423e-a4fa-1312bcf13e1c', N'Suleiman', N'S Suleiman', N'08148303115', N'USER', NULL, 0, N'Sssuleiman4@gmail.com', 0, NULL, N'eWgud8ZpWwA8JCf5r0VDXw==', NULL, NULL, 0, 0, NULL, NULL, 0, N'Sssuleiman4@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2023-01-16T11:31:34.280' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'ebe778c7-c033-4486-a31c-bd477102cc92', N'Helen ', N'Daudu', N'+2348061761612', N'VENDOR', NULL, 0, N'helendaudu4@gmail.com', 0, NULL, N'fBBojmBMkCi/XJ2sy8xt2A==', NULL, NULL, 0, 0, NULL, NULL, 0, N'helendaudu4@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-07-24T14:04:48.207' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fb17dfc0-e2fe-45bf-a478-28f659a9f2e6', N'Adeniyi', N'Olubusayo', N'08023598137', N'VENDOR', NULL, 0, N'busayoniyi@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'busayoniyi@gmail.com', N'NIGERIA', N'Lagos State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:47.977' AS DateTime), N'ATLO MINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fb4463ea-6b2b-4402-bb38-1247cb845701', N'shipper', N'TestShip', N'09090909890', N'SHIPPER', NULL, 0, N'shipper@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'shipper@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-10-01T22:00:11.280' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fd640f3b-61b1-4bba-a74f-949bb0d46e03', N'', N'', N'', N'USER', NULL, 0, N'', 0, NULL, N'jrk8LdwXC6gEmmWeu4vBsQ==', NULL, NULL, 0, 0, NULL, NULL, 0, N'', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-02T14:21:55.530' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'ffb31c40-4c28-4ebb-8fca-b32f84ce06ab', N'', N'', N'', N'USER', NULL, 0, N'bunyameendauda@gmail.com', 0, NULL, N'0C2xUB+uuErE3ddLm/DS8ik6K3lSyzCPAbN4oovFahc=', NULL, NULL, 0, 0, NULL, NULL, 0, N'bunyameendauda@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-06-09T16:13:41.043' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'08c006e8-3853-4a04-b15d-3de7c36727bd', N'Calab', N'Fiday', N'09079218851', N'USER', NULL, 0, N'calebfridaymaikomo@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'calebfridaymaikomo@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-11T23:00:14.787' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.380' AS DateTime), CAST(N'2022-09-29T14:51:24.380' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'0d50bb9a-b565-4bf9-80d5-c9aec3506032', N'Khaleed', N'Abubakar', N'08038841357', N'USER', NULL, 0, N'khaleed.abubakar@yahoo.com', 0, NULL, N'aRiC/M4o6tDhqy/ylS8p5Zee4Ra1GEl3fmDWV4eoRpQ=', NULL, NULL, 0, 0, NULL, NULL, 0, N'khaleed.abubakar@yahoo.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-09-03T13:15:14.053' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.123' AS DateTime), CAST(N'2022-09-04T17:00:54.123' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'17a08bad-e2be-4c4c-88a1-1ffe6b29261c', N'Hyedima', N'Waha', N'08127243528', N'USER', NULL, 0, N'hh@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hh@gmail.com', N'NIGERIA', N'Bayelsa State', NULL, NULL, NULL, CAST(N'2022-08-24T15:37:21.787' AS DateTime), N'Mangal Store', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.517' AS DateTime), CAST(N'2022-09-29T14:51:24.517' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'Hauwa ', N'Imran', N'09032307443', N'USER', NULL, 0, N'hawyimran@gmail.com', 0, NULL, N'H5fTzzwENcmmPa2F4GyiEKdq6p4HfyDG+F0ZkPyKDRY=', NULL, NULL, 0, 0, NULL, NULL, 0, N'hawyimran@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T12:25:03.203' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.350' AS DateTime), CAST(N'2022-09-04T17:00:54.350' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'22362f56-8e8a-453b-9929-9ffa06960bd8', N'Mahamud', N'Sanusi', N'08137243528', N'USER', NULL, 0, N'asdcnigeria@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'asdcnigeria@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:08.760' AS DateTime), N'Test Store', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.617' AS DateTime), CAST(N'2022-09-29T14:51:24.617' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'27811d28-3bf6-493d-b088-fa4aa0d1d1e2', N'Hyedima', N'Waha', N'+2348137243523', N'VENDOR', NULL, 0, N'shyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'shyedimawaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-25T23:06:09.877' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.457' AS DateTime), CAST(N'2022-09-04T17:00:54.457' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'37a7289c-58d8-466e-97d2-6594611b5727', N'Dolleki', N'Shinga', N'090990999897', N'SERVICE PROVIDER', NULL, 0, N'dhyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'dhyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:41:12.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.717' AS DateTime), CAST(N'2022-09-29T14:51:24.717' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'3934c10b-0304-413c-b801-26f021a0c4eb', N'Hyedima', N'Waha', N'08137243528sdasda', N'USER', NULL, 0, N'hyedimawasdasdaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawasdasdaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-23T13:39:18.273' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.770' AS DateTime), CAST(N'2022-09-29T14:51:24.770' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'Hyedima', N'Waha', N'+2348137243528', N'SERVERICE PROVIDER', NULL, 0, N'sssssshyedimawahdaa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'ddddddhyedimawaha@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-09T08:56:15.447' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(7085.00 AS Decimal(18, 2)), CAST(N'2022-09-20T22:58:31.893' AS DateTime), CAST(N'2023-09-20T22:58:31.893' AS DateTime), N'PAID', N'dbo', NULL, N'/Content/Images/profile/579f2dc6-a9d0-4631-8651-3fddd8d5f069.JPG')
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'6e4997b4-7596-4c31-8985-803b5f2ffa5f', N'Emmanuel ', N'Elisha', N'07060629476', N'VENDOR', NULL, 0, N'emmanuelelisha12@gmail.com', 0, NULL, N'4RT/d/TYYRWMEx5cdAARzg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'emmanuelelisha12@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-26T11:15:53.463' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-08-26T13:21:34.043' AS DateTime), CAST(N'2023-08-26T13:21:34.043' AS DateTime), N'PAID', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'6f0da05b-f266-4410-9e09-3766714133fe', N'Aisha Abdullahi', N'Salihu', N'08132314968', N'VENDOR', NULL, 0, N'salesboyaisha@gmail.com', 0, NULL, N'wut8WuS4YmkkxMFyXNsHVKS3TA3+Bx1J7G62Xo6scJZ9maxA+1aTkusxPFhk01er', NULL, NULL, 0, 0, NULL, NULL, 0, N'salesboyaisha@gmail.com', N'NIGERIA', NULL, N'Federal Capital Territory', NULL, NULL, CAST(N'2022-11-07T13:09:58.167' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'9a275943-c7a6-4149-825b-cb52d7ce8aca', N'Ayuba', N'Dauda', N'+2348137243528224', N'VENDOR', NULL, 0, N'ayubahyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'ayubahyedimawaha@gmail.com', N'NIGERIA', NULL, N'Kaduna State', NULL, NULL, CAST(N'2022-10-18T10:47:43.233' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'9b409011-abce-4081-a0fa-c6ab24cf6dcb', N'Ayuba', N'Dauda', N'0802359813734', N'VENDOR', NULL, 0, N'hyedimawahaaaa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawahaaaa@gmail.com', N'NIGERIA', NULL, N'Kaduna State', NULL, NULL, CAST(N'2022-10-08T21:00:13.983' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'9ded35ef-c9eb-4916-ad17-dabe751f4b15', N'Isaac', N'Aliyu', N'09090898989', N'VENDOR', NULL, 0, N'isaacaliyugarba@gmail.com', 0, NULL, N'1gjVA9NDrarnRuIwiUXdyw==', NULL, NULL, 0, 0, NULL, NULL, 0, N'isaacaliyugarba@gmail.com', N'NIGERIA', N'Edo State', NULL, NULL, NULL, CAST(N'2022-08-26T12:59:00.910' AS DateTime), N'MAGEL STORE', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.913' AS DateTime), CAST(N'2022-09-29T14:51:24.913' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'a6876ea2-21df-41a6-8f36-e5d017db2c8f', N'Bilkisu Umar', N'Dogo', N'08024891201', N'USER', NULL, 0, N'beelyumar4181@gmail.com', 0, NULL, N'3f0S0vMAO6tvLEHSw1r4QkniqsL6UsbH4TbvycQoRQE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'beelyumar4181@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T22:44:17.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.533' AS DateTime), CAST(N'2022-09-04T17:00:56.533' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'b1e16079-f3e0-4124-ae68-f78edd88748c', N'stephen', N'sabuda', N'08133701187', N'VENDOR', NULL, 0, N'stephensabuda@gmail.com', 0, NULL, N'sd1vbadKlSwRwp5Tsa3V3ReA2xc8lRn0y/yfy3bzZM4=', NULL, NULL, 0, 0, NULL, NULL, 0, N'stephensabuda@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-26T11:24:37.330' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.670' AS DateTime), CAST(N'2022-09-04T17:00:56.670' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'd01e772a-0fc5-496f-a5a7-462f8cfc7a3a', N'Sunday', N'Edache', N'07064629763', N'VENDOR', NULL, 0, N'sedache7@gmail.com', 0, NULL, N'dC4cFAuq40i36wEycr53cg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'sedache7@gmail.com', N'NIGERIA', NULL, N'Federal Capital Territory', NULL, NULL, CAST(N'2023-04-18T14:20:14.667' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-09-04T17:00:56.670' AS DateTime), CAST(N'2022-09-04T17:00:56.670' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e105876d-a209-4982-8870-06283df10dbf', N'Noah', N'Paul', N'09089564543', N'VENDOR', NULL, 0, N'noah@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'noah@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:03:43.777' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.050' AS DateTime), CAST(N'2022-09-29T14:51:25.050' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Hyedima', N'Waha', N'0813724897876', N'VENDORd', NULL, 0, N'hyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, N'9.0822009', N'7.505662', CAST(N'2022-09-23T01:32:52.550' AS DateTime), N'Sundache Nig Enterprises ', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-09-23T01:50:04.303' AS DateTime), CAST(N'2023-09-23T01:50:04.303' AS DateTime), N'PAID', N'dbo', NULL, N'/Content/Images/profile/e268d340-53a9-4618-bee7-c0cc54d35b8f.JPG')
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fb17dfc0-e2fe-45bf-a478-28f659a9f2e6', N'Adeniyi', N'Olubusayo', N'08023598137', N'VENDOR', NULL, 0, N'busayoniyi@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'busayoniyi@gmail.com', N'NIGERIA', N'Lagos State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:47.977' AS DateTime), N'ATLO MINE', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.140' AS DateTime), CAST(N'2022-09-29T14:51:25.140' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fd640f3b-61b1-4bba-a74f-949bb0d46e03', N'', N'', N'', N'USER', NULL, 0, N'', 0, NULL, N'jrk8LdwXC6gEmmWeu4vBsQ==', NULL, NULL, 0, 0, NULL, NULL, 0, N'', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-02T14:21:55.530' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.190' AS DateTime), CAST(N'2022-09-29T14:51:25.190' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_productid]    Script Date: 10/2/2023 10:50:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_productid] ON [dbo].[Cart]
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_vendorid]    Script Date: 10/2/2023 10:50:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_vendorid] ON [dbo].[Product]
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_productid]    Script Date: 10/2/2023 10:50:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_productid] ON [dbo].[Sale]
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payments] ADD  CONSTRAINT [DF_payments_tenxdate]  DEFAULT (getdate()) FOR [trnxdate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_price]  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_discount]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_status]  DEFAULT (N'PENDING') FOR [status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_qty]  DEFAULT ((0)) FOR [qty]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_inserdate]  DEFAULT (getdate()) FOR [inserdate]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_amountpaid]  DEFAULT ((0)) FOR [amountpaid]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_qty]  DEFAULT ((0)) FOR [qty]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_unitprice]  DEFAULT ((0)) FOR [unitprice]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_totalcost]  DEFAULT ((0)) FOR [totalcost]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_discountperc]  DEFAULT ((0)) FOR [discountperc]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_discountamount]  DEFAULT ((0)) FOR [discountamount]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_insertdate]  DEFAULT (getdate()) FOR [insertdate]
GO
ALTER TABLE [dbo].[ServiceProvider] ADD  CONSTRAINT [DF_ServiceProvider_phone]  DEFAULT ((0)) FOR [phone]
GO
ALTER TABLE [dbo].[ServiceProvider] ADD  CONSTRAINT [DF_ServiceProvider_status]  DEFAULT (N'PENDING') FOR [status]
GO
ALTER TABLE [dbo].[ServiceProvider] ADD  CONSTRAINT [DF_ServiceProvider_amountpaid]  DEFAULT ((0)) FOR [amountpaid]
GO
ALTER TABLE [dbo].[ServiceProvider] ADD  CONSTRAINT [DF_ServiceProvider_paymentdate]  DEFAULT (getdate()) FOR [paymentdate]
GO
ALTER TABLE [dbo].[ServiceProvider] ADD  CONSTRAINT [DF_ServiceProvider_duedate]  DEFAULT (getdate()) FOR [duedate]
GO
ALTER TABLE [dbo].[ServiceProvider] ADD  CONSTRAINT [DF_ServiceProvider_paymentstatus]  DEFAULT (N'PENDING') FOR [paymentstatus]
GO
ALTER TABLE [dbo].[ServiceProvider] ADD  CONSTRAINT [DF_ServiceProvider_vendortype]  DEFAULT (user_name()) FOR [SPtype]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DF_Shippers_phone]  DEFAULT ((0)) FOR [phone]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DF_Shippers_status]  DEFAULT (N'PENDING') FOR [status]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DF_Shippers_amountpaid]  DEFAULT ((0)) FOR [amountpaid]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DF_Shippers_paymentdate]  DEFAULT (getdate()) FOR [paymentdate]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DF_Shippers_duedate]  DEFAULT (getdate()) FOR [duedate]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DF_Shippers_paymentstatus]  DEFAULT (N'PENDING') FOR [paymentstatus]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DF_Shippers_vendortype]  DEFAULT (user_name()) FOR [shippertype]
GO
ALTER TABLE [dbo].[ShippingPayments] ADD  CONSTRAINT [DF_ShippingPayments_trnxdate]  DEFAULT (getdate()) FOR [trnxdate]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_phone]  DEFAULT ((0)) FOR [phone]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_status]  DEFAULT (N'PENDING') FOR [status]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_amountpaid]  DEFAULT ((0)) FOR [amountpaid]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_paymentdate]  DEFAULT (getdate()) FOR [paymentdate]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_duedate]  DEFAULT (getdate()) FOR [duedate]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_paymentstatus]  DEFAULT (N'PENDING') FOR [paymentstatus]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_vendortype]  DEFAULT (user_name()) FOR [vendortype]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_phone]  DEFAULT ((0)) FOR [phone]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_status]  DEFAULT (N'PENDING') FOR [status]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_amountpaid]  DEFAULT ((0)) FOR [amountpaid]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_paymentdate]  DEFAULT (getdate()) FOR [paymentdate]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_duedate]  DEFAULT (getdate()) FOR [duedate]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_paymentstatus]  DEFAULT (N'PENDING') FOR [paymentstatus]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_vendortype]  DEFAULT (user_name()) FOR [vendortype]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_AspNetUsers] FOREIGN KEY([userid])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_cart_AspNetUsers]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.cart_dbo.product_productid] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_dbo.cart_dbo.product_productid]
GO
ALTER TABLE [dbo].[LGAs]  WITH CHECK ADD  CONSTRAINT [FK_LGAs_State] FOREIGN KEY([stateid])
REFERENCES [dbo].[State] ([stateid])
GO
ALTER TABLE [dbo].[LGAs] CHECK CONSTRAINT [FK_LGAs_State]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_UserAccount] FOREIGN KEY([customerid])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_UserAccount]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_payments_AspNetUsers] FOREIGN KEY([userid])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_payments_AspNetUsers]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_UserAccount] FOREIGN KEY([userid])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_UserAccount]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_dbo.sale_dbo.product_productid] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_dbo.sale_dbo.product_productid]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_sale_AspNetUsers] FOREIGN KEY([userid])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_sale_AspNetUsers]
GO
ALTER TABLE [dbo].[ShippingPayments]  WITH CHECK ADD  CONSTRAINT [FK_ShippingPayments_Orders] FOREIGN KEY([orderid])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[ShippingPayments] CHECK CONSTRAINT [FK_ShippingPayments_Orders]
GO
ALTER TABLE [dbo].[ShippingPayments]  WITH CHECK ADD  CONSTRAINT [FK_ShippingPayments_Shippers] FOREIGN KEY([shipperid])
REFERENCES [dbo].[Shippers] ([Id])
GO
ALTER TABLE [dbo].[ShippingPayments] CHECK CONSTRAINT [FK_ShippingPayments_Shippers]
GO
USE [master]
GO
ALTER DATABASE [codeicon_salesboy] SET  READ_WRITE 
GO
