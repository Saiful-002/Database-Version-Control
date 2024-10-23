﻿/*
Deployment script for MMJOperations

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "MMJOperations"
:setvar DefaultFilePrefix "MMJOperations"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL,
                RECOVERY FULL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET PAGE_VERIFY NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET TEMPORAL_HISTORY_RETENTION ON 
            WITH ROLLBACK IMMEDIATE;
    END


GO
/*
The type for column UserId in table [dbo].[AspNetUserClaims] is currently  NVARCHAR (450) NOT NULL but is being changed to  NVARCHAR (250) NOT NULL. Data loss could occur and deployment may fail if the column contains data that is incompatible with type  NVARCHAR (250) NOT NULL.
*/

IF EXISTS (select top 1 1 from [dbo].[AspNetUserClaims])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The type for column UserId in table [dbo].[AspNetUserLogins] is currently  NVARCHAR (450) NOT NULL but is being changed to  NVARCHAR (250) NOT NULL. Data loss could occur and deployment may fail if the column contains data that is incompatible with type  NVARCHAR (250) NOT NULL.
*/

IF EXISTS (select top 1 1 from [dbo].[AspNetUserLogins])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The type for column UserId in table [dbo].[AspNetUserRoles] is currently  NVARCHAR (450) NOT NULL but is being changed to  NVARCHAR (250) NOT NULL. Data loss could occur and deployment may fail if the column contains data that is incompatible with type  NVARCHAR (250) NOT NULL.
*/

IF EXISTS (select top 1 1 from [dbo].[AspNetUserRoles])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The type for column Id in table [dbo].[AspNetUsers] is currently  NVARCHAR (450) NOT NULL but is being changed to  NVARCHAR (250) NOT NULL. Data loss could occur and deployment may fail if the column contains data that is incompatible with type  NVARCHAR (250) NOT NULL.
*/

IF EXISTS (select top 1 1 from [dbo].[AspNetUsers])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
/*
The type for column UserId in table [dbo].[AspNetUserTokens] is currently  NVARCHAR (450) NOT NULL but is being changed to  NVARCHAR (250) NOT NULL. Data loss could occur and deployment may fail if the column contains data that is incompatible with type  NVARCHAR (250) NOT NULL.
*/

IF EXISTS (select top 1 1 from [dbo].[AspNetUserTokens])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
PRINT N'Dropping Index [dbo].[AspNetUserClaims].[IX_AspNetUserClaims_UserId]...';


GO
DROP INDEX [IX_AspNetUserClaims_UserId]
    ON [dbo].[AspNetUserClaims];


GO
PRINT N'Dropping Index [dbo].[AspNetUserLogins].[IX_AspNetUserLogins_UserId]...';


GO
DROP INDEX [IX_AspNetUserLogins_UserId]
    ON [dbo].[AspNetUserLogins];


GO
PRINT N'Dropping Foreign Key [dbo].[FK_AspNetUserClaims_AspNetUsers_UserId]...';


GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId];


GO
PRINT N'Dropping Foreign Key [dbo].[FK_AspNetUserLogins_AspNetUsers_UserId]...';


GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId];


GO
PRINT N'Dropping Foreign Key [dbo].[FK_AspNetUserRoles_AspNetUsers_UserId]...';


GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId];


GO
PRINT N'Dropping Foreign Key [dbo].[FK_AspNetUserRoles_AspNetRoles_RoleId]...';


GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId];


GO
PRINT N'Dropping Foreign Key [dbo].[FK_AspNetUserTokens_AspNetUsers_UserId]...';


GO
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId];


GO
PRINT N'Altering Table [dbo].[AspNetUserClaims]...';


GO
ALTER TABLE [dbo].[AspNetUserClaims] ALTER COLUMN [UserId] NVARCHAR (250) NOT NULL;


GO
PRINT N'Creating Index [dbo].[AspNetUserClaims].[IX_AspNetUserClaims_UserId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId]
    ON [dbo].[AspNetUserClaims]([UserId] ASC);


GO
PRINT N'Altering Table [dbo].[AspNetUserLogins]...';


GO
ALTER TABLE [dbo].[AspNetUserLogins] ALTER COLUMN [UserId] NVARCHAR (250) NOT NULL;


GO
PRINT N'Creating Index [dbo].[AspNetUserLogins].[IX_AspNetUserLogins_UserId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId]
    ON [dbo].[AspNetUserLogins]([UserId] ASC);


GO
PRINT N'Starting rebuilding table [dbo].[AspNetUserRoles]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_AspNetUserRoles] (
    [UserId] NVARCHAR (250) NOT NULL,
    [RoleId] NVARCHAR (450) NOT NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_AspNetUserRoles1] PRIMARY KEY CLUSTERED ([UserId] ASC, [RoleId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[AspNetUserRoles])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_AspNetUserRoles] ([UserId], [RoleId])
        SELECT   [UserId],
                 [RoleId]
        FROM     [dbo].[AspNetUserRoles]
        ORDER BY [UserId] ASC, [RoleId] ASC;
    END

DROP TABLE [dbo].[AspNetUserRoles];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_AspNetUserRoles]', N'AspNetUserRoles';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_AspNetUserRoles1]', N'PK_AspNetUserRoles', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating Index [dbo].[AspNetUserRoles].[IX_AspNetUserRoles_RoleId]...';


GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId]
    ON [dbo].[AspNetUserRoles]([RoleId] ASC);


