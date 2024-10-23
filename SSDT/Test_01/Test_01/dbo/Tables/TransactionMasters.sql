CREATE TABLE [dbo].[TransactionMasters] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [TransactionType]    INT              NOT NULL,
    [TransactionDate]    DATETIME2 (7)    NOT NULL,
    [Status]             INT              NOT NULL,
    [Amount]             DECIMAL (10, 2)  NOT NULL,
    [Notes]              NVARCHAR (MAX)   NULL,
    [CreatedDate]        DATETIME2 (7)    NOT NULL,
    [UpdatedDate]        DATETIME2 (7)    NOT NULL,
    [CreatedBy]          UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]     UNIQUEIDENTIFIER NOT NULL,
    [AllocationDetailId] UNIQUEIDENTIFIER NULL,
    [AllocationPeriodId] UNIQUEIDENTIFIER NULL,
    [ProjectId]          UNIQUEIDENTIFIER NULL,
    [BeneficiaryId]      UNIQUEIDENTIFIER NULL,
    [DonorId]            UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_TransactionMasters] PRIMARY KEY CLUSTERED ([Id] ASC)
);

