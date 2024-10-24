CREATE TABLE [dbo].[Currencies] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Code]          NVARCHAR (MAX)   NULL,
    [Name]          NVARCHAR (MAX)   NULL,
    [Symbol]        NVARCHAR (MAX)   NULL,
    [DecimalDigits] INT              NOT NULL,
    [Rate]          DECIMAL (18)     CONSTRAINT [DF_Currencies_Rate] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Currencies_1] PRIMARY KEY CLUSTERED ([Id] ASC)
);

