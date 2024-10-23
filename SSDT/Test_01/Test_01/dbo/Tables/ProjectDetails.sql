CREATE TABLE [dbo].[ProjectDetails] (
    [Id]                     UNIQUEIDENTIFIER NOT NULL,
    [ProjectId]              UNIQUEIDENTIFIER NOT NULL,
    [BeneficiaryId]          UNIQUEIDENTIFIER NOT NULL,
    [BeneficiaryJoiningDate] DATETIME2 (7)    NULL,
    [DonorId]                UNIQUEIDENTIFIER NULL,
    [DonorJoiningDate]       DATETIME2 (7)    NULL,
    [StartDate]              DATETIME2 (7)    NULL,
    [EndDate]                DATETIME2 (7)    NULL,
    [EstimatedAmount]        DECIMAL (18, 2)  NOT NULL,
    [CreatedDate]            DATETIME2 (7)    NOT NULL,
    [UpdatedDate]            DATETIME2 (7)    NOT NULL,
    [CreatedBy]              UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]         UNIQUEIDENTIFIER NOT NULL,
    [Status]                 INT              NOT NULL,
    [BeneficiaryStatus]      INT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ProjectDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

