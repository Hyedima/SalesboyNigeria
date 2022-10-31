
USE [salesboy]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[categorysub]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[LGAs]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 10/30/2022 11:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [varchar](200) NOT NULL,
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
/****** Object:  Table [dbo].[Payments]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 10/30/2022 11:48:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [varchar](200) NOT NULL,
	[vendorid] [varchar](200) NULL,
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
/****** Object:  Table [dbo].[Sale]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[ServiceProvider]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[Shippers]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[ShippingPayments]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[State]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[UserAccount]    Script Date: 10/30/2022 11:48:53 PM ******/
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
/****** Object:  Table [dbo].[Vendors]    Script Date: 10/30/2022 11:48:53 PM ******/
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
INSERT [dbo].[Orders] ([id], [batchid], [useremail], [paymentid], [orderdate], [shipmentdate], [IsShipping], [shipperid], [frieght], [insertdate], [customerid], [status], [notes], [customeremail], [paymentstatus], [shipmentaddress], [Country], [city], [zip], [phone], [landmark]) VALUES (N'3CEF386B', N'FLW-MOCK-858a9203a51a581cfe85dd2a9e6b518d', N'hyedimawaha@gmail.com', N'FLW-MOCK-858a9203a51a581cfe85dd2a9e6b518d', CAST(N'2022-10-05T23:10:00.810' AS DateTime), NULL, N'Fales', NULL, NULL, N'10/5/2022 11:10:00 PM', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Ordered', N'payment for items is don''t, its now on the shipment process', N'hyedimawaha@gmail.com', N'Pending', N'My home', N'NIGERIA', N'ABUJA', N'100208', N'0813724897876', N'')
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
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f-3C197A55', N'Hyedima Waha', N'3791831', N'hyedimawaha@gmail.com', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'0813724897876', CAST(100.00 AS Decimal(18, 2)), CAST(N'2022-10-05T23:10:00.570' AS DateTime), N'PAID', N'Ref No: 7180c661-7868-4ff8-8e12-17cc03483fac Gateway_ref: FLW-MOCK-858a9203a51a581cfe85dd2a9e6b518d currency: NGN', N'FLW-MOCK-858a9203a51a581cfe85dd2a9e6b518d', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f-74D39CAA', N'Hyedima Waha', N'3776862', N'hyedimawaha@gmail.com', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'0813724897876', CAST(17085.00 AS Decimal(18, 2)), CAST(N'2022-09-29T15:46:44.637' AS DateTime), N'PAID', N'Ref No: 47b39ef8-8cb0-4287-a51c-307b9ff36efb Gateway_ref: OIXD2683316644627909 currency: NGN', N'OIXD2683316644627909', NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([id], [name], [trnxid], [email], [userid], [phone], [amount], [trnxdate], [status], [notes], [gatewayref], [paymenttype], [category], [title]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f-779561A7', N'Hyedima Waha', N'3759210', N'hyedimawaha@gmail.com', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'0813724897876', CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-09-23T01:50:04.303' AS DateTime), N'PAID', N'Ref No: ee3b9efa-761e-4aec-91b2-24b365cd3397 Gateway_ref: FLW-MOCK-412925fe9d59cffa9ea35fd91df43f23 currency: NGN', N'FLW-MOCK-412925fe9d59cffa9ea35fd91df43f23', NULL, NULL, NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'062898d2-b2a3-4ad2-a9d0-15b7462583aa', N'6e4997b4-7596-4c31-8985-803b5f2ffa5f', N'iron', N'Electronics', N'pressing iron', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7000.00 AS Decimal(18, 2)), 26, N'PENDING', 3, CAST(N'2022-08-26T14:22:26.9404321' AS DateTime2), N'', N'philips', NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'31e669b9-72ec-486d-89f9-3757c06f6e71', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Testing products', N'Gold', N'<p><img src="data:image/jpeg;base64,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" style="width: 563px;" data-filename="visit4.jpg"><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2022-09-23T15:05:42.5274519' AS DateTime2), N'Swiss', N'Swiss', NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'3228420b-3de9-4c65-be3e-e524467da45a', N'6e4997b4-7596-4c31-8985-803b5f2ffa5f', N'clothings', N'clothing', N'clothing wears', N'/Content/Images/3228420b-3de9-4c65-be3e-e524467da45a/photobg.jpg', N'/Content/Images/3228420b-3de9-4c65-be3e-e524467da45a/photo1.jpg', N'/Content/Images/3228420b-3de9-4c65-be3e-e524467da45a/photo2.jpg', N'/Content/Images/3228420b-3de9-4c65-be3e-e524467da45a/photo3.jpg', N'/Content/Images/3228420b-3de9-4c65-be3e-e524467da45a/photo4.jpg', N'/Content/Images/3228420b-3de9-4c65-be3e-e524467da45a/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(85.00 AS Decimal(18, 2)), 0, N'PENDING', 0, CAST(N'2022-08-31T12:40:19.4157105' AS DateTime2), N'', N'', NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'4c05b61c-0cab-4c11-9559-5b096d7ee54f', N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'Bills Creem', N'Beauty', N'it''s a wonder skin care product', N'/Content/Images/4c05b61c-0cab-4c11-9559-5b096d7ee54f/photobg.png', N'/Content/Images/4c05b61c-0cab-4c11-9559-5b096d7ee54f/photo1.JPG', N'/Content/Images/4c05b61c-0cab-4c11-9559-5b096d7ee54f/photo2.JPG', N'/Content/Images/4c05b61c-0cab-4c11-9559-5b096d7ee54f/photo3.JPG', N'/Content/Images/4c05b61c-0cab-4c11-9559-5b096d7ee54f/photo4.JPG', N'/Content/Images/4c05b61c-0cab-4c11-9559-5b096d7ee54f/photo5.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 32, CAST(N'2022-09-16T16:42:02.5611067' AS DateTime2), N'Bill Nigeria', N'Beels', NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'94e40027-c6fb-4c52-85f7-2405d0f78842', N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'Television Set', N'Electronics', N'The Infinix 32 Inch X1 Android TV come with a more powerful chip, equipped with four-core high-performance processor, ensure the smooth experience. It also supports WIFI and Bluetooth 5.0 transmission protocol.


