USE [DemoPractical]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 7/13/2020 11:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[AddressLine1] [nvarchar](2000) NULL,
	[AddressLine2] [nvarchar](2000) NULL,
	[State] [nvarchar](250) NULL,
	[Pincode] [nvarchar](50) NULL,
	[City] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](250) NULL,
	[CompanyName] [nvarchar](250) NULL,
	[EmailId] [nvarchar](250) NULL,
	[MobileNo] [nvarchar](250) NULL,
	[PaymentTermsId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[PurchaseOrder] [nvarchar](250) NULL,
	[InvoiceDate] [date] NULL,
	[PaymentTermsId] [int] NULL,
	[SalesTaxRate] [float] NULL,
	[Discount] [float] NULL,
	[Comments] [nvarchar](2000) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentTerms]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTerms](
	[PaymentTermsId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_PaymentTerms] PRIMARY KEY CLUSTERED 
(
	[PaymentTermsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Address] ON 

GO
INSERT [dbo].[Address] ([AddressId], [CustomerId], [AddressLine1], [AddressLine2], [State], [Pincode], [City], [IsActive], [CreatedOn], [UpdatedOn]) VALUES (1, 1, N'test', N'test', N'test', N'400701', N'test', 0, CAST(N'2020-07-12 18:58:31.623' AS DateTime), CAST(N'2020-07-12 19:15:48.310' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

GO
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [CompanyName], [EmailId], [MobileNo], [PaymentTermsId], [IsActive], [CreatedOn], [UpdatedOn]) VALUES (1, N'Ayushi Arora', N'test', N'aaayushiarora17@gmail.com', N'999999999', 3, 1, CAST(N'2020-07-12 18:58:31.620' AS DateTime), CAST(N'2020-07-12 19:15:48.310' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

GO
INSERT [dbo].[Invoice] ([InvoiceId], [CustomerId], [PurchaseOrder], [InvoiceDate], [PaymentTermsId], [SalesTaxRate], [Discount], [Comments], [IsActive], [CreatedOn], [UpdatedOn]) VALUES (1, 1, N'test', CAST(N'2020-11-22' AS Date), 2, 89, 89, N'test', 1, CAST(N'2020-07-12 19:24:44.050' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTerms] ON 

GO
INSERT [dbo].[PaymentTerms] ([PaymentTermsId], [Title], [IsActive], [CreatedOn], [UpdatedOn]) VALUES (1, N'Due upon Completion', 1, CAST(N'2020-07-11 20:43:00.257' AS DateTime), NULL)
GO
INSERT [dbo].[PaymentTerms] ([PaymentTermsId], [Title], [IsActive], [CreatedOn], [UpdatedOn]) VALUES (2, N'15 Days', 1, CAST(N'2020-07-11 20:43:00.257' AS DateTime), NULL)
GO
INSERT [dbo].[PaymentTerms] ([PaymentTermsId], [Title], [IsActive], [CreatedOn], [UpdatedOn]) VALUES (3, N'28 Days', 1, CAST(N'2020-07-11 20:43:00.257' AS DateTime), NULL)
GO
INSERT [dbo].[PaymentTerms] ([PaymentTermsId], [Title], [IsActive], [CreatedOn], [UpdatedOn]) VALUES (4, N'30 Days', 1, CAST(N'2020-07-11 20:43:00.257' AS DateTime), NULL)
GO
INSERT [dbo].[PaymentTerms] ([PaymentTermsId], [Title], [IsActive], [CreatedOn], [UpdatedOn]) VALUES (5, N'60 Days', 1, CAST(N'2020-07-11 20:43:00.257' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[PaymentTerms] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_customer_insert]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_customer_insert]
@CustomerName nvarchar(250),
@CompanyName nvarchar(250),
@EmailId nvarchar(250),
@MobileNo nvarchar(250),
@PaymentTermsId int,
@addressLine1 nvarchar(2000),
@addressLine2 nvarchar(2000),
@state nvarchar(250),
@pincode nvarchar(50),
@city nvarchar(250),
@IsActive bit
AS
BEGIN

DECLARE @customerId INT
INSERT INTO [dbo].[Customer]
           ([CustomerName]
           ,[CompanyName]
           ,[EmailId]
           ,[MobileNo]
           ,[PaymentTermsId]
           ,[IsActive]
           ,[CreatedOn])
     VALUES
           (@CustomerName
           ,@CompanyName
           ,@EmailId
           ,@MobileNo
           ,@PaymentTermsId
           ,@IsActive
           ,GETDATE())

   SELECT @customerId=SCOPE_IDENTITY()

INSERT INTO [dbo].[Address]
           ([CustomerId]
           ,[AddressLine1]
           ,[AddressLine2]
           ,[State]
           ,[Pincode]
           ,[City]
           ,[IsActive]
           ,[CreatedOn])
     VALUES
           (@customerId
           ,@addressLine1
           ,@addressLine1
           ,@state
           ,@pincode
           ,@city
           ,@isActive
           ,GETDATE()
           )
END



GO
/****** Object:  StoredProcedure [dbo].[sp_customer_select]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_customer_select]
AS
BEGIN
SELECT [CustomerId]
      ,[CustomerName]
      ,[CompanyName]
      ,[EmailId]
      ,[MobileNo]
      ,[PaymentTermsId]
      ,[IsActive]
      ,[CreatedOn]
      ,[UpdatedOn]
  FROM [dbo].[Customer]
  

END



GO
/****** Object:  StoredProcedure [dbo].[sp_customer_select_by_id]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_customer_select_by_id]
@CustomerId int
AS
BEGIN
SELECT c.[CustomerId]
      ,c.[CustomerName]
      ,c.[CompanyName]
      ,c.[EmailId]
      ,c.[MobileNo]
      ,c.[PaymentTermsId]
      ,c.[IsActive]
	  ,a.[AddressLine1]
      ,a.[AddressLine2]
      ,a.[State]
      ,a.[Pincode]
      ,a.[City]
  FROM [dbo].[Customer] c
inner join Address a on a.CustomerId=c.CustomerId
where c.CustomerId=@CustomerId

END



GO
/****** Object:  StoredProcedure [dbo].[sp_customer_select_dropdown]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_customer_select_dropdown]
AS
BEGIN
SELECT [CustomerId]
      ,[CustomerName]+ '-->' +[CompanyName] As CustomerName

  FROM [dbo].[Customer]
  where IsActive=1

END



GO
/****** Object:  StoredProcedure [dbo].[sp_customer_update]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_customer_update]
@CustomerId int,
@CustomerName nvarchar(250),
@CompanyName nvarchar(250),
@EmailId nvarchar(250),
@MobileNo nvarchar(250),
@PaymentTermsId int,
@addressLine1 nvarchar(2000),
@addressLine2 nvarchar(2000),
@state nvarchar(250),
@pincode nvarchar(50),
@city nvarchar(250),
@IsActive bit
AS
BEGIN
UPDATE [dbo].[Customer]
   SET [CustomerName] = @CustomerName
      ,[CompanyName] = @CompanyName
      ,[EmailId] = @EmailId
      ,[MobileNo] = @MobileNo
      ,[PaymentTermsId] = @PaymentTermsId
      ,[IsActive] = @IsActive
      ,[UpdatedOn] = getdate() 
 WHERE CustomerId=@CustomerId

 UPDATE [dbo].[Address]
   SET 
	   [AddressLine1] = @addressLine1
      ,[AddressLine2] = @addressLine2
      ,[State] = @state
      ,[Pincode] = @pincode
      ,[City] = @city
      ,[IsActive] = @isActive
      ,[UpdatedOn] = GETDATE()
 WHERE [CustomerId] = @customerId 

END



GO
/****** Object:  StoredProcedure [dbo].[sp_invoice_insert]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_invoice_insert]
@CustomerId int,
@PurchaseOrder  nvarchar(250),
@InvoiceDate date,
@PaymentTermsId int,
@SalesTaxRate float,
@Discount float,
@Comments nvarchar(2000),
@IsActive bit
AS
BEGIN
INSERT INTO [dbo].[Invoice]
           ([CustomerId]
           ,[PurchaseOrder]
           ,[InvoiceDate]
           ,[PaymentTermsId]
           ,[SalesTaxRate]
           ,[Discount]
           ,[Comments]
           ,[IsActive]
           ,[CreatedOn])
     VALUES
           (@CustomerId
           ,@PurchaseOrder
           ,@InvoiceDate
           ,@PaymentTermsId
           ,@SalesTaxRate
           ,@Discount
           ,@Comments
           ,@IsActive
           ,GETDATE())
END



GO
/****** Object:  StoredProcedure [dbo].[sp_invoice_preview_by_id]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[sp_invoice_preview_by_id]
@InvoiceId int
AS
BEGIN
SELECT i.[InvoiceId] as InvoiceId
      ,i.[PurchaseOrder] as PurchaseOrder 
      ,CAST(i.[InvoiceDate] as nvarchar(250)) as InvoiceDate
      ,i.[SalesTaxRate] as SalesTaxRate
      ,i.[Discount] as Discount
      ,i.[Comments] as  Comments
	  ,c.CompanyName as CompanyName
	  ,c.CustomerName as CustomerName
	  ,c.EmailId as EmailId
	  ,c.MobileNo as MobileNo
	  ,a.AddressLine1 as  AddressLine1
	  ,a.AddressLine2 as  AddressLine2
	  ,a.City as  City
	  ,a.State as  State
	  ,a.Pincode as Pincode
  FROM [dbo].[Invoice] i
  INNER JOIN Customer c 
	ON i.CustomerId=c.CustomerId
  INNER JOIN Address a 
	ON a.CustomerId=c.CustomerId
  WHERE InvoiceId=@InvoiceId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_invoice_select]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_invoice_select]

AS
BEGIN
SELECT [InvoiceId]
      ,c.CompanyName as CompanyName
	  ,c.CustomerName as CustomerName
      ,[PurchaseOrder]
      ,CAST([InvoiceDate] as nvarchar(250)) as InvoiceDate
  FROM [dbo].[Invoice] i
  inner join Customer c
  on c.CustomerId=i.CustomerId

END



GO
/****** Object:  StoredProcedure [dbo].[sp_invoice_select_by_id]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_invoice_select_by_id]
@InvoiceId int
AS
BEGIN
SELECT [InvoiceId]
      ,[CustomerId]
      ,[PurchaseOrder]
      ,[InvoiceDate]
      ,[PaymentTermsId]
      ,[SalesTaxRate]
      ,[Discount]
      ,[Comments]
      ,[IsActive]
      ,[CreatedOn]
      ,[UpdatedOn]
  FROM [dbo].[Invoice]
  WHERE InvoiceId=@InvoiceId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_invoice_update]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_invoice_update]
@InvoiceId int,
@CustomerId int,
@PurchaseOrder  nvarchar(250),
@InvoiceDate date,
@PaymentTermsId int,
@SalesTaxRate float,
@Discount float,
@Comments nvarchar(2000),
@IsActive bit
AS
BEGIN
UPDATE [dbo].[Invoice]
   SET [CustomerId] = @CustomerId
      ,[PurchaseOrder] = @PurchaseOrder
      ,[InvoiceDate] = @InvoiceDate
      ,[PaymentTermsId] = @PaymentTermsId
      ,[SalesTaxRate] = @SalesTaxRate
      ,[Discount] = @Discount
      ,[Comments] = @Comments
      ,[IsActive] = @IsActive
      ,[UpdatedOn] = getdate()
 WHERE InvoiceId=@InvoiceId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_PaymentTerms_select]    Script Date: 7/13/2020 11:21:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_PaymentTerms_select]
AS
BEGIN
SELECT [PaymentTermsId]
      ,[Title]
      ,[IsActive]
      ,[CreatedOn]
      ,[UpdatedOn]
  FROM [dbo].[PaymentTerms]
END



GO
