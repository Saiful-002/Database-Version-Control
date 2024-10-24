CREATE TABLE [dbo].[Districts] (
    [id]          INT             NOT NULL,
    [division_id] INT             NOT NULL,
    [name]        NVARCHAR (50)   NOT NULL,
    [bn_name]     NVARCHAR (50)   NOT NULL,
    [lat]         DECIMAL (10, 7) NOT NULL,
    [long]        DECIMAL (10, 7) NOT NULL,
    CONSTRAINT [PK__BD_Distr__3213E83F426BFF06] PRIMARY KEY CLUSTERED ([id] ASC)
);

