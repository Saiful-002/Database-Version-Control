CREATE TABLE [dbo].[Ledgers] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [Name]           NVARCHAR (MAX)   NOT NULL,
    [Description]    NVARCHAR (MAX)   NULL,
    [LegderType]     INT              NOT NULL,
    [LedgerCode]     INT              NOT NULL,
    [ParentLedgerId] UNIQUEIDENTIFIER NULL,
    [CreatedDate]    DATETIME2 (7)    NOT NULL,
    [UpdatedDate]    DATETIME2 (7)    NOT NULL,
    [CreatedBy]      UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NOT NULL,
    [Status]         INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Ledgers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Ledgers_Ledgers_ParentLedgerId] FOREIGN KEY ([ParentLedgerId]) REFERENCES [dbo].[Ledgers] ([Id])
);


GO
ALTER TABLE [dbo].[Ledgers] NOCHECK CONSTRAINT [FK_Ledgers_Ledgers_ParentLedgerId];