GO
PRINT N'Starting rebuilding table [dbo].[AspNetUsers]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_AspNetUsers] (
    [Id]                   NVARCHAR (250)     NOT NULL,
    [Name]                 NVARCHAR (MAX)     NULL,
    [Password]             NVARCHAR (MAX)     NULL,
    [IsActive]             BIT                NULL,
    [RoleId]               INT                NOT NULL,
    [IsDeleted]            BIT                NULL,
    [UserName]             NVARCHAR (256)     NULL,
    [NormalizedUserName]   NVARCHAR (256)     NULL,
    [Email]                NVARCHAR (256)     NULL,
    [NormalizedEmail]      NVARCHAR (256)     NULL,
    [EmailConfirmed]       BIT                NOT NULL,
    [PasswordHash]         NVARCHAR (MAX)     NULL,
    [SecurityStamp]        NVARCHAR (MAX)     NULL,
    [ConcurrencyStamp]     NVARCHAR (MAX)     NULL,
    [PhoneNumber]          NVARCHAR (MAX)     NULL,
    [PhoneNumberConfirmed] BIT                NOT NULL,
    [TwoFactorEnabled]     BIT                NOT NULL,
    [LockoutEnd]           DATETIMEOFFSET (7) NULL,
    [LockoutEnabled]       BIT                NOT NULL,
    [AccessFailedCount]    INT                NOT NULL,
    [Salt]                 NVARCHAR (MAX)     NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_AspNetUsers1] PRIMARY KEY CLUSTERED ([Id] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[AspNetUsers])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_AspNetUsers] ([Id], [Name], [Password], [IsActive], [RoleId], [IsDeleted], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Salt])
        SELECT   [Id],
                 [Name],
                 [Password],
                 [IsActive],
                 [RoleId],
                 [IsDeleted],
                 [UserName],
                 [NormalizedUserName],
                 [Email],
                 [NormalizedEmail],
                 [EmailConfirmed],
                 [PasswordHash],
                 [SecurityStamp],
                 [ConcurrencyStamp],
                 [PhoneNumber],
                 [PhoneNumberConfirmed],
                 [TwoFactorEnabled],
                 [LockoutEnd],
                 [LockoutEnabled],
                 [AccessFailedCount],
                 [Salt]
        FROM     [dbo].[AspNetUsers]
        ORDER BY [Id] ASC;
    END

DROP TABLE [dbo].[AspNetUsers];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_AspNetUsers]', N'AspNetUsers';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_AspNetUsers1]', N'PK_AspNetUsers', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating Index [dbo].[AspNetUsers].[EmailIndex]...';


GO
CREATE NONCLUSTERED INDEX [EmailIndex]
    ON [dbo].[AspNetUsers]([NormalizedEmail] ASC);


GO
PRINT N'Creating Index [dbo].[AspNetUsers].[UserNameIndex]...';


GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
    ON [dbo].[AspNetUsers]([NormalizedUserName] ASC) WHERE ([NormalizedUserName] IS NOT NULL);


GO
PRINT N'Starting rebuilding table [dbo].[AspNetUserTokens]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_AspNetUserTokens] (
    [UserId]        NVARCHAR (250) NOT NULL,
    [LoginProvider] NVARCHAR (450) NOT NULL,
    [Name]          NVARCHAR (450) NOT NULL,
    [Value]         NVARCHAR (MAX) NULL,
    CONSTRAINT [tmp_ms_xx_constraint_PK_AspNetUserTokens1] PRIMARY KEY CLUSTERED ([UserId] ASC, [LoginProvider] ASC, [Name] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[AspNetUserTokens])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value])
        SELECT   [UserId],
                 [LoginProvider],
                 [Name],
                 [Value]
        FROM     [dbo].[AspNetUserTokens]
        ORDER BY [UserId] ASC, [LoginProvider] ASC, [Name] ASC;
    END

DROP TABLE [dbo].[AspNetUserTokens];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_AspNetUserTokens]', N'AspNetUserTokens';

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_constraint_PK_AspNetUserTokens1]', N'PK_AspNetUserTokens', N'OBJECT';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Creating Foreign Key [dbo].[FK_AspNetUserClaims_AspNetUsers_UserId]...';


GO
ALTER TABLE [dbo].[AspNetUserClaims] WITH NOCHECK
    ADD CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [dbo].[FK_AspNetUserLogins_AspNetUsers_UserId]...';


GO
ALTER TABLE [dbo].[AspNetUserLogins] WITH NOCHECK
    ADD CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [dbo].[FK_AspNetUserRoles_AspNetUsers_UserId]...';


GO
ALTER TABLE [dbo].[AspNetUserRoles] WITH NOCHECK
    ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [dbo].[FK_AspNetUserRoles_AspNetRoles_RoleId]...';


GO
ALTER TABLE [dbo].[AspNetUserRoles] WITH NOCHECK
    ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE;


GO
PRINT N'Creating Foreign Key [dbo].[FK_AspNetUserTokens_AspNetUsers_UserId]...';


GO
ALTER TABLE [dbo].[AspNetUserTokens] WITH NOCHECK
    ADD CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE;


GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[AspNetUserClaims] WITH CHECK CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId];

ALTER TABLE [dbo].[AspNetUserLogins] WITH CHECK CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId];

ALTER TABLE [dbo].[AspNetUserRoles] WITH CHECK CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId];

ALTER TABLE [dbo].[AspNetUserRoles] WITH CHECK CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId];

ALTER TABLE [dbo].[AspNetUserTokens] WITH CHECK CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId];


GO
PRINT N'Update complete.';


GO
