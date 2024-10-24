USE [MMJOperations]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllocationPeriods]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllocationPeriods](
	[Id] [uniqueidentifier] NOT NULL,
	[DonationAllocationDetailId] [uniqueidentifier] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Date] [datetime2](7) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_AllocationPeriods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[RoleId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[Salt] [nvarchar](500) NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsersExp]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsersExp](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[RoleId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[Salt] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[RoleId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Salt] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Beneficiaries]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beneficiaries](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [int] NULL,
	[District] [int] NULL,
	[Email1] [nvarchar](max) NULL,
	[FaceBookId] [nvarchar](max) NULL,
	[InstitutionName] [nvarchar](max) NULL,
	[InstitutionAddress] [nvarchar](max) NULL,
	[Class] [nvarchar](max) NULL,
	[MajorSubject] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[ProjectId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[BeneficiaryType] [nvarchar](max) NULL,
	[BeneficiaryCode] [nvarchar](max) NULL,
	[ApplicationLink] [nvarchar](max) NULL,
	[Email2] [nvarchar](50) NULL,
	[MobileBankingNumber] [nvarchar](50) NULL,
	[MobileBankingType] [nvarchar](50) NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Beneficiaries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonDatas]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonDatas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
	[PayoutDate] [datetime2](7) NULL,
	[DonationDate] [datetime2](7) NOT NULL,
	[DonorFirstName] [nvarchar](max) NULL,
	[DonorLastName] [nvarchar](max) NULL,
	[DonorEmail] [nvarchar](max) NULL,
	[ProgramName] [nvarchar](max) NULL,
	[ReferenceInformation] [nvarchar](max) NULL,
	[CurrencyCode] [nvarchar](max) NULL,
	[GrossAmount] [decimal](18, 2) NULL,
	[TotalFees] [decimal](18, 2) NULL,
	[NetAmount] [decimal](18, 2) NULL,
	[TransactionID] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[Project] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[Activity] [nvarchar](max) NULL,
	[DonationFrequency] [nvarchar](max) NULL,
	[ProjectRemoteID] [nvarchar](max) NULL,
	[CauseSupportFee] [decimal](18, 2) NULL,
	[Description] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
	[BankName] [nvarchar](max) NULL,
	[ShippingandHandlingAmount] [decimal](18, 2) NOT NULL,
	[BankAccount] [nvarchar](max) NULL,
	[InvoiceID] [nvarchar](max) NULL,
	[SalesTax] [decimal](18, 2) NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[FileLocation] [nvarchar](max) NULL,
	[ReferenceNote] [nvarchar](max) NULL,
	[DBProjectId] [uniqueidentifier] NULL,
	[ProjectName] [nvarchar](max) NULL,
	[DBDonorId] [uniqueidentifier] NULL,
	[DonorName] [nvarchar](max) NULL,
	[DBBeneficiaryId] [uniqueidentifier] NULL,
	[BeneficiaryName] [nvarchar](max) NULL,
	[DBTransactionId] [uniqueidentifier] NULL,
	[CurrencyRate] [decimal](18, 2) NOT NULL,
	[CurrencyType] [nvarchar](max) NULL,
	[DonorCode] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[ConvertedAmount] [decimal](18, 2) NULL,
	[IsDebitAmount] [bit] NULL,
	[IsSendToAllocation] [bit] NULL,
	[Note] [nvarchar](max) NULL,
	[DonorMatchedNumber] [int] NULL,
	[DonationAllocationId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_CommonDatas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Symbol] [nvarchar](max) NULL,
	[DecimalDigits] [int] NOT NULL,
	[Rate] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Currencies_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[id] [int] NOT NULL,
	[division_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[bn_name] [nvarchar](50) NOT NULL,
	[lat] [decimal](10, 7) NOT NULL,
	[long] [decimal](10, 7) NOT NULL,
 CONSTRAINT [PK__BD_Distr__3213E83F426BFF06] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonationAllocationDetails]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonationAllocationDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectId] [uniqueidentifier] NULL,
	[DonorId] [uniqueidentifier] NULL,
	[BeneficiaryId] [uniqueidentifier] NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[DonationAllocationId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[RateAmount] [decimal](18, 2) NOT NULL,
	[RemainingAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_DonationAllocationDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonationAllocations]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonationAllocations](
	[Id] [uniqueidentifier] NOT NULL,
	[Purpose] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[AllocationType] [int] NOT NULL,
	[DonationReferenceId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[RemainingAmount] [decimal](18, 2) NOT NULL,
	[AllocationStatus] [int] NOT NULL,
	[CurrencyRate] [decimal](18, 2) NOT NULL,
	[CurrencyType] [nvarchar](max) NULL,
	[ExactAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_DonationAllocations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donors]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donors](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[FacebookId] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[DonorCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_Donors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ledgers]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ledgers](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LegderType] [int] NOT NULL,
	[LedgerCode] [int] NOT NULL,
	[ParentLedgerId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Ledgers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Programs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectDetails]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[BeneficiaryId] [uniqueidentifier] NOT NULL,
	[BeneficiaryJoiningDate] [datetime2](7) NULL,
	[DonorId] [uniqueidentifier] NULL,
	[DonorJoiningDate] [datetime2](7) NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[EstimatedAmount] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[BeneficiaryStatus] [int] NOT NULL,
 CONSTRAINT [PK_ProjectDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ProjectPurpose] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Notes] [nvarchar](max) NULL,
	[ProgramId] [int] NULL,
	[ProjectMasterId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[StartDate] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
	[DefaultAmount] [decimal](18, 2) NULL,
	[DisburseType] [nvarchar](max) NULL,
	[ProjectStatus] [nvarchar](max) NULL,
	[ProjectCode] [nvarchar](max) NULL,
	[Year] [nvarchar](max) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raihan]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raihan](
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raihan_02]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raihan_02](
	[First Name] [nvarchar](50) NULL,
	[Last Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StipendDetails]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StipendDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[TransactionDate] [datetime2](7) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[ProjectId] [uniqueidentifier] NULL,
	[DonationReferenceId] [uniqueidentifier] NULL,
	[BeneficiaryId] [uniqueidentifier] NULL,
	[ApplicationId] [uniqueidentifier] NULL,
	[Notes] [nvarchar](max) NULL,
	[StipendStatus] [int] NOT NULL,
	[TransationType] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_StipendDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionDetails]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[TransactionType] [int] NOT NULL,
	[TransactionAccountType] [int] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[TransactionMasterId] [uniqueidentifier] NOT NULL,
	[LedgerId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TransactionDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionMasters]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionMasters](
	[Id] [uniqueidentifier] NOT NULL,
	[TransactionType] [int] NOT NULL,
	[TransactionDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[AllocationDetailId] [uniqueidentifier] NULL,
	[AllocationPeriodId] [uniqueidentifier] NULL,
	[ProjectId] [uniqueidentifier] NULL,
	[BeneficiaryId] [uniqueidentifier] NULL,
	[DonorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TransactionMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Upazilas]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Upazilas](
	[id] [int] NOT NULL,
	[district_id] [int] NULL,
	[name] [varchar](255) NULL,
	[bn_name] [nvarchar](255) NULL,
 CONSTRAINT [PK__Upazilas__3213E83FA6514B8E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users1]    Script Date: 10/21/2024 3:42:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users1](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[EmailAddress] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[RoleId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Users1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommonDatas] ADD  CONSTRAINT [DF__CommonDat__Curre__6FB49575]  DEFAULT ((0.0)) FOR [CurrencyRate]
GO
ALTER TABLE [dbo].[CommonDatas] ADD  CONSTRAINT [DF_CommonDatas_ConvertedAmount]  DEFAULT ((0)) FOR [ConvertedAmount]
GO
ALTER TABLE [dbo].[CommonDatas] ADD  CONSTRAINT [DF_CommonDatas_IsDebitAmount]  DEFAULT ((0)) FOR [IsDebitAmount]
GO
ALTER TABLE [dbo].[CommonDatas] ADD  CONSTRAINT [DF_CommonDatas_IsSendToAllocation]  DEFAULT ((0)) FOR [IsSendToAllocation]
GO
ALTER TABLE [dbo].[CommonDatas] ADD  CONSTRAINT [DF_CommonDatas_DonorMatchedNumber]  DEFAULT ((0)) FOR [DonorMatchedNumber]
GO
ALTER TABLE [dbo].[Currencies] ADD  CONSTRAINT [DF_Currencies_Rate]  DEFAULT ((0)) FOR [Rate]
GO
ALTER TABLE [dbo].[DonationAllocationDetails] ADD  DEFAULT ((0.0)) FOR [RateAmount]
GO
ALTER TABLE [dbo].[DonationAllocationDetails] ADD  DEFAULT ((0.0)) FOR [RemainingAmount]
GO
ALTER TABLE [dbo].[DonationAllocations] ADD  DEFAULT ((0.0)) FOR [Amount]
GO
ALTER TABLE [dbo].[DonationAllocations] ADD  DEFAULT ((0.0)) FOR [RemainingAmount]
GO
ALTER TABLE [dbo].[DonationAllocations] ADD  DEFAULT ((0)) FOR [AllocationStatus]
GO
ALTER TABLE [dbo].[DonationAllocations] ADD  DEFAULT ((0.0)) FOR [CurrencyRate]
GO
ALTER TABLE [dbo].[DonationAllocations] ADD  DEFAULT ((0.0)) FOR [ExactAmount]
GO
ALTER TABLE [dbo].[Donors] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Ledgers] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[ProjectDetails] ADD  DEFAULT ((0)) FOR [BeneficiaryStatus]
GO
ALTER TABLE [dbo].[Projects] ADD  CONSTRAINT [DF__Projects__Status__01142BA1]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[AllocationPeriods]  WITH NOCHECK ADD  CONSTRAINT [FK_AllocationPeriods_DonationAllocationDetails_DonationAllocationDetailId] FOREIGN KEY([DonationAllocationDetailId])
REFERENCES [dbo].[DonationAllocationDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AllocationPeriods] NOCHECK CONSTRAINT [FK_AllocationPeriods_DonationAllocationDetails_DonationAllocationDetailId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Beneficiaries]  WITH NOCHECK ADD  CONSTRAINT [FK_Beneficiaries_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[Beneficiaries] NOCHECK CONSTRAINT [FK_Beneficiaries_Projects_ProjectId]
GO
ALTER TABLE [dbo].[DonationAllocationDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_DonationAllocationDetails_DonationAllocations_DonationAllocationId] FOREIGN KEY([DonationAllocationId])
REFERENCES [dbo].[DonationAllocations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonationAllocationDetails] NOCHECK CONSTRAINT [FK_DonationAllocationDetails_DonationAllocations_DonationAllocationId]
GO
ALTER TABLE [dbo].[DonationAllocations]  WITH NOCHECK ADD  CONSTRAINT [FK_DonationAllocations_TransactionMasters_DonationReferenceId] FOREIGN KEY([DonationReferenceId])
REFERENCES [dbo].[TransactionMasters] ([Id])
GO
ALTER TABLE [dbo].[DonationAllocations] NOCHECK CONSTRAINT [FK_DonationAllocations_TransactionMasters_DonationReferenceId]
GO
ALTER TABLE [dbo].[Ledgers]  WITH NOCHECK ADD  CONSTRAINT [FK_Ledgers_Ledgers_ParentLedgerId] FOREIGN KEY([ParentLedgerId])
REFERENCES [dbo].[Ledgers] ([Id])
GO
ALTER TABLE [dbo].[Ledgers] NOCHECK CONSTRAINT [FK_Ledgers_Ledgers_ParentLedgerId]
GO
ALTER TABLE [dbo].[Projects]  WITH NOCHECK ADD  CONSTRAINT [FK_Projects_Programs_ProgramId] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([Id])
GO
ALTER TABLE [dbo].[Projects] NOCHECK CONSTRAINT [FK_Projects_Programs_ProgramId]
GO
ALTER TABLE [dbo].[Projects]  WITH NOCHECK ADD  CONSTRAINT [FK_Projects_Projects_ProjectMasterId] FOREIGN KEY([ProjectMasterId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[Projects] NOCHECK CONSTRAINT [FK_Projects_Projects_ProjectMasterId]
GO
ALTER TABLE [dbo].[TransactionDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_TransactionDetails_Ledgers_LedgerId] FOREIGN KEY([LedgerId])
REFERENCES [dbo].[Ledgers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TransactionDetails] NOCHECK CONSTRAINT [FK_TransactionDetails_Ledgers_LedgerId]
GO
ALTER TABLE [dbo].[TransactionDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_TransactionDetails_TransactionMasters_TransactionMasterId] FOREIGN KEY([TransactionMasterId])
REFERENCES [dbo].[TransactionMasters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TransactionDetails] NOCHECK CONSTRAINT [FK_TransactionDetails_TransactionMasters_TransactionMasterId]
GO
