CREATE TABLE [dbo].[DonationAllocationDetails] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [ProjectId]            UNIQUEIDENTIFIER NULL,
    [DonorId]              UNIQUEIDENTIFIER NULL,
    [BeneficiaryId]        UNIQUEIDENTIFIER NULL,
    [StartDate]            DATETIME2 (7)    NULL,
    [EndDate]              DATETIME2 (7)    NULL,
    [Amount]               DECIMAL (18, 2)  NOT NULL,
    [DonationAllocationId] UNIQUEIDENTIFIER NOT NULL,
    [CreatedDate]          DATETIME2 (7)    NOT NULL,
    [UpdatedDate]          DATETIME2 (7)    NOT NULL,
    [CreatedBy]            UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]       UNIQUEIDENTIFIER NOT NULL,
    [Status]               INT              NOT NULL,
    [RateAmount]           DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    [RemainingAmount]      DECIMAL (18, 2)  DEFAULT ((0.0)) NOT NULL,
    CONSTRAINT [PK_DonationAllocationDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DonationAllocationDetails_DonationAllocations_DonationAllocationId] FOREIGN KEY ([DonationAllocationId]) REFERENCES [dbo].[DonationAllocations] ([Id]) ON DELETE CASCADE
);


GO
ALTER TABLE [dbo].[DonationAllocationDetails] NOCHECK CONSTRAINT [FK_DonationAllocationDetails_DonationAllocations_DonationAllocationId];

