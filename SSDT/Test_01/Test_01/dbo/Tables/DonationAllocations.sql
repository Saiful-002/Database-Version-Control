CREATE TABLE [dbo].[DonationAllocations] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [Purpose]             NVARCHAR (MAX)   NULL,
    [Description]         NVARCHAR (MAX)   NULL,
    [StartDate]           DATETIME2 (7)    NULL,
    [EndTime]             DATETIME2 (7)    NULL,
    [AllocationType]      INT              NOT NULL,
    [DonationReferenceId] UNIQUEIDENTIFIER NULL,
    [CreatedDate]         DATETIME2 (7)    NOT NULL,
    [UpdatedDate]         DATETIME2 (7)    NOT NULL,
    [CreatedBy]           UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]      UNIQUEIDENTIFIER NOT NULL,
    [Status]              INT              NOT NULL,
    [Amount]              DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    [RemainingAmount]     DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    [AllocationStatus]    INT              DEFAULT ((0)) NOT NULL,
    [CurrencyRate]        DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    [CurrencyType]        NVARCHAR (MAX)   NULL,
    [ExactAmount]         DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    CONSTRAINT [PK_DonationAllocations] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DonationAllocations_TransactionMasters_DonationReferenceId] FOREIGN KEY ([DonationReferenceId]) REFERENCES [dbo].[TransactionMasters] ([Id])
);


GO
ALTER TABLE [dbo].[DonationAllocations] NOCHECK CONSTRAINT [FK_DonationAllocations_TransactionMasters_DonationReferenceId];

