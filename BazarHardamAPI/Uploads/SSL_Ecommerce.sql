USE [SSL_Ecommerce]
GO
/****** Object:  Table [dbo].[SSL_Address]    Script Date: 9/8/2021 4:40:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Address](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CareOf] [nvarchar](250) NULL,
	[Phone] [nvarchar](25) NULL,
	[Division] [nvarchar](25) NOT NULL,
	[District] [nvarchar](25) NOT NULL,
	[Area] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Authenticate]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Authenticate](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](25) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Brand]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Brand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[ImageName] [nvarchar](50) NOT NULL,
	[ImagePath] [nvarchar](250) NOT NULL,
	[Status] [nvarchar](25) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_BrandCategory]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_BrandCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_BrandCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_CampaignBrand]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_CampaignBrand](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrandId] [bigint] NOT NULL,
	[CampBrandCategoryId] [bigint] NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_CampaignBrand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_CampaignBrandCategory]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_CampaignBrandCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_CampaignBrandCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_CampaignProduct]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_CampaignProduct](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[CampProductCategoryId] [bigint] NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_CampaignProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_CampaignProductCategory]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_CampaignProductCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_CampaignProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_CampaignSlider]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_CampaignSlider](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](50) NOT NULL,
	[ImagePath] [nvarchar](250) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_CampaignSlider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Comment]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Comment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Comments] [nvarchar](500) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Coupon]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Coupon](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Discount] [numeric](18, 2) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Coupon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_DeliveryHistory]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_DeliveryHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[DeliveryCharge] [numeric](18, 2) NOT NULL,
	[Vat] [numeric](18, 2) NOT NULL,
	[TotalAmount] [numeric](18, 2) NOT NULL,
	[VendorId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[OrderNo] [nvarchar](25) NOT NULL,
	[Status] [nvarchar](25) NOT NULL,
	[StartLocation] [nvarchar](25) NOT NULL,
	[StartAddress] [nvarchar](250) NOT NULL,
	[EndLocation] [nvarchar](25) NOT NULL,
	[EndAddress] [nvarchar](250) NOT NULL,
	[DeliveryManId] [uniqueidentifier] NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_DeliveryHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_DeliveryMan]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_DeliveryMan](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[PhoneNumber] [nvarchar](25) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[ImageName] [nvarchar](50) NOT NULL,
	[ImagePath] [nvarchar](250) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_DeliveryMan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_DeliveryType]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_DeliveryType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Cost] [numeric](18, 2) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_DeliveryType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Description]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Description](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LabelName] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[ProductId] [bigint] NOT NULL,
 CONSTRAINT [PK_SSL_Description] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Inventory]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Inventory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ChallanDate] [datetime] NOT NULL,
	[ChallanRef] [nvarchar](25) NOT NULL,
	[InvStoreId] [bigint] NOT NULL,
	[VendorId] [bigint] NOT NULL,
	[Remarks] [nvarchar](250) NULL,
	[ProductId] [bigint] NOT NULL,
	[Quantity] [numeric](18, 2) NOT NULL,
	[CostUnitPrice] [numeric](18, 2) NOT NULL,
	[TotalAmount] [numeric](18, 2) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Inventory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_InvStockSummary]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_InvStockSummary](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InvStoreId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Barcode] [nvarchar](50) NULL,
	[ReceivedQty] [numeric](18, 2) NOT NULL,
	[DeliveryQty] [numeric](18, 2) NOT NULL,
	[StoreTransferQty] [numeric](18, 2) NOT NULL,
	[SupplierReturnQty] [numeric](18, 2) NOT NULL,
	[DamageQty] [numeric](18, 2) NOT NULL,
	[SoldQty] [numeric](18, 2) NOT NULL,
	[SalesReturnQty] [numeric](18, 2) NOT NULL,
	[BalanceQty] [numeric](18, 2) NOT NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_InvStockSummary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_InvStore]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_InvStore](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_InvStore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Like]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Like](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Like] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_OnlineBanking]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_OnlineBanking](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsMobile] [bit] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[AccountNumber] [nvarchar](250) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_OnlineBanking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Order]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [nvarchar](25) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[PaymentTypeId] [bigint] NOT NULL,
	[CouponId] [bigint] NULL,
	[RefId] [nvarchar](25) NULL,
	[Status] [nvarchar](25) NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[TotalAmount] [numeric](18, 2) NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_OrderDetail]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_OrderDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Qty] [int] NOT NULL,
	[UnitPrice] [numeric](18, 2) NOT NULL,
	[TotalAmount] [numeric](18, 2) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SSL_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_OrderStatus]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_OrderStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[Status] [nvarchar](25) NOT NULL,
	[Comments] [nvarchar](250) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_PaymentHistory]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_PaymentHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[InvoiceNo] [nvarchar](25) NOT NULL,
	[PaymentTypeId] [bigint] NOT NULL,
	[CouponId] [bigint] NULL,
	[RefId] [nvarchar](25) NULL,
	[TotalAmount] [numeric](18, 2) NOT NULL,
	[AddressId] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_PaymentHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_PaymentType]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_PaymentType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[ImageName] [nvarchar](50) NULL,
	[ImagePath] [nvarchar](250) NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_PaymentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Product]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[BrandId] [bigint] NULL,
	[Code] [nvarchar](25) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[ProductUnitId] [bigint] NOT NULL,
	[SaleUnitPrice] [numeric](18, 2) NOT NULL,
	[ImageName] [nvarchar](50) NOT NULL,
	[ImagePath] [nvarchar](250) NOT NULL,
	[Status] [nvarchar](25) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_ProductCategory]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_ProductCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_ProductUnit]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_ProductUnit](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_ProductUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Reference]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Reference](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RefId] [nvarchar](25) NOT NULL,
	[Discount] [numeric](18, 2) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Reference] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_ShoppingCart]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_ShoppingCart](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Qty] [int] NOT NULL,
	[UnitPrice] [numeric](18, 2) NOT NULL,
	[TotalAmount] [numeric](18, 2) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Specification]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Specification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LabelName] [nvarchar](250) NOT NULL,
	[Specification] [nvarchar](1000) NOT NULL,
	[ProductId] [bigint] NOT NULL,
 CONSTRAINT [PK_SSL_Specification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_User]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_User](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](250) NOT NULL,
	[LastName] [nvarchar](250) NOT NULL,
	[PhoneNumber] [nvarchar](25) NOT NULL,
	[Gender] [nvarchar](25) NULL,
	[BirthDate] [nvarchar](25) NULL,
	[Email] [nvarchar](250) NULL,
	[Division] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[PoliceStation] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Location] [nvarchar](50) NULL,
	[ImageName] [nvarchar](50) NULL,
	[ImagePath] [nvarchar](250) NULL,
	[Token] [nvarchar](500) NULL,
	[RefId] [nvarchar](25) NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK__SSL_User__3214EC0711738F1A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_UserBalance]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_UserBalance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Balance] [numeric](18, 2) NOT NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_User_Balance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SSL_Vendor]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSL_Vendor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[ContactPerson] [nvarchar](250) NOT NULL,
	[PhoneNumber] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Division] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[PoliceStation] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[ImageName] [nvarchar](50) NOT NULL,
	[ImagePath] [nvarchar](250) NOT NULL,
	[PersonImageName] [nvarchar](50) NULL,
	[PersonImagePath] [nvarchar](250) NULL,
	[Status] [nvarchar](25) NULL,
	[Token] [nvarchar](500) NULL,
	[CreateUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[EditUser] [uniqueidentifier] NULL,
	[EditDate] [datetime] NULL,
	[OCode] [nvarchar](25) NULL,
 CONSTRAINT [PK_SSL_Vendor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SSL_Address] ON 

INSERT [dbo].[SSL_Address] ([Id], [CareOf], [Phone], [Division], [District], [Area], [Location], [Address], [UserId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'SubraSystems Ltd.', N'02-9145938', N'Dhaka', N'Dhaka', N'Tejgaon', N'37.4219983,-122.084', N'Hasney Tower, Level 10, 3/A, Dhaka 1215', N'37481fbc-2395-4a88-abca-75858b4ad63e', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-10T10:45:11.947' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_Address] OFF
GO
INSERT [dbo].[SSL_Authenticate] ([Id], [Username], [Password], [Role]) VALUES (N'7b98632d-c56f-4dc3-ac57-296d4119e917', N'abc', N'abc', N'Admin')
INSERT [dbo].[SSL_Authenticate] ([Id], [Username], [Password], [Role]) VALUES (N'17ee71bc-1f4f-4ef0-975a-337e7181d249', N'admin', N'admin', N'Admin')
INSERT [dbo].[SSL_Authenticate] ([Id], [Username], [Password], [Role]) VALUES (N'83089b52-6054-4267-b799-42d71717c52b', N'mk', N'123', N'Customer')
INSERT [dbo].[SSL_Authenticate] ([Id], [Username], [Password], [Role]) VALUES (N'e0067f40-da28-4e42-ac45-5c901ce194f3', N'nazmul', N'123456', N'Director')
INSERT [dbo].[SSL_Authenticate] ([Id], [Username], [Password], [Role]) VALUES (N'37481fbc-2395-4a88-abca-75858b4ad63e', N'Subra', N'ssl@12345', N'Sales Partner')
INSERT [dbo].[SSL_Authenticate] ([Id], [Username], [Password], [Role]) VALUES (N'7d111b31-681a-4e79-bead-aa272a3c3280', N'M1', N'123456', N'Customer')
GO
SET IDENTITY_INSERT [dbo].[SSL_Brand] ON 

INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, 1, N'Express Grocery', N'TVS Auto Bangladesh Ltd is a joint venture between TVS & Sons and Rian Motors of Bangladesh.', N'IMG_20210605_144311.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, 4, N'Square Food & Beverage Limited', N'Fashion accessories brand. Full range of mobile phone accessories - audio, in-car, chargers, cables, mobile power banks and many other.', N'IMG_20210605_144312.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, 3, N'Pran Foods Ltd', N'U.S.A.. For detailed product information, please access the websites for your region shown below. Imaging Products. Nikon Inc.', N'IMG_20210605_144313.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, 2, N'Deshi Food', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144314.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, 6, N'Village Fresh Food', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144315.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (6, 5, N'Dhaka Grocery', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144316.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (7, 5, N'Express Freshvaly', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144317.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (8, 5, N'Bullet Express Khaleque & Sons', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144318.png', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (9, 5, N'Bullet Express Little India', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144319.png', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (10, 5, N'Bullet Express Unimart', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144320.png', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (11, 5, N'Express Grocery', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144321.png', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (12, 5, N'Bullet Express Bengal Meat', N'We believe there are no limits to what an image can do. That''s why we''ve used our history of imaging expertise to drive innovation across new industries, all with', N'IMG_20210605_144322.png', N'/Uploads/IMG_20210604_154312.jpg', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Brand] ([Id], [CategoryId], [Name], [Description], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (19, 3, N'Tanvir Hossain', N'dddd', N'IMG_2021510_15441590.jpg', N'/Uploads', N'Available', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_BrandCategory] ON 

INSERT [dbo].[SSL_BrandCategory] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'Baby Food', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_BrandCategory] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'Flowers', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_BrandCategory] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, N'Frozen Foods', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_BrandCategory] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, N'Dry Foods', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_BrandCategory] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (6, N'Vegetables', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_BrandCategory] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (9, N'Fruit ', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-04-27T15:22:41.583' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_BrandCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_CampaignBrand] ON 

INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, 5, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, 6, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, 7, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, 8, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, 9, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (6, 10, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (7, 11, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (8, 12, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (9, 1, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (10, 2, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (11, 3, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (12, 4, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (13, 1, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (14, 2, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (15, 3, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrand] ([Id], [BrandId], [CampBrandCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (16, 4, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_CampaignBrand] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_CampaignBrandCategory] ON 

INSERT [dbo].[SSL_CampaignBrandCategory] ([Id], [Name], [Description], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'Express', N'None', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignBrandCategory] ([Id], [Name], [Description], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'Shops - Cash on Delivery', N'None', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_CampaignBrandCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_CampaignProduct] ON 

INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, 3, 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, 4, 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, 5, 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, 6, 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, 7, 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (6, 3, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (7, 4, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (8, 5, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (9, 6, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (10, 7, 2, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (11, 3, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (12, 4, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (13, 5, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (14, 6, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (15, 7, 3, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (16, 3, 4, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (17, 4, 4, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (18, 5, 4, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (19, 6, 4, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProduct] ([Id], [ProductId], [CampProductCategoryId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (20, 7, 4, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_CampaignProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_CampaignProductCategory] ON 

INSERT [dbo].[SSL_CampaignProductCategory] ([Id], [Name], [Description], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'Flash Sale', N'Buy 1 Get 1 Deals and More', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProductCategory] ([Id], [Name], [Description], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'MEGA SME Deal', N'For SME Retailers', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProductCategory] ([Id], [Name], [Description], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'Mega Quick Deal', N'Exclusive Offers!', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignProductCategory] ([Id], [Name], [Description], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, N'Payment on Delivery', N'Guaranteed Delivery within 7 Days', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_CampaignProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_CampaignSlider] ON 

INSERT [dbo].[SSL_CampaignSlider] ([Id], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'IMG_20210604_144312.jpg', N'~Uploads/IMG_20210604_144312.jpg', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignSlider] ([Id], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'IMG_20210604_144313.jpg', N'~Uploads/IMG_20210604_144312.jpg', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_CampaignSlider] ([Id], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'IMG_20210604_144314.jpg', N'~Uploads/IMG_20210604_144312.jpg', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_CampaignSlider] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_DeliveryType] ON 

INSERT [dbo].[SSL_DeliveryType] ([Id], [Name], [Cost], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'Home Delivery', CAST(50.00 AS Numeric(18, 2)), N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_DeliveryType] ([Id], [Name], [Cost], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'Delivery Point', CAST(0.00 AS Numeric(18, 2)), N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_DeliveryType] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_Description] ON 

INSERT [dbo].[SSL_Description] ([Id], [LabelName], [Description], [ProductId]) VALUES (1, N'ENGINE', N'Type: 4 stroke, air cooled, single cylinder OHC
Clyinder bore: 62 mm
Stroke: 52.5 mm
Piston displacement: 159.7 cc
Compression ratio: 9.5 : 1
Carburettor: Ucal BS-26
Air filter: Double Polyurethane foam filter element
Oil filter: Wire mesh and micronic paper filter
Lubrication system: Forced wet sump
Maximum power in kW: 11.19(15.2 bhp)@8500 rpm
Maximum torque in Nm: 13.1 @ 6000 rpm
Maximum speed: 118 km/hr
Engine idling rpm: 1400 ± 100 rpm
Starting system: Kick starter/Electric starter', 3)
INSERT [dbo].[SSL_Description] ([Id], [LabelName], [Description], [ProductId]) VALUES (4, N'TRANSMISSION', N'Clutch: Wet – Multi plate type
Gear shift pattern: 1 down and 4 up
Primary transmission: Helical gears
Secondary transmission: Chain and sprockets', 3)
INSERT [dbo].[SSL_Description] ([Id], [LabelName], [Description], [ProductId]) VALUES (5, N'DIMENSIONS', N'Overall length: 2085 mm
Overall width: 730 mm
Overall height: 1105 mm
Seat height: 790 mm
Ground clearance: 165 mm
Wheel base: 1300 mm
Kerb weight(with toolkit and 90% fuel): 137 kg
Pay load: 130 kg
Maximum laden weight: 267 kg
Steering angle: 36 Degree
Caster angle: 25.5 Degree', 3)
INSERT [dbo].[SSL_Description] ([Id], [LabelName], [Description], [ProductId]) VALUES (6, N'GEAR RATIOS', N'I gear: 2.917:1
II gear: 1.857:1
III gear: 1.333:1
IV gear: 1.050:1
V gear: 0.880:1
Primary reduction: 3.095:1
Final reduction: 3.385:1', 3)
INSERT [dbo].[SSL_Description] ([Id], [LabelName], [Description], [ProductId]) VALUES (10, N'Audio Option', N'Supported Audio Formats: HE-AAC, LC-AAC, MP3, Vorbis, WAV (LPCM), Opus, FLAC with support for high-resolution streams (24-bit/96KHz)
Speaker: High excursion speaker with 2” driver + dual 2” passive radiators
Far-field voice recognition supports hands-free use', 20)
INSERT [dbo].[SSL_Description] ([Id], [LabelName], [Description], [ProductId]) VALUES (11, N'Power', N'Required 16.5V, 2A included', 20)
INSERT [dbo].[SSL_Description] ([Id], [LabelName], [Description], [ProductId]) VALUES (12, N'Description', N'This device gets play songs, tackle your day, enjoy your entertainment and control your smart home using your voice, a total hands-free operation is possible with this google assistant. Entertainment will be everywhere on your command as you listen to music, shuffle playlists, audiobooks and more with Google Home’s high excursion speaker. Your whole day could be scheduled by personalizing your programs, reminders, calls, news, birthdays and more. This is also compatible with Chromecast, so you can bring down the whole world of entertainment such shows, movies and music on your TV or speakers. This smart gadget works with more than 5,000 smart home devices of over 150 brands. So there will be a great flexibility on every possibility with it.', 20)
SET IDENTITY_INSERT [dbo].[SSL_Description] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_Inventory] ON 

INSERT [dbo].[SSL_Inventory] ([Id], [ChallanDate], [ChallanRef], [InvStoreId], [VendorId], [Remarks], [ProductId], [Quantity], [CostUnitPrice], [TotalAmount], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, CAST(N'2021-06-07T00:00:00.000' AS DateTime), N'123', 1, 1, N'Tanvir', 3, CAST(10.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-07T16:51:19.823' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Inventory] ([Id], [ChallanDate], [ChallanRef], [InvStoreId], [VendorId], [Remarks], [ProductId], [Quantity], [CostUnitPrice], [TotalAmount], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, CAST(N'2021-06-07T00:00:00.000' AS DateTime), N'123', 1, 1, N'Tanvir', 4, CAST(10.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-07T16:51:29.260' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Inventory] ([Id], [ChallanDate], [ChallanRef], [InvStoreId], [VendorId], [Remarks], [ProductId], [Quantity], [CostUnitPrice], [TotalAmount], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, CAST(N'2021-06-07T00:00:00.000' AS DateTime), N'74', 1, 3, N'Zarif', 3, CAST(10.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-07T16:52:46.240' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Inventory] ([Id], [ChallanDate], [ChallanRef], [InvStoreId], [VendorId], [Remarks], [ProductId], [Quantity], [CostUnitPrice], [TotalAmount], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, CAST(N'2021-06-07T00:00:00.000' AS DateTime), N'74', 1, 3, N'Zarif', 4, CAST(10.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-07T16:52:50.550' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_InvStockSummary] ON 

INSERT [dbo].[SSL_InvStockSummary] ([Id], [InvStoreId], [ProductId], [Barcode], [ReceivedQty], [DeliveryQty], [StoreTransferQty], [SupplierReturnQty], [DamageQty], [SoldQty], [SalesReturnQty], [BalanceQty], [OCode]) VALUES (1, 1, 3, NULL, CAST(20.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(20.00 AS Numeric(18, 2)), N'8989')
INSERT [dbo].[SSL_InvStockSummary] ([Id], [InvStoreId], [ProductId], [Barcode], [ReceivedQty], [DeliveryQty], [StoreTransferQty], [SupplierReturnQty], [DamageQty], [SoldQty], [SalesReturnQty], [BalanceQty], [OCode]) VALUES (2, 1, 4, NULL, CAST(20.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(20.00 AS Numeric(18, 2)), N'8989')
INSERT [dbo].[SSL_InvStockSummary] ([Id], [InvStoreId], [ProductId], [Barcode], [ReceivedQty], [DeliveryQty], [StoreTransferQty], [SupplierReturnQty], [DamageQty], [SoldQty], [SalesReturnQty], [BalanceQty], [OCode]) VALUES (3, 1, 23, NULL, CAST(20.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(20.00 AS Numeric(18, 2)), N'8989')
SET IDENTITY_INSERT [dbo].[SSL_InvStockSummary] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_InvStore] ON 

INSERT [dbo].[SSL_InvStore] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'Central Store', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_InvStore] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_OnlineBanking] ON 

INSERT [dbo].[SSL_OnlineBanking] ([Id], [IsMobile], [Name], [AccountNumber], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, 0, N'IFIC Bank', N'564564564564', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-04-12T09:56:44.057' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_OnlineBanking] ([Id], [IsMobile], [Name], [AccountNumber], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, 1, N'bKash', N'01914141707', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-04-12T09:59:06.857' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_OnlineBanking] ([Id], [IsMobile], [Name], [AccountNumber], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, 1, N'Rocket', N'01516186112', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-04-12T10:12:25.810' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_OnlineBanking] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_Order] ON 

INSERT [dbo].[SSL_Order] ([Id], [InvoiceNo], [UserId], [PaymentTypeId], [CouponId], [RefId], [Status], [IsPaid], [TotalAmount], [AddressId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'INV20210610104536864', N'37481fbc-2395-4a88-abca-75858b4ad63e', 1, 0, N'20210604125906288', N'Pending', 0, CAST(289.75 AS Numeric(18, 2)), 1, N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-10T10:45:36.863' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Order] ([Id], [InvoiceNo], [UserId], [PaymentTypeId], [CouponId], [RefId], [Status], [IsPaid], [TotalAmount], [AddressId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'INV20210610123604606', N'37481fbc-2395-4a88-abca-75858b4ad63e', 1, 0, N'', N'Pending', 0, CAST(279.00 AS Numeric(18, 2)), 1, N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-10T12:36:04.607' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_OrderDetail] ON 

INSERT [dbo].[SSL_OrderDetail] ([Id], [OrderId], [ProductId], [Qty], [UnitPrice], [TotalAmount], [UserId]) VALUES (1, 1, 3, 1, CAST(279.00 AS Numeric(18, 2)), CAST(279.00 AS Numeric(18, 2)), N'37481fbc-2395-4a88-abca-75858b4ad63e')
INSERT [dbo].[SSL_OrderDetail] ([Id], [OrderId], [ProductId], [Qty], [UnitPrice], [TotalAmount], [UserId]) VALUES (2, 1, 4, 2, CAST(13.00 AS Numeric(18, 2)), CAST(26.00 AS Numeric(18, 2)), N'37481fbc-2395-4a88-abca-75858b4ad63e')
INSERT [dbo].[SSL_OrderDetail] ([Id], [OrderId], [ProductId], [Qty], [UnitPrice], [TotalAmount], [UserId]) VALUES (3, 2, 3, 1, CAST(279.00 AS Numeric(18, 2)), CAST(279.00 AS Numeric(18, 2)), N'37481fbc-2395-4a88-abca-75858b4ad63e')
SET IDENTITY_INSERT [dbo].[SSL_OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_OrderStatus] ON 

INSERT [dbo].[SSL_OrderStatus] ([Id], [OrderId], [Status], [Comments], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, 1, N'Processing', N'Your product is now in the processing section.', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-10T10:45:36.863' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_OrderStatus] ([Id], [OrderId], [Status], [Comments], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, 2, N'Processing', N'Your product is now in the processing section.', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-10T12:36:04.607' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_PaymentHistory] ON 

INSERT [dbo].[SSL_PaymentHistory] ([Id], [OrderId], [InvoiceNo], [PaymentTypeId], [CouponId], [RefId], [TotalAmount], [AddressId], [UserId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, 1, N'INV20210610104536864', 1, 0, N'20210604125906288', CAST(289.75 AS Numeric(18, 2)), 1, N'37481fbc-2395-4a88-abca-75858b4ad63e', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-10T10:45:40.593' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_PaymentHistory] ([Id], [OrderId], [InvoiceNo], [PaymentTypeId], [CouponId], [RefId], [TotalAmount], [AddressId], [UserId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, 2, N'INV20210610123604606', 1, 0, N'', CAST(279.00 AS Numeric(18, 2)), 1, N'37481fbc-2395-4a88-abca-75858b4ad63e', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-10T12:36:07.620' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_PaymentHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_PaymentType] ON 

INSERT [dbo].[SSL_PaymentType] ([Id], [Name], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'Cash on Delivery', N'IMG_20210415_144316.jpg', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_PaymentType] ([Id], [Name], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'bKash', N'IMG_20210415_144309.jpg', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_PaymentType] ([Id], [Name], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'Rocket', N'IMG_20210415_144310.jpg', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_PaymentType] ([Id], [Name], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, N'Nagad', N'IMG_20210415_144312.jpg', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_PaymentType] ([Id], [Name], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, N'Ucash', N'IMG_20210415_144313.jpg', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_PaymentType] ([Id], [Name], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (6, N'Visa/Mastercard', N'IMG_20210415_144314.jpg', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_PaymentType] ([Id], [Name], [ImageName], [ImagePath], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (7, N'SSLCommerz', N'IMG_20210415_144315.jpg', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_PaymentType] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_Product] ON 

INSERT [dbo].[SSL_Product] ([Id], [CategoryId], [BrandId], [Code], [Name], [Description], [ProductUnitId], [SaleUnitPrice], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, 4, 1, N'N/A', N'Broiler Whole Chicken Leg', N'Malta, a variety of orange, is a popular citrus fruit cultivated in hot climate. The fruit is rich in mineral salts and other ingredients of nutritive value such as iron, lime, phosphorus, and vital minerals. Malta is loaded with vitamin C and vitamin B complex. It is a round-shaped, medium-sized fruit, weighting an average of 145.8 gm. It has a rough-surfaced orange ringed with a segment of around 9.67 centimeters and a sweet-tasting juice content of around 33.7 per cent. The fruit is often used to make processed juice, jam, jelly and marmalade.', 2, CAST(10.00 AS Numeric(18, 2)), N'IMG_2021515_122816481.jpg', N'/Uploads', N'Approved', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Product] ([Id], [CategoryId], [BrandId], [Code], [Name], [Description], [ProductUnitId], [SaleUnitPrice], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, 1, NULL, N'P1233487', N'Cherry Pineapple', N'Malta, a variety of orange, is a popular citrus fruit cultivated in hot climate. The fruit is rich in mineral salts and other ingredients of nutritive value such as iron, lime, phosphorus, and vital minerals. Malta is loaded with vitamin C and vitamin B complex. It is a round-shaped, medium-sized fruit, weighting an average of 145.8 gm. It has a rough-surfaced orange ringed with a segment of around 9.67 centimeters and a sweet-tasting juice content of around 33.7 per cent. The fruit is often used to make processed juice, jam, jelly and marmalade.', 5, CAST(13.00 AS Numeric(18, 2)), N'IMG_20210604_154313.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Approved', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Product] ([Id], [CategoryId], [BrandId], [Code], [Name], [Description], [ProductUnitId], [SaleUnitPrice], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, 1, 6, N'N/A', N'Malta ', N'Malta, a variety of orange, is a popular citrus fruit cultivated in hot climate. The fruit is rich in mineral salts and other ingredients of nutritive value such as iron, lime, phosphorus, and vital minerals. Malta is loaded with vitamin C and vitamin B complex. It is a round-shaped, medium-sized fruit, weighting an average of 145.8 gm. It has a rough-surfaced orange ringed with a segment of around 9.67 centimeters and a sweet-tasting juice content of around 33.7 per cent. The fruit is often used to make processed juice, jam, jelly and marmalade.', 2, CAST(50.00 AS Numeric(18, 2)), N'IMG_2021515_10580484.jpg', N'/Uploads', N'Approved', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Product] ([Id], [CategoryId], [BrandId], [Code], [Name], [Description], [ProductUnitId], [SaleUnitPrice], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (6, 2, NULL, N'P1233489', N'White Bread', NULL, 2, CAST(75.00 AS Numeric(18, 2)), N'IMG_20210604_154315.jpg', N'/Uploads/IMG_20210604_154312.jpg', N'Approved', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Product] ([Id], [CategoryId], [BrandId], [Code], [Name], [Description], [ProductUnitId], [SaleUnitPrice], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (7, 2, 2, N'N/A', N'Special Brown Bread', N'Test', 2, CAST(110.00 AS Numeric(18, 2)), N'IMG_2021515_1125837.jpg', N'/Uploads', N'Approved', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Product] ([Id], [CategoryId], [BrandId], [Code], [Name], [Description], [ProductUnitId], [SaleUnitPrice], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (21, 3, NULL, N'P1233491', N'Gura Chingri', N'', 2, CAST(139.00 AS Numeric(18, 2)), N'IMG_20210604_154317.jpg', N'/Uploads', N'Approved', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Product] ([Id], [CategoryId], [BrandId], [Code], [Name], [Description], [ProductUnitId], [SaleUnitPrice], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (23, 5, 11, N'P1233492', N'Ghee', N'Ghee is a class of clarified butter that originated in ancient India. It is commonly used in cuisine of the Indian subcontinent, Middle Eastern cuisine, traditional medicine, and religious rituals.', 2, CAST(1400.00 AS Numeric(18, 2)), N'IMG_20210604_154318.jpg', N'/Uploads', N'Approved', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Product] ([Id], [CategoryId], [BrandId], [Code], [Name], [Description], [ProductUnitId], [SaleUnitPrice], [ImageName], [ImagePath], [Status], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (24, 2, 1, N'P1233493', N'Test', N'ddd', 5, CAST(1.00 AS Numeric(18, 2)), N'IMG_2021510_1593961.jpg', N'/Uploads', N'Approved', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_ProductCategory] ON 

INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'Fruits & Vegetables', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'Breakfast', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'Meat & Fish', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, N'Snacks', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, N'Dairy', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (6, N'Frozen & Canned', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (7, N'Bread & Bakery', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (8, N'Baking Needs', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (12, N'Cooking', 0, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-04-28T17:45:54.537' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductCategory] ([Id], [Name], [IsEnabled], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (13, N'Desert ', 1, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_ProductUnit] ON 

INSERT [dbo].[SSL_ProductUnit] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'KG', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductUnit] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'Litre ', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductUnit] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, N'Gm', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ProductUnit] ([Id], [Name], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, N'Pcs', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_ProductUnit] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_Reference] ON 

INSERT [dbo].[SSL_Reference] ([Id], [RefId], [Discount], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'20210604125906288', CAST(5.00 AS Numeric(18, 2)), N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-04-12T11:46:38.790' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_Reference] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_ShoppingCart] ON 

INSERT [dbo].[SSL_ShoppingCart] ([Id], [ProductId], [Qty], [UnitPrice], [TotalAmount], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (15, 3, 2, CAST(279.00 AS Numeric(18, 2)), CAST(558.00 AS Numeric(18, 2)), N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-13T13:08:46.423' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_ShoppingCart] ([Id], [ProductId], [Qty], [UnitPrice], [TotalAmount], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (16, 4, 1, CAST(13.00 AS Numeric(18, 2)), CAST(13.00 AS Numeric(18, 2)), N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-13T13:08:55.067' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_ShoppingCart] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_Specification] ON 

INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (1, N'Main Product Type', N'Motor Bike', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (2, N'Model', N'TVS Apache RTR 160 SD Racing Edition', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (3, N'Engine Type', N'4 stroke, air cooled, single cylinder OHC', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (4, N'Stroke', N'52.5 mm', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (5, N'Piston displacement', N'159.7 cc', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (6, N'Compression ratio', N'9.5 : 1', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (7, N'Carburettor', N'Ucal BS-26', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (8, N'Maximum power in kW', N'11.19(15.2 bhp)@8500 rpm', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (9, N'Maximum torque in Nm', N'13.1 @ 6000 rpm', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (10, N'Maximum Speed', N'118 km/hr', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (11, N'Starting system', N'Kick starter/Electric starter', 3)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (14, N'Power', N'Required 16.5V, 2A included', 20)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (15, N'Color', N'Body: White
Base: Slate fabric', 20)
INSERT [dbo].[SSL_Specification] ([Id], [LabelName], [Specification], [ProductId]) VALUES (16, N'Weight', N'Device: 1.05 lbs (477 g)
Power adapter: 4.58 oz (130 g)', 20)
SET IDENTITY_INSERT [dbo].[SSL_Specification] OFF
GO
INSERT [dbo].[SSL_User] ([Id], [FirstName], [LastName], [PhoneNumber], [Gender], [BirthDate], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [Token], [RefId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (N'17ee71bc-1f4f-4ef0-975a-337e7181d249', N'Admin', N'Admin', N'01914141707', N'Male', N'2021-04-27', N'admin@info.net', N'Dhaka', N'Dhaka', N'Shahbag', N'73, Plot No-3/D, 1st Floor, Kabbacosh Super Market, Dhaka 1215, Bangladesh', N'23.751428079697597,90.39426393806933', N'IMG_20200831_172211.jpg', NULL, NULL, N'20210427121436678', N'e75ed516-a4ba-414b-904c-2680acb9ba20', CAST(N'2021-04-27T12:14:36.680' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_User] ([Id], [FirstName], [LastName], [PhoneNumber], [Gender], [BirthDate], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [Token], [RefId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (N'83089b52-6054-4267-b799-42d71717c52b', N'Mustofa', N'Kamal', N'+8801914141707', N'Male', N'10-10-1900', N'kamal@gmail.com', N'Dhaka', N'Dhaka', N'Dhaka Cantonment', N'Dhaka Cantonment, Dhaka -1206', N'23.822325984330135, 90.39277644616585', N'IMG_20200831_172211.jpg', N'/Uploads/IMG_20210604_154312.jpg', NULL, N'20210604125906287', N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_User] ([Id], [FirstName], [LastName], [PhoneNumber], [Gender], [BirthDate], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [Token], [RefId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (N'37481fbc-2395-4a88-abca-75858b4ad63e', N'Subra', N'Systems Ltd.', N'02-9145938', N'Male', N'2021-04-11', N'subrainfo@info.net', N'Dhaka', N'Dhaka', N'Mirpur', N'Hasney Tower, Level 10, 3/A, Dhaka 1215', N'23.75155824455005,90.39485332826229', N'IMG_20200831_172211.jpg', N'okhttp3.ResponseBody$1@bba214a', NULL, N'20210604125906288', N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-04-12T11:05:10.637' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_User] ([Id], [FirstName], [LastName], [PhoneNumber], [Gender], [BirthDate], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [Token], [RefId], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (N'7d111b31-681a-4e79-bead-aa272a3c3280', N'MASUM', N'RANA', N'+8801613377238', N'Male', N'29-04-2021 20:58:59::528', N'my_masum@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'7d111b31-681a-4e79-bead-aa272a3c3280', CAST(N'2021-04-29T20:59:00.930' AS DateTime), NULL, NULL, N'8989')
GO
SET IDENTITY_INSERT [dbo].[SSL_UserBalance] ON 

INSERT [dbo].[SSL_UserBalance] ([Id], [OrderId], [UserId], [Balance], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, 1, N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(15.25 AS Numeric(18, 2)), N'37481fbc-2395-4a88-abca-75858b4ad63e', CAST(N'2021-06-10T10:45:40.593' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_UserBalance] OFF
GO
SET IDENTITY_INSERT [dbo].[SSL_Vendor] ON 

INSERT [dbo].[SSL_Vendor] ([Id], [Name], [ContactPerson], [PhoneNumber], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [PersonImageName], [PersonImagePath], [Status], [Token], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (1, N'Tanvir Hossain', N'Tanvir Hossain', N'+880248120097', N'tanvir@subrasystems.com', N'Dhaka', N'Dhaka', N'Dhaka Cantonment', N'Hasney Tower, Level 10, 3/A kawran Bazar C/A,Tejgaon, Dhaka 1215, Bangladesh', N'23.751428079697597,90.39426393806933', N'IMG_20210605_144311.jpg', N'/Uploads', N'IMG_20210427_134755_160.jpg', N'/Uploads', N'Approved', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Vendor] ([Id], [Name], [ContactPerson], [PhoneNumber], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [PersonImageName], [PersonImagePath], [Status], [Token], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (2, N'MK Grocery Shop', N'Mustofa Kamal', N'+8801914141707', N'mk@gmail.com', N'Dhaka', N'Dhaka', N'Shahbag', N'73, Plot No-3/D, 1st Floor, Kabbacosh Super Market, Dhaka 1215, Bangladesh', N'23.751428079697597,90.39426393806933', N'IMG_20200831_172210.png', N'/Uploads/', N'IMG_20210427_134755_160.jpg', N'/Uploads/', N'Approved', NULL, N'9d79cd29-086d-4b73-ab19-74612a2dd426', CAST(N'2021-04-27T13:48:51.547' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Vendor] ([Id], [Name], [ContactPerson], [PhoneNumber], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [PersonImageName], [PersonImagePath], [Status], [Token], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (3, N'Digital Grocery Shop', N'Shahid Khan', N'+8801914141707', N'icenter@gmail.com', N'Dhaka', N'Jhalokati', N'Bhashantek', N'73, Plot No-3/D, 1st Floor, Kabbacosh Super Market, Dhaka 1215, Bangladesh', N'23.751428079697597,90.39426393806933', N'IMG_20210605_144324.jpg', N'/Uploads/', NULL, N'/Uploads/', N'Approved', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-04-28T17:45:42.453' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Vendor] ([Id], [Name], [ContactPerson], [PhoneNumber], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [PersonImageName], [PersonImagePath], [Status], [Token], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (4, N'MASUM RANA', N'mmr', N'+8801613377238', N'masum.rana@subrasystems.com', N'Dhaka', N'Dhaka', N'Banani', N'73, Plot No-3/D, 1st Floor, Kabbacosh Super Market, Dhaka 1215, Bangladesh', N'23.751429614091194,90.39426393806933', N'IMG_20210429_142337_993.jpg', N'/Uploads/', NULL, N'/Uploads/', N'Approved', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-04-29T14:24:06.643' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Vendor] ([Id], [Name], [ContactPerson], [PhoneNumber], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [PersonImageName], [PersonImagePath], [Status], [Token], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (5, N'মিষ্টি দি অরিজিনাল টাংগাইল', N'Amena Afrin', N'01719120833', N'', N'Dhaka', N'Dhaka', N'Dhaka Cantonment', N'Tangail. ', N'23.751428079697597,90.39426393806933', N'IMG_202156_155119129.jpg', N'/Uploads', NULL, N'/Uploads', N'Approved', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
INSERT [dbo].[SSL_Vendor] ([Id], [Name], [ContactPerson], [PhoneNumber], [Email], [Division], [District], [PoliceStation], [Address], [Location], [ImageName], [ImagePath], [PersonImageName], [PersonImagePath], [Status], [Token], [CreateUser], [CreateDate], [EditUser], [EditDate], [OCode]) VALUES (6, N'Tanvir Hossain', N'Tanvir Hossain', N'+880248120097', N'tanvir@subrasystems.com', N'Dhaka', N'Dhaka', N'Dhaka Cantonment', N'Hasney Tower, Level 10, 3/A kawran Bazar C/A,Tejgaon, Dhaka 1215, Bangladesh', N'23.751428079697597,90.39426393806933', N'IMG_2021510_15415823.jpg', N'/Uploads', N'IMG_2021510_15419922.jpg', N'/Uploads', N'Approved', NULL, N'17ee71bc-1f4f-4ef0-975a-337e7181d249', CAST(N'2021-06-04T12:59:06.287' AS DateTime), NULL, NULL, N'8989')
SET IDENTITY_INSERT [dbo].[SSL_Vendor] OFF
GO
ALTER TABLE [dbo].[SSL_Authenticate] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SSL_Brand] ADD  CONSTRAINT [DF_SSL_Brand_Status]  DEFAULT (N'Pending') FOR [Status]
GO
ALTER TABLE [dbo].[SSL_CampaignBrand] ADD  CONSTRAINT [DF_SSL_CampaignBrand_CampBrandCategoryId]  DEFAULT ((0)) FOR [CampBrandCategoryId]
GO
ALTER TABLE [dbo].[SSL_CampaignProduct] ADD  CONSTRAINT [DF_SSL_CampaignProduct_CampProductCategoryId]  DEFAULT ((0)) FOR [CampProductCategoryId]
GO
ALTER TABLE [dbo].[SSL_Coupon] ADD  CONSTRAINT [DF_SSL_Coupon_Discount]  DEFAULT ((0.0)) FOR [Discount]
GO
ALTER TABLE [dbo].[SSL_DeliveryType] ADD  CONSTRAINT [DF_SSL_DeliveryType_Discount]  DEFAULT ((0.0)) FOR [Cost]
GO
ALTER TABLE [dbo].[SSL_Inventory] ADD  CONSTRAINT [DF_SSL_Inventory_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[SSL_Inventory] ADD  CONSTRAINT [DF_Table_1_SaleUnitPrice1]  DEFAULT ((0.0)) FOR [CostUnitPrice]
GO
ALTER TABLE [dbo].[SSL_Inventory] ADD  CONSTRAINT [DF_SSL_Inventory_SaleUnitPrice1]  DEFAULT ((0.0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[SSL_InvStockSummary] ADD  CONSTRAINT [DF_SSL_InvStockSummary_ReceivedQty]  DEFAULT ((0.0)) FOR [ReceivedQty]
GO
ALTER TABLE [dbo].[SSL_InvStockSummary] ADD  CONSTRAINT [DF_SSL_InvStockSummary_DelivaryQty]  DEFAULT ((0.0)) FOR [DeliveryQty]
GO
ALTER TABLE [dbo].[SSL_InvStockSummary] ADD  CONSTRAINT [DF_Table_1_StoreReturnQty]  DEFAULT ((0.0)) FOR [StoreTransferQty]
GO
ALTER TABLE [dbo].[SSL_InvStockSummary] ADD  CONSTRAINT [DF_SSL_InvStockSummary_SupplierReturnQty]  DEFAULT ((0.0)) FOR [SupplierReturnQty]
GO
ALTER TABLE [dbo].[SSL_InvStockSummary] ADD  CONSTRAINT [DF_SSL_InvStockSummary_DamageQty]  DEFAULT ((0.0)) FOR [DamageQty]
GO
ALTER TABLE [dbo].[SSL_InvStockSummary] ADD  CONSTRAINT [DF_SSL_InvStockSummary_SoldQty]  DEFAULT ((0.0)) FOR [SoldQty]
GO
ALTER TABLE [dbo].[SSL_InvStockSummary] ADD  CONSTRAINT [DF_SSL_InvStockSummary_SalesReturnQty]  DEFAULT ((0.0)) FOR [SalesReturnQty]
GO
ALTER TABLE [dbo].[SSL_InvStockSummary] ADD  CONSTRAINT [DF_SSL_InvStockSummary_BalanceQty]  DEFAULT ((0.0)) FOR [BalanceQty]
GO
ALTER TABLE [dbo].[SSL_Order] ADD  CONSTRAINT [DF_SSL_Order_Status]  DEFAULT (N'Pending') FOR [Status]
GO
ALTER TABLE [dbo].[SSL_Order] ADD  CONSTRAINT [DF_SSL_Order_IsPaid]  DEFAULT ((0)) FOR [IsPaid]
GO
ALTER TABLE [dbo].[SSL_Order] ADD  CONSTRAINT [DF_SSL_Order_TotalAmount]  DEFAULT ((0.0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[SSL_OrderDetail] ADD  CONSTRAINT [DF_SSL_OrderProduct_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[SSL_OrderDetail] ADD  CONSTRAINT [DF_SSL_OrderProduct_UnitPrice]  DEFAULT ((0.0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[SSL_OrderDetail] ADD  CONSTRAINT [DF_SSL_OrderProduct_TotalAmount]  DEFAULT ((0.0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[SSL_Product] ADD  CONSTRAINT [DF_SSL_Product_CategoryId]  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[SSL_Product] ADD  CONSTRAINT [DF_SSL_Product_SaleUnitPrice]  DEFAULT ((0.0)) FOR [SaleUnitPrice]
GO
ALTER TABLE [dbo].[SSL_Product] ADD  CONSTRAINT [DF_SSL_Product_Status]  DEFAULT (N'Pending') FOR [Status]
GO
ALTER TABLE [dbo].[SSL_ProductCategory] ADD  CONSTRAINT [DF_SSL_ProductCategory_Status]  DEFAULT ((1)) FOR [IsEnabled]
GO
ALTER TABLE [dbo].[SSL_Reference] ADD  CONSTRAINT [DF_SSL_Reference_Discount]  DEFAULT ((0.0)) FOR [Discount]
GO
ALTER TABLE [dbo].[SSL_ShoppingCart] ADD  CONSTRAINT [DF_SSL_ShoppingCart_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[SSL_ShoppingCart] ADD  CONSTRAINT [DF_SSL_ShoppingCart_UnitPrice]  DEFAULT ((0.0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[SSL_ShoppingCart] ADD  CONSTRAINT [DF_SSL_ShoppingCart_TotalAmount]  DEFAULT ((0.0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[SSL_User] ADD  CONSTRAINT [DF__SSL_User__Id__2C3393D0]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SSL_UserBalance] ADD  CONSTRAINT [DF_Table_1_UnitPrice]  DEFAULT ((0.0)) FOR [Balance]
GO
ALTER TABLE [dbo].[SSL_Vendor] ADD  CONSTRAINT [DF_SSL_Vendor_Status]  DEFAULT (N'Pending') FOR [Status]
GO
/****** Object:  StoredProcedure [dbo].[ChallanSummary_Lists]    Script Date: 9/8/2021 4:40:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChallanSummary_Lists]

AS
BEGIN

		select 
			i.ChallanDate ,
			i.ChallanRef, 
			i.VendorId, 
			v.Name as VendorName,
			i.Remarks,
			sum(i.TotalAmount ) as TotalAmount

		from SSL_Inventory as i
		left outer join SSL_Vendor as v on i.VendorId = v.Id

		group by  i.ChallanDate, i.VendorId, v.Name, i.ChallanRef,i.Remarks
	
	END


GO
