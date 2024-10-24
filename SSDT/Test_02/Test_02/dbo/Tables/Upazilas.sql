CREATE TABLE [dbo].[Upazilas] (
    [id]          INT            NOT NULL,
    [district_id] INT            NULL,
    [name]        VARCHAR (255)  NULL,
    [bn_name]     NVARCHAR (255) NULL,
    CONSTRAINT [PK__Upazilas__3213E83FA6514B8E] PRIMARY KEY CLUSTERED ([id] ASC)
);

