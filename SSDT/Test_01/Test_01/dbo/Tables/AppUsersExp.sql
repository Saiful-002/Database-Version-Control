CREATE TABLE [dbo].[AppUsersExp] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [Name]           NVARCHAR (MAX)   NULL,
    [UserName]       NVARCHAR (MAX)   NULL,
    [Password]       NVARCHAR (MAX)   NULL,
    [EmailAddress]   NVARCHAR (MAX)   NULL,
    [IsActive]       BIT              NULL,
    [RoleId]         INT              NOT NULL,
    [IsDeleted]      BIT              NULL,
    [CreatedDate]    DATETIME2 (7)    NOT NULL,
    [UpdatedDate]    DATETIME2 (7)    NOT NULL,
    [CreatedBy]      UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NOT NULL,
    [Status]         INT              NOT NULL,
    [Salt]           NVARCHAR (500)   NULL
);

