CREATE TABLE [Sales].[Customers_Old]
(
[CustomerID] [int] NOT NULL,
[CustomerName] [nvarchar] (100) COLLATE Latin1_General_100_CI_AS NOT NULL,
[BillToCustomerID] [int] NOT NULL,
[CustomerCategoryID] [int] NOT NULL,
[BuyingGroupID] [int] NULL,
[PrimaryContactPersonID] [int] NOT NULL,
[AlternateContactPersonID] [int] NULL,
[DeliveryMethodID] [int] NOT NULL,
[DeliveryCityID] [int] NOT NULL,
[PostalCityID] [int] NOT NULL,
[CreditLimit] [decimal] (18, 2) NULL,
[AccountOpenedDate] [date] NOT NULL,
[StandardDiscountPercentage] [decimal] (18, 3) NOT NULL,
[IsStatementSent] [bit] NOT NULL,
[IsOnCreditHold] [bit] NOT NULL,
[PaymentDays] [int] NOT NULL,
[PhoneNumber] [nvarchar] (20) COLLATE Latin1_General_100_CI_AS NOT NULL,
[FaxNumber] [nvarchar] (20) COLLATE Latin1_General_100_CI_AS NOT NULL,
[DeliveryRun] [nvarchar] (5) COLLATE Latin1_General_100_CI_AS NULL,
[RunPosition] [nvarchar] (5) COLLATE Latin1_General_100_CI_AS NULL,
[WebsiteURL] [nvarchar] (256) COLLATE Latin1_General_100_CI_AS NOT NULL,
[DeliveryAddressLine1] [nvarchar] (60) COLLATE Latin1_General_100_CI_AS NOT NULL,
[DeliveryAddressLine2] [nvarchar] (60) COLLATE Latin1_General_100_CI_AS NULL,
[DeliveryPostalCode] [nvarchar] (10) COLLATE Latin1_General_100_CI_AS NOT NULL,
[DeliveryLocation] [sys].[geography] NULL,
[PostalAddressLine1] [nvarchar] (60) COLLATE Latin1_General_100_CI_AS NOT NULL,
[PostalAddressLine2] [nvarchar] (60) COLLATE Latin1_General_100_CI_AS NULL,
[PostalPostalCode] [nvarchar] (10) COLLATE Latin1_General_100_CI_AS NOT NULL,
[LastEditedBy] [int] NOT NULL,
[ValidFrom] [datetime2] GENERATED ALWAYS AS ROW START NOT NULL,
[ValidTo] [datetime2] GENERATED ALWAYS AS ROW END NOT NULL,
PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)
) ON [USERDATA]
GO
ALTER TABLE [Sales].[Customers_Old] ADD CONSTRAINT [PK_Sales_Customers_Old] PRIMARY KEY CLUSTERED  ([CustomerID]) ON [USERDATA]
GO
ALTER TABLE [Sales].[Customers_Old] ADD CONSTRAINT [UQ_Sales_Customers_CustomerName_Old] UNIQUE NONCLUSTERED  ([CustomerName]) ON [USERDATA]
GO
