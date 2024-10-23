CREATE TABLE [dbo].[Beneficiaries] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [Name]                NVARCHAR (MAX)   NOT NULL,
    [PhoneNumber]         NVARCHAR (MAX)   NULL,
    [Address]             NVARCHAR (MAX)   NULL,
    [City]                INT              NULL,
    [District]            INT              NULL,
    [Email1]              NVARCHAR (MAX)   NULL,
    [FaceBookId]          NVARCHAR (MAX)   NULL,
    [InstitutionName]     NVARCHAR (MAX)   NULL,
    [InstitutionAddress]  NVARCHAR (MAX)   NULL,
    [Class]               NVARCHAR (MAX)   NULL,
    [MajorSubject]        NVARCHAR (MAX)   NULL,
    [UserId]              INT              NULL,
    [ProjectId]           UNIQUEIDENTIFIER NULL,
    [CreatedDate]         DATETIME2 (7)    NOT NULL,
    [UpdatedDate]         DATETIME2 (7)    NOT NULL,
    [CreatedBy]           UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]      UNIQUEIDENTIFIER NOT NULL,
    [Status]              INT              NOT NULL,
    [BeneficiaryType]     NVARCHAR (MAX)   NULL,
    [BeneficiaryCode]     NVARCHAR (MAX)   NULL,
    [ApplicationLink]     NVARCHAR (MAX)   NULL,
    [Email2]              NVARCHAR (50)    NULL,
    [MobileBankingNumber] NVARCHAR (50)    NULL,
    [MobileBankingType]   NVARCHAR (50)    NULL,
    [Note]                NVARCHAR (500)   NULL,
    CONSTRAINT [PK_Beneficiaries] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Beneficiaries_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([Id])
);


GO
ALTER TABLE [dbo].[Beneficiaries] NOCHECK CONSTRAINT [FK_Beneficiaries_Projects_ProjectId];

