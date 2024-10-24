CREATE TABLE [dbo].[TransactionDetails] (
    [Id]                     UNIQUEIDENTIFIER NOT NULL,
    [TransactionType]        INT              NOT NULL,
    [TransactionAccountType] INT              NOT NULL,
    [Amount]                 DECIMAL (10, 2)  NOT NULL,
    [Status]                 INT              NOT NULL,
    [TransactionMasterId]    UNIQUEIDENTIFIER NOT NULL,
    [LedgerId]               UNIQUEIDENTIFIER NOT NULL,
    [CreatedDate]            DATETIME2 (7)    NOT NULL,
    [UpdatedDate]            DATETIME2 (7)    NOT NULL,
    [CreatedBy]              UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]         UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_TransactionDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TransactionDetails_Ledgers_LedgerId] FOREIGN KEY ([LedgerId]) REFERENCES [dbo].[Ledgers] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_TransactionDetails_TransactionMasters_TransactionMasterId] FOREIGN KEY ([TransactionMasterId]) REFERENCES [dbo].[TransactionMasters] ([Id]) ON DELETE CASCADE
);


GO
ALTER TABLE [dbo].[TransactionDetails] NOCHECK CONSTRAINT [FK_TransactionDetails_Ledgers_LedgerId];


GO
ALTER TABLE [dbo].[TransactionDetails] NOCHECK CONSTRAINT [FK_TransactionDetails_TransactionMasters_TransactionMasterId];

