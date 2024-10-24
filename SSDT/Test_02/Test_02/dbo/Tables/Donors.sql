CREATE TABLE [dbo].[Donors] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [FirstName]      NVARCHAR (MAX)   NOT NULL,
    [LastName]       NVARCHAR (MAX)   NULL,
    [MiddleName]     NVARCHAR (MAX)   NULL,
    [Email]          NVARCHAR (MAX)   NULL,
    [FacebookId]     NVARCHAR (MAX)   NULL,
    [Address1]       NVARCHAR (MAX)   NULL,
    [Address2]       NVARCHAR (MAX)   NULL,
    [City]           NVARCHAR (MAX)   NULL,
    [State]          NVARCHAR (MAX)   NULL,
    [PostalCode]     NVARCHAR (MAX)   NULL,
    [Country]        NVARCHAR (MAX)   NULL,
    [CreatedDate]    DATETIME2 (7)    NOT NULL,
    [UpdatedDate]    DATETIME2 (7)    NOT NULL,
    [CreatedBy]      UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NOT NULL,
    [Status]         INT              DEFAULT ((0)) NOT NULL,
    [PhoneNumber]    NVARCHAR (MAX)   NULL,
    [DonorCode]      NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Donors] PRIMARY KEY CLUSTERED ([Id] ASC)
);

