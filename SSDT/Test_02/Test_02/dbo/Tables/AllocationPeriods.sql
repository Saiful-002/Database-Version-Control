CREATE TABLE [dbo].[AllocationPeriods] (
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [DonationAllocationDetailId] UNIQUEIDENTIFIER NOT NULL,
    [Month]                      INT              NOT NULL,
    [Year]                       INT              NOT NULL,
    [Date]                       DATETIME2 (7)    NULL,
    [Amount]                     DECIMAL (18, 2)  NOT NULL,
    [CreatedDate]                DATETIME2 (7)    NOT NULL,
    [UpdatedDate]                DATETIME2 (7)    NOT NULL,
    [CreatedBy]                  UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]             UNIQUEIDENTIFIER NOT NULL,
    [Status]                     INT              NOT NULL,
    CONSTRAINT [PK_AllocationPeriods] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AllocationPeriods_DonationAllocationDetails_DonationAllocationDetailId] FOREIGN KEY ([DonationAllocationDetailId]) REFERENCES [dbo].[DonationAllocationDetails] ([Id]) ON DELETE CASCADE
);


GO
ALTER TABLE [dbo].[AllocationPeriods] NOCHECK CONSTRAINT [FK_AllocationPeriods_DonationAllocationDetails_DonationAllocationDetailId];

