CREATE TABLE [dbo].[StipendDetails] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [TransactionDate]     DATETIME2 (7)    NOT NULL,
    [Amount]              DECIMAL (18, 2)  NOT NULL,
    [ProjectId]           UNIQUEIDENTIFIER NULL,
    [DonationReferenceId] UNIQUEIDENTIFIER NULL,
    [BeneficiaryId]       UNIQUEIDENTIFIER NULL,
    [ApplicationId]       UNIQUEIDENTIFIER NULL,
    [Notes]               NVARCHAR (MAX)   NULL,
    [StipendStatus]       INT              NOT NULL,
    [TransationType]      INT              NOT NULL,
    [CreatedDate]         DATETIME2 (7)    NOT NULL,
    [UpdatedDate]         DATETIME2 (7)    NOT NULL,
    [CreatedBy]           UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]      UNIQUEIDENTIFIER NOT NULL,
    [Status]              INT              NOT NULL,
    CONSTRAINT [PK_StipendDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

