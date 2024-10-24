CREATE TABLE [dbo].[Projects] (
    [Id]              UNIQUEIDENTIFIER NOT NULL,
    [Name]            NVARCHAR (MAX)   NOT NULL,
    [ProjectPurpose]  NVARCHAR (MAX)   NULL,
    [Location]        NVARCHAR (MAX)   NULL,
    [ParentId]        INT              NULL,
    [Notes]           NVARCHAR (MAX)   NULL,
    [ProgramId]       INT              NULL,
    [ProjectMasterId] UNIQUEIDENTIFIER NULL,
    [CreatedDate]     DATETIME2 (7)    NOT NULL,
    [UpdatedDate]     DATETIME2 (7)    NOT NULL,
    [CreatedBy]       UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy]  UNIQUEIDENTIFIER NOT NULL,
    [EndDate]         DATETIME2 (7)    NULL,
    [StartDate]       DATETIME2 (7)    NULL,
    [Status]          INT              CONSTRAINT [DF__Projects__Status__01142BA1] DEFAULT ((0)) NOT NULL,
    [DefaultAmount]   DECIMAL (18, 2)  NULL,
    [DisburseType]    NVARCHAR (MAX)   NULL,
    [ProjectStatus]   NVARCHAR (MAX)   NULL,
    [ProjectCode]     NVARCHAR (MAX)   NULL,
    [Year]            NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Projects_Programs_ProgramId] FOREIGN KEY ([ProgramId]) REFERENCES [dbo].[Programs] ([Id]),
    CONSTRAINT [FK_Projects_Projects_ProjectMasterId] FOREIGN KEY ([ProjectMasterId]) REFERENCES [dbo].[Projects] ([Id])
);


GO
ALTER TABLE [dbo].[Projects] NOCHECK CONSTRAINT [FK_Projects_Programs_ProgramId];


GO
ALTER TABLE [dbo].[Projects] NOCHECK CONSTRAINT [FK_Projects_Projects_ProjectMasterId];

