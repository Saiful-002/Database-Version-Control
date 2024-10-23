CREATE TABLE [dbo].[Users1] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [Name]           NVARCHAR (MAX)   NOT NULL,
    [UserName]       NVARCHAR (MAX)   NOT NULL,
    [Password]       NVARCHAR (MAX)   NOT NULL,
    [EmailAddress]   NVARCHAR (MAX)   NOT NULL,
    [IsActive]       BIT              NULL,
    [RoleId]         INT              NOT NULL,
    [IsDeleted]      BIT              NULL,
    [CreatedDate]    DATETIME2 (7)    NOT NULL,
    [UpdatedDate]    DATETIME2 (7)    NOT NULL,
    [CreatedBy]      UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NOT NULL,
    [Status]         INT              NOT NULL,
    CONSTRAINT [PK_Users1] PRIMARY KEY CLUSTERED ([Id] ASC)
);

