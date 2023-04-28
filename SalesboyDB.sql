CREATE DATABASE [salesboy]
GO
USE [salesboy]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorysub]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EasyOrders]    Script Date: 4/28/2023 11:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EasyOrders](
	[id] [varchar](200) NOT NULL,
	[description] [varchar](200) NULL,
	[address] [varchar](200) NULL,
	[loc_long] [varchar](200) NULL,
	[loc_lat] [varchar](200) NULL,
	[location] [varchar](200) NULL,
	[insertdate] [datetime] NULL,
	[insertuser] [varchar](200) NULL,
	[status] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
 CONSTRAINT [PK_EasyOrders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EasyOrdersItem_temp]    Script Date: 4/28/2023 11:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EasyOrdersItem_temp](
	[id] [varchar](200) NOT NULL,
	[orderid] [varchar](200) NULL,
	[item] [varchar](200) NULL,
	[amount] [varchar](200) NULL,
	[description] [varchar](200) NULL,
	[insertdate] [datetime] NULL,
	[insertuser] [varchar](200) NULL,
	[status] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
 CONSTRAINT [PK_EasyOrdersItem_temp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EasyOrdersItems]    Script Date: 4/28/2023 11:11:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EasyOrdersItems](
	[id] [varchar](200) NOT NULL,
	[orderid] [varchar](200) NULL,
	[item] [varchar](200) NULL,
	[amount] [varchar](200) NULL,
	[description] [varchar](200) NULL,
	[insertdate] [datetime] NULL,
	[insertuser] [varchar](200) NULL,
	[status] [varchar](200) NULL,
	[notes] [varchar](200) NULL,
 CONSTRAINT [PK_EasyOrdersItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LGAs]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceProvider]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingPayments]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 4/28/2023 11:11:42 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Cart] ([id], [userid], [useremail], [userip], [usermacaddress], [productid], [qty], [size], [discount], [insertdate]) VALUES (N'6630E046', NULL, N'hyedimawaha22@gmail.com', NULL, NULL, N'e2e148f6-81e7-4442-99f9-e11b32f24b8b', 2, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-04-22T15:21:17.293' AS DateTime))
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
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'0268fc12-e8c1-410a-9b10-9a4212c6079d', NULL, N'Book', N'200', NULL, CAST(N'2022-11-16T15:40:24.227' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
GO
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'05242614-faf9-4bb7-8c64-7ecb9890a6dd', NULL, N'Maggi', N'2000', NULL, CAST(N'2022-11-16T15:37:02.643' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
GO
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'5b65fc66-4b0a-44ca-92f0-fad486e4acdf', NULL, N'Book', N'200', NULL, CAST(N'2022-11-16T15:49:10.250' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
GO
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'6d7d51e4-a539-474e-931c-b13174ec068c', NULL, N'Maggi', N'2000', NULL, CAST(N'2022-11-16T15:36:25.887' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
GO
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'9f1e22fd-2351-4cd0-99cc-b97cfd2b4739', NULL, N'Tomato', N'2000', NULL, CAST(N'2022-11-16T15:36:03.173' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
GO
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'b9f166e4-140a-4b6a-a024-4113e3be43ca', NULL, N'Book', N'200', NULL, CAST(N'2022-11-16T15:45:18.907' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
GO
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'd1a5b716-fc6b-499a-a2c7-b9551631505c', NULL, N'Book', N'200', NULL, CAST(N'2022-11-16T15:46:06.760' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
GO
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'd3a4dc66-094d-4576-96a3-10ab5b378bdf', NULL, N'Book', N'200', NULL, CAST(N'2022-11-16T15:46:46.027' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
GO
INSERT [dbo].[EasyOrdersItem_temp] ([id], [orderid], [item], [amount], [description], [insertdate], [insertuser], [status], [notes]) VALUES (N'e85716d4-6700-471f-98cc-f77202115fed', NULL, N'Book', N'200', NULL, CAST(N'2022-11-16T15:39:42.733' AS DateTime), N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'PENDING', NULL)
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
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'254C5363', N'Hyedima', N'Waha', N'Citec Vila Gwarimpa Estate', N'1DAA33C1', N'hyedimawaha@gmail.com', NULL, CAST(N'2023-02-13T13:46:19.270' AS DateTime), CAST(N'2023-02-13T13:46:19.270' AS DateTime), N'True', NULL, N'', N'2/13/2023 1:46:19 PM', N'b0244598-4d76-4bd6-8f03-9b6fa6c1ffe0', N'PENDING', N'PENDING ORDER', N'hyedimawaha@gmail.com', N'PENDING', N'Citec Vila Gwarimpa Estate', N'Nigeria', N'Abuja', N'800104', N'+2348137243528', NULL)
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'3CEF386B', NULL, NULL, NULL, N'FLW-MOCK-858a9203a51a581cfe85dd2a9e6b518d', N'hyedimawaha@gmail.com', N'FLW-MOCK-858a9203a51a581cfe85dd2a9e6b518d', CAST(N'2022-10-05T23:10:00.810' AS DateTime), NULL, N'Fales', NULL, NULL, N'10/5/2022 11:10:00 PM', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Ordered', N'payment for items is don''t, its now on the shipment process', N'hyedimawaha@gmail.com', N'Pending', N'My home', N'NIGERIA', N'ABUJA', N'100208', N'0813724897876', N'')
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'4DF0F16F', N'Hyedima', N'Waha', N'Citec Vila Gwarimpa Estate', N'124F5F98', N'hyedimawaha@gmail.com', NULL, CAST(N'2023-02-13T13:14:48.597' AS DateTime), CAST(N'2023-02-13T13:14:48.597' AS DateTime), N'True', NULL, N'', N'2/13/2023 1:14:48 PM', N'b0244598-4d76-4bd6-8f03-9b6fa6c1ffe0', N'PENDING', N'PENDING ORDER', N'hyedimawaha@gmail.com', N'PENDING', N'Citec Vila Gwarimpa Estate', N'Nigeria', N'Abuja', N'800104', N'+2348137243528', NULL)
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'761710F3', NULL, NULL, NULL, N'FLW-MOCK-155fc2a141220f822a29e6625722c963', N'hyedimawaha@gmail.com', N'FLW-MOCK-155fc2a141220f822a29e6625722c963', CAST(N'2023-02-13T15:03:44.947' AS DateTime), NULL, N'Fales', NULL, NULL, N'2/13/2023 3:03:44 PM', N'b0244598-4d76-4bd6-8f03-9b6fa6c1ffe0', N'Ordered', N'payment for items is don''t, its now on the shipment process', N'hyedimawaha@gmail.com', N'Pending', N'My home', N'NIGERIA', N'ABUJA', N'100208', NULL, N'')
GO
INSERT [dbo].[Orders] ([id], [firstname], [lastname], [address], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'FACA583', N'Hyedima', N'Waha', N'Citec Vila Gwarimpa Estate', N'CE1E972', N'hyedimawaha@gmail.com', NULL, CAST(N'2023-02-13T13:59:50.023' AS DateTime), CAST(N'2023-02-13T13:59:50.023' AS DateTime), N'True', NULL, N'', N'2/13/2023 1:59:50 PM', N'b0244598-4d76-4bd6-8f03-9b6fa6c1ffe0', N'PENDING', N'PENDING ORDER', N'hyedimawaha@gmail.com', N'PENDING', N'Citec Vila Gwarimpa Estate', N'Nigeria', N'Abuja', N'800104', N'+2348137243528', NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069-2B0E094E', N'Hyedima Waha', N'3753363', N'hyedimawaha@gmail.com', N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'+2348137243528', CAST(7085.00 AS Decimal(18, 2)), CAST(N'2022-09-20T22:58:31.893' AS DateTime), N'PAID', N'Ref No: b6ba46d2-f214-4973-b318-b2806fddd1cb Gateway_ref: NARF5871916637110955 currency: NGN', N'NARF5871916637110955', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069-3DC7756B', N'Hyedima Waha', N'3658185', N'hyedimawaha@gmail.com', N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'+2348137243528', CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-08-17T00:04:24.797' AS DateTime), N'PAID', N'Ref No: 13097db5-3043-476c-8422-ea20fccad851 Gateway_ref: FLW-MOCK-80cd2126205b2b51ce9bfae3b7d4dd84 currency: NGN', N'FLW-MOCK-80cd2126205b2b51ce9bfae3b7d4dd84', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069-7850FF24', N'Hyedima Waha', N'3753349', N'hyedimawaha@gmail.com', N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'+2348137243528', CAST(3000.00 AS Decimal(18, 2)), CAST(N'2022-09-20T22:41:03.100' AS DateTime), N'PAID', N'Ref No: 59ec6fa2-f67f-470c-82a6-5aec04526c99 Gateway_ref: FLW-MOCK-7999267a2d53fe99c53011cc6bab34c0 currency: NGN', N'FLW-MOCK-7999267a2d53fe99c53011cc6bab34c0', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069-B82F021B', N'Hyedima Waha', N'3660987', N'hyedimawaha@gmail.com', N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'+2348137243528', CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-08-17T21:19:29.990' AS DateTime), N'PAID', N'Ref No: 8de0664f-c7b8-4b03-8447-9feee9b25303 Gateway_ref: FLW-MOCK-4aa49b2ff309298fefbee2ee40f52bd2 currency: NGN', N'FLW-MOCK-4aa49b2ff309298fefbee2ee40f52bd2', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069-DFBD70AA', N'Hyedima Waha', N'3660991', N'hyedimawaha@gmail.com', N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'+2348137243528', CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-08-17T21:21:50.377' AS DateTime), N'PAID', N'Ref No: c8921201-22c2-483e-9987-413e73734c21 Gateway_ref: FLW-MOCK-9956ea9b17890db8bdee909916ee93a8 currency: NGN', N'FLW-MOCK-9956ea9b17890db8bdee909916ee93a8', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'a96f760a-8c25-422c-b8a7-b28ef62671bb-50EB2E2F', N'Hyedima Waha', N'4285086', N'hyedimawaha12@gmail.com', N'a96f760a-8c25-422c-b8a7-b28ef62671bb', N'', CAST(100.00 AS Decimal(18, 2)), CAST(N'2023-04-22T04:59:30.690' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 4/22/2023 4:59:30 AM Ref No: 662f154e-6bf5-470b-80ed-4ca1f889adbb Gateway_ref: MockFLWRef-1682135959177 currency: NGN', N'MockFLWRef-1682135959177', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'b0244598-4d76-4bd6-8f03-9b6fa6c1ffe0-3E9E2B3E', N'Anonymous customer', N'4151651', N'hyedimawaha@gmail.com', N'b0244598-4d76-4bd6-8f03-9b6fa6c1ffe0', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(N'2023-02-13T15:03:44.767' AS DateTime), N'PAID', N'Ref No: b7abd0a0-dde1-47f8-97cd-0c6aed606bd6 Gateway_ref: FLW-MOCK-155fc2a141220f822a29e6625722c963 currency: NGN', N'FLW-MOCK-155fc2a141220f822a29e6625722c963', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'b2ad4fc4-66f1-45c6-ab72-2e6f474af261-4A78944B', N'Hyedima Waha', N'4285107', N'hyedimawaha22@gmail.com', N'b2ad4fc4-66f1-45c6-ab72-2e6f474af261', N'', CAST(100.00 AS Decimal(18, 2)), CAST(N'2023-04-22T05:22:19.320' AS DateTime), N'PAID', N'VENDOR SUBSCRIPTION Payment  on 4/22/2023 5:22:19 AM Ref No: 038caf4a-6ec4-40c3-8d76-1fa28f67ec60 Gateway_ref: MockFLWRef-1682137327639 currency: NGN', N'MockFLWRef-1682137327639', N'ONLINE', N'SUBSCRIPTION', N'Payment of annaul Shop Space on Salesboy Nigeria')
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f-3C197A55', N'Hyedima Waha', N'3791831', N'hyedimawaha@gmail.com', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'0813724897876', CAST(100.00 AS Decimal(18, 2)), CAST(N'2022-10-05T23:10:00.570' AS DateTime), N'PAID', N'Ref No: 7180c661-7868-4ff8-8e12-17cc03483fac Gateway_ref: FLW-MOCK-858a9203a51a581cfe85dd2a9e6b518d currency: NGN', N'FLW-MOCK-858a9203a51a581cfe85dd2a9e6b518d', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f-74D39CAA', N'Hyedima Waha', N'3776862', N'hyedimawaha@gmail.com', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'0813724897876', CAST(17085.00 AS Decimal(18, 2)), CAST(N'2022-09-29T15:46:44.637' AS DateTime), N'PAID', N'Ref No: 47b39ef8-8cb0-4287-a51c-307b9ff36efb Gateway_ref: OIXD2683316644627909 currency: NGN', N'OIXD2683316644627909', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f-779561A7', N'Hyedima Waha', N'3759210', N'hyedimawaha@gmail.com', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'0813724897876', CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-09-23T01:50:04.303' AS DateTime), N'PAID', N'Ref No: ee3b9efa-761e-4aec-91b2-24b365cd3397 Gateway_ref: FLW-MOCK-412925fe9d59cffa9ea35fd91df43f23 currency: NGN', N'FLW-MOCK-412925fe9d59cffa9ea35fd91df43f23', NULL, NULL, NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'13f847cf-7b46-4638-a134-02561829ce72', N'a96f760a-8c25-422c-b8a7-b28ef62671bb', N'New Test product ', N'Electronics', N'<p>ewwqw</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4000.00 AS Decimal(18, 2)), 0, NULL, 2, CAST(N'2023-04-22T13:45:29.3975002' AS DateTime2), N'Swiss', N'kiki', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'daeb5c78-66a0-4af6-9d57-085a75965d89', N'b2ad4fc4-66f1-45c6-ab72-2e6f474af261', N'Wrist Watch', N'Electronics', N'<p>sasasdads</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 12, CAST(N'2023-04-22T15:18:21.4607168' AS DateTime2), N'Swiss', N'kiki', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'e2e148f6-81e7-4442-99f9-e11b32f24b8b', N'b2ad4fc4-66f1-45c6-ab72-2e6f474af261', N'New Test product ', N'Electronics', N'<p>sads</p>', N'/Content/Images/e2e148f6-81e7-4442-99f9-e11b32f24b8b/photobg.jpeg', N'/Content/Images/e2e148f6-81e7-4442-99f9-e11b32f24b8b/photo1.jpeg', N'/Content/Images/e2e148f6-81e7-4442-99f9-e11b32f24b8b/photo2.jpeg', N'/Content/Images/e2e148f6-81e7-4442-99f9-e11b32f24b8b/photo3.jpeg', N'/Content/Images/e2e148f6-81e7-4442-99f9-e11b32f24b8b/photo4.jpeg', N'/Content/Images/e2e148f6-81e7-4442-99f9-e11b32f24b8b/photo5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(30000.00 AS Decimal(18, 2)), 0, NULL, 20999, CAST(N'2023-04-22T05:33:55.6746317' AS DateTime2), N'Swiss', N'kiki', NULL)
GO
INSERT [dbo].[Product] ([id], [userid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'f00301b6-ad12-47ee-9d88-46cba87d0b0c', N'a96f760a-8c25-422c-b8a7-b28ef62671bb', N'New Test product ', N'Electronics', N'<p>ewwqw</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4000.00 AS Decimal(18, 2)), 0, NULL, 2, CAST(N'2023-04-22T13:40:58.4044169' AS DateTime2), N'Swiss', N'kiki', NULL)
GO
INSERT [dbo].[ServiceProvider] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [SPtype], [bg], [photo]) VALUES (N'087bd611-03ee-4e27-87c8-91ad102b741a', N'Hyedima', N'Waha', N'08137243528', N'SERVICE PROVIDER', NULL, 1, N'hyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha@gmail.com', N'NIGERIA', NULL, N'Abia State', NULL, NULL, CAST(N'2022-10-08T21:56:58.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, NULL, N'/Content/Images/services/087bd611-03ee-4e27-87c8-91ad102b741a.jpeg')
GO
INSERT [dbo].[ServiceProvider] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [SPtype], [bg], [photo]) VALUES (N'401de1c0-7ae1-4712-b556-aae058e64def', N'Ayuba', N'Dauda', N'0813724352833333', N'SERVICE PROVIDER', NULL, 0, N'hyedimawahaaaaaaaaaaa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawahaaaaaaaaaaa@gmail.com', N'NIGERIA', NULL, N'Kaduna State', NULL, NULL, CAST(N'2022-10-17T13:57:26.887' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ServiceProvider] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [SPtype], [bg], [photo]) VALUES (N'ffb96bcc-00b4-4659-8152-4df794bddba0', N'Hyedima', N'Waha', N'081372435283432', N'SERVICE PROVIDER', NULL, 0, N'hyedimawaaaaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaaaaha@gmail.com', N'NIGERIA', NULL, N'Abia State', NULL, NULL, CAST(N'2022-10-17T13:36:22.667' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
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
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'08c006e8-3853-4a04-b15d-3de7c36727bd', N'Calab', N'Fiday', N'09079218851', N'USER', NULL, 0, N'calebfridaymaikomo@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'calebfridaymaikomo@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-11T23:00:14.787' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'0d50bb9a-b565-4bf9-80d5-c9aec3506032', N'Khaleed', N'Abubakar', N'08038841357', N'USER', NULL, 0, N'khaleed.abubakar@yahoo.com', 0, NULL, N'aRiC/M4o6tDhqy/ylS8p5Zee4Ra1GEl3fmDWV4eoRpQ=', NULL, NULL, 0, 0, NULL, NULL, 0, N'khaleed.abubakar@yahoo.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-09-03T13:15:14.053' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.123' AS DateTime), CAST(N'2022-09-04T17:00:54.123' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'11323258-3b32-4fa3-8354-f4ebd1d3905e', N'Hyedima', N'Waha', N'+2348137243524', N'VENDOR', NULL, 0, N'hyedimawaha123@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha123@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-04-22T03:40:37.770' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'17a08bad-e2be-4c4c-88a1-1ffe6b29261c', N'Hyedima', N'Waha', N'08127243528', N'USER', NULL, 0, N'hh@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hh@gmail.com', N'NIGERIA', N'Bayelsa State', NULL, NULL, NULL, CAST(N'2022-08-24T15:37:21.787' AS DateTime), N'Mangal Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'Hauwa ', N'Imran', N'09032307443', N'USER', NULL, 0, N'hawyimran@gmail.com', 0, NULL, N'H5fTzzwENcmmPa2F4GyiEKdq6p4HfyDG+F0ZkPyKDRY=', NULL, NULL, 0, 0, NULL, NULL, 0, N'hawyimran@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T12:25:03.203' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.350' AS DateTime), CAST(N'2022-09-04T17:00:54.350' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'1a8bd77b-1e7b-4890-b4a9-e0a39cffb610', N'Mahamud', N'Sanusi', N'08137246428', N'USER', NULL, 0, N'aa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'aa@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2023-01-15T23:52:52.437' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'22362f56-8e8a-453b-9929-9ffa06960bd8', N'Mahamud', N'Sanusi', N'08137243528', N'USER', NULL, 0, N'asdcnigeria@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'asdcnigeria@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:08.760' AS DateTime), N'Test Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'27811d28-3bf6-493d-b088-fa4aa0d1d1e2', N'Hyedima', N'Waha', N'+2348137243523', N'VENDOR', NULL, 0, N'shyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'shyedimawaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-25T23:06:09.877' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.457' AS DateTime), CAST(N'2022-09-04T17:00:54.457' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'37a7289c-58d8-466e-97d2-6594611b5727', N'Dolleki', N'Shinga', N'090990999897', N'SERVICE PROVIDER', NULL, 0, N'dhyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'dhyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:41:12.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'3934c10b-0304-413c-b801-26f021a0c4eb', N'Hyedima', N'Waha', N'08137243528sdasda', N'USER', NULL, 0, N'hyedimawasdasdaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawasdasdaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-23T13:39:18.273' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'393cb5d6-399b-428b-81fd-5242f549c614', N'Mahamud', N'Sanusi', N'08165243528', N'USER', NULL, 0, N'abc@gmail.com', 0, NULL, N'', NULL, NULL, 0, 0, NULL, NULL, 0, N'abc@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2023-01-14T13:00:53.873' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'4368411b-b542-49fb-b1d9-b5150da7541a', N'', N'', N'', N'USER', NULL, 0, N'hyedimawahaa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawahaa@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-01-26T13:46:27.580' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'Hyedima', N'Waha', N'+2348137243528', N'SERVERICE PROVIDER', NULL, 0, N'sssssshyedimawahdaa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'ddddddhyedimawaha@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-09T08:56:15.447' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7085.00 AS Decimal(18, 2)), CAST(N'2022-09-20T22:58:31.893' AS DateTime), CAST(N'2023-09-20T22:58:31.893' AS DateTime), N'PAID', NULL, NULL, N'/Content/Images/profile/579f2dc6-a9d0-4631-8651-3fddd8d5f069.JPG')
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'5b7fd5ba-90c4-41f2-9803-22bc578ba8fc', N'Adeniyi', N'Olubusayo', N'0802359813723', N'USER', NULL, 0, N'dd@gmail.com', 0, NULL, N'', NULL, NULL, 0, 0, NULL, NULL, 0, N'dd@gmail.com', N'NIGERIA', N'Lagos State', NULL, NULL, NULL, CAST(N'2023-01-15T23:48:50.277' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'6e4997b4-7596-4c31-8985-803b5f2ffa5f', N'Emmanuel ', N'Elisha', N'07060629476', N'VENDOR', NULL, 0, N'emmanuelelisha12@gmail.com', 0, NULL, N'4RT/d/TYYRWMEx5cdAARzg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'emmanuelelisha12@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-26T11:15:53.463' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-08-26T13:21:34.043' AS DateTime), CAST(N'2023-08-26T13:21:34.043' AS DateTime), N'PAID', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'9ded35ef-c9eb-4916-ad17-dabe751f4b15', N'Isaac', N'Aliyu', N'09090898989', N'VENDOR', NULL, 0, N'isaacaliyugarba@gmail.com', 0, NULL, N'1gjVA9NDrarnRuIwiUXdyw==', NULL, NULL, 0, 0, NULL, NULL, 0, N'isaacaliyugarba@gmail.com', N'NIGERIA', N'Edo State', NULL, NULL, NULL, CAST(N'2022-08-26T12:59:00.910' AS DateTime), N'MAGEL STORE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'a6876ea2-21df-41a6-8f36-e5d017db2c8f', N'Bilkisu Umar', N'Dogo', N'08024891201', N'USER', NULL, 0, N'beelyumar4181@gmail.com', 0, NULL, N'3f0S0vMAO6tvLEHSw1r4QkniqsL6UsbH4TbvycQoRQE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'beelyumar4181@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T22:44:17.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.533' AS DateTime), CAST(N'2022-09-04T17:00:56.533' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'a96f760a-8c25-422c-b8a7-b28ef62671bb', N'Hyedima', N'Waha', N'+2348137243508', N'VENDOR', NULL, 0, N'hyedimawaha12@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha12@gmail.com', N'NIGERIA', NULL, N'Akwa Ibom State', NULL, NULL, CAST(N'2023-04-22T03:16:17.123' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(N'2023-04-22T04:59:30.690' AS DateTime), CAST(N'2024-04-21T04:59:30.690' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'b0244598-4d76-4bd6-8f03-9b6fa6c1ffe0', N'', N'', N'', N'USER', NULL, 0, N'hyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha@gmail.com', N'NIGERIA', N'', NULL, NULL, NULL, CAST(N'2023-01-26T13:57:38.067' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(300.00 AS Decimal(18, 2)), CAST(N'2023-02-13T15:03:44.767' AS DateTime), CAST(N'2024-02-13T15:03:44.767' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'b1e16079-f3e0-4124-ae68-f78edd88748c', N'stephen', N'sabuda', N'08133701187', N'VENDOR', NULL, 0, N'stephensabuda@gmail.com', 0, NULL, N'sd1vbadKlSwRwp5Tsa3V3ReA2xc8lRn0y/yfy3bzZM4=', NULL, NULL, 0, 0, NULL, NULL, 0, N'stephensabuda@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-26T11:24:37.330' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.670' AS DateTime), CAST(N'2022-09-04T17:00:56.670' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'b2ad4fc4-66f1-45c6-ab72-2e6f474af261', N'Hyedima', N'Waha', N'+2348137243228', N'VENDOR', NULL, 0, N'hyedimawaha22@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha22@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-04-22T02:14:43.700' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(N'2023-04-22T05:22:19.320' AS DateTime), CAST(N'2024-04-21T05:22:19.320' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e105876d-a209-4982-8870-06283df10dbf', N'Noah', N'Paul', N'09089564543', N'VENDOR', NULL, 0, N'noah@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'noah@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:03:43.777' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Hyedima', N'Waha', N'0813724897876', N'VENDOR', NULL, 0, N'hyedimawarrrrha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-23T01:32:52.550' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(N'2022-10-05T23:10:00.567' AS DateTime), CAST(N'2023-10-05T23:10:00.567' AS DateTime), N'PAID', NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fb17dfc0-e2fe-45bf-a478-28f659a9f2e6', N'Adeniyi', N'Olubusayo', N'08023598137', N'VENDOR', NULL, 0, N'busayoniyi@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'busayoniyi@gmail.com', N'NIGERIA', N'Lagos State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:47.977' AS DateTime), N'ATLO MINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fb4463ea-6b2b-4402-bb38-1247cb845701', N'shipper', N'TestShip', N'09090909890', N'SHIPPER', NULL, 0, N'shipper@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'shipper@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-10-01T22:00:11.280' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fd640f3b-61b1-4bba-a74f-949bb0d46e03', N'', N'', N'', N'USER', NULL, 0, N'', 0, NULL, N'jrk8LdwXC6gEmmWeu4vBsQ==', NULL, NULL, 0, 0, NULL, NULL, 0, N'', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-02T14:21:55.530' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'08c006e8-3853-4a04-b15d-3de7c36727bd', N'Calab', N'Fiday', N'09079218851', N'USER', NULL, 0, N'calebfridaymaikomo@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'calebfridaymaikomo@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-11T23:00:14.787' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.380' AS DateTime), CAST(N'2022-09-29T14:51:24.380' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'0d50bb9a-b565-4bf9-80d5-c9aec3506032', N'Khaleed', N'Abubakar', N'08038841357', N'USER', NULL, 0, N'khaleed.abubakar@yahoo.com', 0, NULL, N'aRiC/M4o6tDhqy/ylS8p5Zee4Ra1GEl3fmDWV4eoRpQ=', NULL, NULL, 0, 0, NULL, NULL, 0, N'khaleed.abubakar@yahoo.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-09-03T13:15:14.053' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.123' AS DateTime), CAST(N'2022-09-04T17:00:54.123' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'17a08bad-e2be-4c4c-88a1-1ffe6b29261c', N'Hyedima', N'Waha', N'0812724352864', N'USER', NULL, 0, N'hh@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hh@gmail.com', N'NIGERIA', N'Bayelsa State', NULL, NULL, NULL, CAST(N'2022-08-24T15:37:21.787' AS DateTime), N'Mangal Store', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.517' AS DateTime), CAST(N'2022-09-29T14:51:24.517' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'Hauwa ', N'Imran', N'09032307443', N'USER', NULL, 0, N'hawyimran@gmail.com', 0, NULL, N'H5fTzzwENcmmPa2F4GyiEKdq6p4HfyDG+F0ZkPyKDRY=', NULL, NULL, 0, 0, NULL, NULL, 0, N'hawyimran@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T12:25:03.203' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.350' AS DateTime), CAST(N'2022-09-04T17:00:54.350' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'22362f56-8e8a-453b-9929-9ffa06960bd8', N'Mahamud', N'Sanusi', N'0813724352845', N'USER', NULL, 0, N'asdcnigeria@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'asdcnigeria@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:08.760' AS DateTime), N'Test Store', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.617' AS DateTime), CAST(N'2022-09-29T14:51:24.617' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'27811d28-3bf6-493d-b088-fa4aa0d1d1e2', N'Hyedima', N'Waha', N'+2348137243523', N'VENDOR', NULL, 0, N'shyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'shyedimawaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-25T23:06:09.877' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.457' AS DateTime), CAST(N'2022-09-04T17:00:54.457' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'37a7289c-58d8-466e-97d2-6594611b5727', N'Dolleki', N'Shinga', N'090990999897', N'SERVICE PROVIDER', NULL, 0, N'dhyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'dhyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:41:12.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.717' AS DateTime), CAST(N'2022-09-29T14:51:24.717' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'3934c10b-0304-413c-b801-26f021a0c4eb', N'Hyedima', N'Waha', N'08137243528sdasda', N'USER', NULL, 0, N'hyedimawasdasdaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawasdasdaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-23T13:39:18.273' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.770' AS DateTime), CAST(N'2022-09-29T14:51:24.770' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'3984c592-6545-47ba-8b78-81e0782a6574', N'Hyedima', N'Waha', N'+2348137243591', N'VENDOR', NULL, 0, N'vend1@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'vend1@gmail.com', N'NIGERIA', NULL, N'Abia State', NULL, NULL, CAST(N'2023-04-22T01:46:20.370' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'46409706-9e62-47bb-9c4a-6f5d86d80d77', N'Adam', N'Daniel', N'9090090000', N'VENDOR', NULL, 0, N'adamdaniel@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'adamdaniel@gmail.com', N'NIGERIA', NULL, N'Kaduna State', NULL, NULL, CAST(N'2022-11-25T12:31:18.883' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'Hyedima', N'Waha', N'+2348137243528', N'SERVERICE PROVIDER', NULL, 0, N'sssssshyedimawahdaa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'ddddddhyedimawaha@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-09T08:56:15.447' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(7085.00 AS Decimal(18, 2)), CAST(N'2022-09-20T22:58:31.893' AS DateTime), CAST(N'2023-09-20T22:58:31.893' AS DateTime), N'PAID', N'dbo', NULL, N'/Content/Images/profile/579f2dc6-a9d0-4631-8651-3fddd8d5f069.JPG')
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'63dd199a-8826-4c58-b552-0fa0d0535877', N'Hyedima', N'Waha', N'08137243528', N'VENDOR', NULL, 0, N'hyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha@gmail.com', N'NIGERIA', NULL, N'Kaduna State', NULL, NULL, CAST(N'2022-10-07T22:36:05.950' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PAID', NULL, NULL, N'/Content/Images/profile/63dd199a-8826-4c58-b552-0fa0d0535877.jpg')
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'6e4997b4-7596-4c31-8985-803b5f2ffa5f', N'Emmanuel ', N'Elisha', N'07060629476', N'VENDOR', NULL, 0, N'emmanuelelisha12@gmail.com', 0, NULL, N'4RT/d/TYYRWMEx5cdAARzg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'emmanuelelisha12@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-26T11:15:53.463' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-08-26T13:21:34.043' AS DateTime), CAST(N'2023-08-26T13:21:34.043' AS DateTime), N'PAID', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'9ded35ef-c9eb-4916-ad17-dabe751f4b15', N'Isaac', N'Aliyu', N'09090898989', N'VENDOR', NULL, 0, N'isaacaliyugarba@gmail.com', 0, NULL, N'1gjVA9NDrarnRuIwiUXdyw==', NULL, NULL, 0, 0, NULL, NULL, 0, N'isaacaliyugarba@gmail.com', N'NIGERIA', N'Edo State', NULL, NULL, NULL, CAST(N'2022-08-26T12:59:00.910' AS DateTime), N'MAGEL STORE', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:24.913' AS DateTime), CAST(N'2022-09-29T14:51:24.913' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'a6876ea2-21df-41a6-8f36-e5d017db2c8f', N'Bilkisu Umar', N'Dogo', N'08024891201', N'USER', NULL, 0, N'beelyumar4181@gmail.com', 0, NULL, N'3f0S0vMAO6tvLEHSw1r4QkniqsL6UsbH4TbvycQoRQE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'beelyumar4181@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T22:44:17.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.533' AS DateTime), CAST(N'2022-09-04T17:00:56.533' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'b1e16079-f3e0-4124-ae68-f78edd88748c', N'stephen', N'sabuda', N'08133701187', N'VENDOR', NULL, 0, N'stephensabuda@gmail.com', 0, NULL, N'sd1vbadKlSwRwp5Tsa3V3ReA2xc8lRn0y/yfy3bzZM4=', NULL, NULL, 0, 0, NULL, NULL, 0, N'stephensabuda@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-26T11:24:37.330' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.670' AS DateTime), CAST(N'2022-09-04T17:00:56.670' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'c24f93c6-5f18-4101-95a4-44313ff64af7', N'Hyedima', N'Waha', N'+2348137243590', N'VENDOR', NULL, 0, N'vend@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'vend@gmail.com', N'NIGERIA', NULL, N'Abia State', NULL, NULL, CAST(N'2023-04-22T01:44:13.373' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'c43fea53-fd57-4ec6-b0c3-1d06c61fdd67', N'Hyedima', N'Waha', N'+2348137243521', N'VENDOR', NULL, 0, N'hyedimawaha1@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha1@gmail.com', N'NIGERIA', NULL, N'Abia State', NULL, NULL, CAST(N'2023-04-22T01:47:05.867' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'd0168ff0-619c-4991-aca0-77a13f86a2aa', N'Hyedima', N'Waha', N'+2348137243522', N'VENDOR', NULL, 0, N'hyedimawaha11@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha11@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2023-04-22T02:07:39.800' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'd5770836-5ad9-4af9-b0ad-a98f51735b34', N'Mahamud', N'Sanusi', N'08137223456', N'VENDOR', N'Dr. Yahaya street, Doctors Qtrs. U/Rimi Kaduna', 0, N'vendors@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'vendors@gmail.com', N'NIGERIA', N'Kaduna State', N'Kaduna State', NULL, NULL, CAST(N'2023-01-21T10:40:30.827' AS DateTime), N'Codeicon Technologies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e105876d-a209-4982-8870-06283df10dbf', N'Noah', N'Paul', N'09089564543', N'VENDOR', NULL, 0, N'noah@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'noah@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:03:43.777' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.050' AS DateTime), CAST(N'2022-09-29T14:51:25.050' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Hyedima', N'Waha', N'08137248dfdfd97876', N'VENDOR', NULL, 0, N'sdfshyedgdfdfgdfdimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'asdasdhyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, N'10.5293961', N'7.431121', CAST(N'2022-09-23T01:32:52.550' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-09-23T01:50:04.303' AS DateTime), CAST(N'2023-09-23T01:50:04.303' AS DateTime), N'PAID', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fb17dfc0-e2fe-45bf-a478-28f659a9f2e6', N'Adeniyi', N'Olubusayo', N'08023598137', N'VENDOR', NULL, 0, N'busayoniyi@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'busayoniyi@gmail.com', N'NIGERIA', N'Lagos State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:47.977' AS DateTime), N'ATLO MINE', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.140' AS DateTime), CAST(N'2022-09-29T14:51:25.140' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fd640f3b-61b1-4bba-a74f-949bb0d46e03', N'', N'', N'', N'USER', NULL, 0, N'', 0, NULL, N'jrk8LdwXC6gEmmWeu4vBsQ==', NULL, NULL, 0, 0, NULL, NULL, 0, N'', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-02T14:21:55.530' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.190' AS DateTime), CAST(N'2022-09-29T14:51:25.190' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_productid]    Script Date: 4/28/2023 11:11:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_productid] ON [dbo].[Cart]
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_vendorid]    Script Date: 4/28/2023 11:11:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_vendorid] ON [dbo].[Product]
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_productid]    Script Date: 4/28/2023 11:11:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_productid] ON [dbo].[Sale]
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[EasyOrdersItems]  WITH CHECK ADD  CONSTRAINT [FK_EasyOrdersItems_EasyOrders] FOREIGN KEY([orderid])
REFERENCES [dbo].[EasyOrders] ([id])
GO
ALTER TABLE [dbo].[EasyOrdersItems] CHECK CONSTRAINT [FK_EasyOrdersItems_EasyOrders]
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
ALTER DATABASE [salesboy] SET  READ_WRITE 
GO
