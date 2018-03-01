CREATE TABLE [dbo].[GU_zamechaniya_types] (
    [ID]            UNIQUEIDENTIFIER CONSTRAINT [DF_GU_zamechaniya_types_ID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [zam_type_Name] NVARCHAR (255)   NOT NULL,
    CONSTRAINT [PK_GU_zamechaniya_types] PRIMARY KEY CLUSTERED ([ID] ASC)
);