Easy projection, more immersive in playing games, binge-watching with a bigger screen.

Official Android 9.0

The Infinix X1 Android TV Provides you a complete range of entertainment options
You deserve a professional official edition! Exclusive TV intelligent system, powered by smarter service. Experience smoother handling and richer content.

A new seamless way to enjoy media.

Infinix Life App delivers a fully featured immerisive experience with your Infinix Smart TV, All at palm of your hands.Hotspot Screen MirroringJust with an easy click, Infinix Smart TV allows you to mirror your mobile device to your TV screen using your mobile hotspot without consuming mobile data.

Genuine authorized applications, present all the world''s most popular things to you

Work in close cooperation with Netflix, YouTube, Prime video, update massive content
synchronously every day.Only the genuine Android system could carry Google play, 5000+ TV applications, explore infinite entertainment options.

Infinix life, the intelligent control center in your home.

Outstanding choice for screen mirroring, with Infinix exclusive agreement, enjoy native videos on your screen without internet data consumption.
Know you better, ensuring your favorite content is always front.

Epic 2.0 Enhancement engine of image quality Breathtaking effect

Infinix self developed enhancement engine of image quality, comprehensively improves image quality from fluency, color, sharpness and contrast.', N'/Content/Images/94e40027-c6fb-4c52-85f7-2405d0f78842/photobg.jpg', N'/Content/Images/94e40027-c6fb-4c52-85f7-2405d0f78842/photo1.jpg', N'/Content/Images/94e40027-c6fb-4c52-85f7-2405d0f78842/photo2.jpg', N'/Content/Images/94e40027-c6fb-4c52-85f7-2405d0f78842/photo3.jpg', N'/Content/Images/94e40027-c6fb-4c52-85f7-2405d0f78842/photo4.jpg', N'/Content/Images/94e40027-c6fb-4c52-85f7-2405d0f78842/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2022-08-10T08:46:03.4923969' AS DateTime2), N'LG TV', N'LG', NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'ac9a2685-e8ae-4f75-a60f-256833cbbae7', N'63dd199a-8826-4c58-b552-0fa0d0535877', N'New Test product ', N'Gold', N'<p>sasdsdasd&nbsp; asdasddd<b>dddddddddddd</b>dddd</p>', N'/Content/Images/ac9a2685-e8ae-4f75-a60f-256833cbbae7/photobg.jpg', N'/Content/Images/ac9a2685-e8ae-4f75-a60f-256833cbbae7/photo1.jpg', N'/Content/Images/ac9a2685-e8ae-4f75-a60f-256833cbbae7/photo2.jpg', N'/Content/Images/ac9a2685-e8ae-4f75-a60f-256833cbbae7/photo3.jpg', N'/Content/Images/ac9a2685-e8ae-4f75-a60f-256833cbbae7/photo4.jpg', N'/Content/Images/ac9a2685-e8ae-4f75-a60f-256833cbbae7/photo5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(4000.00 AS Decimal(18, 2)), 0, NULL, 12, CAST(N'2022-10-08T01:40:59.8204358' AS DateTime2), N'dssdfsdf', N'sdfsdf', NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'b669c81e-a370-440d-ad62-c4c0682bb2a7', N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'Wrist Watch', N'Gold', N'just the description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 12, CAST(N'2022-08-11T15:14:08.3152923' AS DateTime2), N'Swiss', N'Swiss', NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'e8a707b1-cd4c-40e4-86e9-df5656961dc2', N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Toyota Camry', N'Car', N'<h1>dsdasdas</h1>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(2000.00 AS Decimal(18, 2)), 0, NULL, 20, CAST(N'2022-09-23T01:57:54.8496683' AS DateTime2), N'Toyota', N'Toyota', NULL)
GO
INSERT [dbo].[Product] ([id], [vendorid], [productname], [producttype], [description], [bgphoto], [photo1], [photo2], [photo3], [photo4], [photo5], [photo6], [category], [tags], [size1], [size2], [size3], [size4], [color1], [color2], [color3], [color4], [price], [discount], [status], [qty], [inserdate], [modelno], [brandname], [otherfeatures]) VALUES (N'f66a49fa-3e8a-437b-9942-5d8bfe82b008', N'6e4997b4-7596-4c31-8985-803b5f2ffa5f', N'Hair clipper', N'Electronics', N' 2000mAh Rechargeable Digital ', N'/Content/Images/f66a49fa-3e8a-437b-9942-5d8bfe82b008/photobg.jpg', N'/Content/Images/f66a49fa-3e8a-437b-9942-5d8bfe82b008/photo1.webp', N'/Content/Images/f66a49fa-3e8a-437b-9942-5d8bfe82b008/photo2.jpg', N'/Content/Images/f66a49fa-3e8a-437b-9942-5d8bfe82b008/photo3.jpg', N'/Content/Images/f66a49fa-3e8a-437b-9942-5d8bfe82b008/photo4.jpg', N'/Content/Images/f66a49fa-3e8a-437b-9942-5d8bfe82b008/photo5.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7500.00 AS Decimal(18, 2)), 26, N'PENDING', 10, CAST(N'2022-08-26T13:31:02.4165924' AS DateTime2), N'', N'kiki', NULL)
GO
INSERT [dbo].[ServiceProvider] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [SPtype], [bg], [photo]) VALUES (N'087bd611-03ee-4e27-87c8-91ad102b741a', N'Hyedima', N'Waha', N'08137243528', N'SERVICE PROVIDER', NULL, 1, N'hyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha@gmail.com', N'NIGERIA', NULL, N'Abia State', NULL, NULL, CAST(N'2022-10-08T21:56:58.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PAID', NULL, NULL, N'/Content/Images/services/087bd611-03ee-4e27-87c8-91ad102b741a.jpeg')
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
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'17a08bad-e2be-4c4c-88a1-1ffe6b29261c', N'Hyedima', N'Waha', N'08127243528', N'USER', NULL, 0, N'hh@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hh@gmail.com', N'NIGERIA', N'Bayelsa State', NULL, NULL, NULL, CAST(N'2022-08-24T15:37:21.787' AS DateTime), N'Mangal Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'19ab65e2-f4b2-448e-90d9-8ff65906055f', N'Hauwa ', N'Imran', N'09032307443', N'USER', NULL, 0, N'hawyimran@gmail.com', 0, NULL, N'H5fTzzwENcmmPa2F4GyiEKdq6p4HfyDG+F0ZkPyKDRY=', NULL, NULL, 0, 0, NULL, NULL, 0, N'hawyimran@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T12:25:03.203' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.350' AS DateTime), CAST(N'2022-09-04T17:00:54.350' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'22362f56-8e8a-453b-9929-9ffa06960bd8', N'Mahamud', N'Sanusi', N'08137243528', N'USER', NULL, 0, N'asdcnigeria@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'asdcnigeria@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:08.760' AS DateTime), N'Test Store', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'27811d28-3bf6-493d-b088-fa4aa0d1d1e2', N'Hyedima', N'Waha', N'+2348137243523', N'VENDOR', NULL, 0, N'shyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'shyedimawaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-08-25T23:06:09.877' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:54.457' AS DateTime), CAST(N'2022-09-04T17:00:54.457' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'37a7289c-58d8-466e-97d2-6594611b5727', N'Dolleki', N'Shinga', N'090990999897', N'SERVICE PROVIDER', NULL, 0, N'dhyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'dhyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:41:12.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'3934c10b-0304-413c-b801-26f021a0c4eb', N'Hyedima', N'Waha', N'08137243528sdasda', N'USER', NULL, 0, N'hyedimawasdasdaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawasdasdaha@gmail.com', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-23T13:39:18.273' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'579f2dc6-a9d0-4631-8651-3fddd8d5f069', N'Hyedima', N'Waha', N'+2348137243528', N'SERVERICE PROVIDER', NULL, 0, N'sssssshyedimawahdaa@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'ddddddhyedimawaha@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-09T08:56:15.447' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(7085.00 AS Decimal(18, 2)), CAST(N'2022-09-20T22:58:31.893' AS DateTime), CAST(N'2023-09-20T22:58:31.893' AS DateTime), N'PAID', NULL, NULL, N'/Content/Images/profile/579f2dc6-a9d0-4631-8651-3fddd8d5f069.JPG')
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'6e4997b4-7596-4c31-8985-803b5f2ffa5f', N'Emmanuel ', N'Elisha', N'07060629476', N'VENDOR', NULL, 0, N'emmanuelelisha12@gmail.com', 0, NULL, N'4RT/d/TYYRWMEx5cdAARzg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'emmanuelelisha12@gmail.com', N'NIGERIA', N'Kaduna State', NULL, NULL, NULL, CAST(N'2022-08-26T11:15:53.463' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-08-26T13:21:34.043' AS DateTime), CAST(N'2023-08-26T13:21:34.043' AS DateTime), N'PAID', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'9ded35ef-c9eb-4916-ad17-dabe751f4b15', N'Isaac', N'Aliyu', N'09090898989', N'VENDOR', NULL, 0, N'isaacaliyugarba@gmail.com', 0, NULL, N'1gjVA9NDrarnRuIwiUXdyw==', NULL, NULL, 0, 0, NULL, NULL, 0, N'isaacaliyugarba@gmail.com', N'NIGERIA', N'Edo State', NULL, NULL, NULL, CAST(N'2022-08-26T12:59:00.910' AS DateTime), N'MAGEL STORE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'a6876ea2-21df-41a6-8f36-e5d017db2c8f', N'Bilkisu Umar', N'Dogo', N'08024891201', N'USER', NULL, 0, N'beelyumar4181@gmail.com', 0, NULL, N'3f0S0vMAO6tvLEHSw1r4QkniqsL6UsbH4TbvycQoRQE=', NULL, NULL, 0, 0, NULL, NULL, 0, N'beelyumar4181@gmail.com', N'NIGERIA', N'Federal Capital Territory', NULL, NULL, NULL, CAST(N'2022-08-14T22:44:17.657' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.533' AS DateTime), CAST(N'2022-09-04T17:00:56.533' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'b1e16079-f3e0-4124-ae68-f78edd88748c', N'stephen', N'sabuda', N'08133701187', N'VENDOR', NULL, 0, N'stephensabuda@gmail.com', 0, NULL, N'sd1vbadKlSwRwp5Tsa3V3ReA2xc8lRn0y/yfy3bzZM4=', NULL, NULL, 0, 0, NULL, NULL, 0, N'stephensabuda@gmail.com', N'NIGERIA', N'Gombe State', NULL, NULL, NULL, CAST(N'2022-08-26T11:24:37.330' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-04T17:00:56.670' AS DateTime), CAST(N'2022-09-04T17:00:56.670' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e105876d-a209-4982-8870-06283df10dbf', N'Noah', N'Paul', N'09089564543', N'VENDOR', NULL, 0, N'noah@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'noah@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:03:43.777' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[UserAccount] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Hyedima', N'Waha', N'0813724897876', N'VENDOR', NULL, 0, N'hyedimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'hyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-23T01:32:52.550' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(N'2022-10-05T23:10:00.567' AS DateTime), CAST(N'2023-10-05T23:10:00.567' AS DateTime), N'PAID', NULL, NULL, NULL)
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
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e105876d-a209-4982-8870-06283df10dbf', N'Noah', N'Paul', N'09089564543', N'VENDOR', NULL, 0, N'noah@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'noah@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-22T22:03:43.777' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.050' AS DateTime), CAST(N'2022-09-29T14:51:25.050' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'e268d340-53a9-4618-bee7-c0cc54d35b8f', N'Hyedima', N'Waha', N'08137248dfdfd97876', N'VENDOR', NULL, 0, N'sdfshyedgdfdfgdfdimawaha@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'asdasdhyedimawaha@gmail.com', N'NIGERIA', NULL, NULL, NULL, NULL, CAST(N'2022-09-23T01:32:52.550' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(50.00 AS Decimal(18, 2)), CAST(N'2022-09-23T01:50:04.303' AS DateTime), CAST(N'2023-09-23T01:50:04.303' AS DateTime), N'PAID', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fb17dfc0-e2fe-45bf-a478-28f659a9f2e6', N'Adeniyi', N'Olubusayo', N'08023598137', N'VENDOR', NULL, 0, N'busayoniyi@gmail.com', 0, NULL, N'lhM+/jKIrUvM/O63wJw0jg==', NULL, NULL, 0, 0, NULL, NULL, 0, N'busayoniyi@gmail.com', N'NIGERIA', N'Lagos State', NULL, NULL, NULL, CAST(N'2022-08-22T13:26:47.977' AS DateTime), N'ATLO MINE', NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.140' AS DateTime), CAST(N'2022-09-29T14:51:25.140' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
INSERT [dbo].[Vendors] ([Id], [firstname], [lastname], [phone], [usertype], [address], [active], [Email], [EmailConfirmed], [PasswordSalt], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [country], [state], [city], [lat], [longi], [regdate], [brandname], [category], [about], [logo], [tags], [insertdate], [status], [notes], [amountpaid], [paymentdate], [duedate], [paymentstatus], [vendortype], [bg], [photo]) VALUES (N'fd640f3b-61b1-4bba-a74f-949bb0d46e03', N'', N'', N'', N'USER', NULL, 0, N'', 0, NULL, N'jrk8LdwXC6gEmmWeu4vBsQ==', NULL, NULL, 0, 0, NULL, NULL, 0, N'', N'NIGERIA', N'Abia State', NULL, NULL, NULL, CAST(N'2022-09-02T14:21:55.530' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, N'PENDING', NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2022-09-29T14:51:25.190' AS DateTime), CAST(N'2022-09-29T14:51:25.190' AS DateTime), N'PENDING', N'dbo', NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_productid]    Script Date: 10/30/2022 11:48:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_productid] ON [dbo].[Cart]
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_vendorid]    Script Date: 10/30/2022 11:48:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_vendorid] ON [dbo].[Product]
(
	[vendorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_productid]    Script Date: 10/30/2022 11:48:53 PM ******/
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
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Vendors] FOREIGN KEY([vendorid])
REFERENCES [dbo].[Vendors] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Vendors]
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