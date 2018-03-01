CREATE TABLE [data_mos_ru].[OMK002_2013_1] (
    [ID]         UNIQUEIDENTIFIER CONSTRAINT [DF_OMK002_2013_1_ID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [global_id]  INT              NOT NULL,
    [Kod]        NVARCHAR (4000)  NULL,
    [Name]       NVARCHAR (4000)  NULL,
    [Latin_Name] NVARCHAR (4000)  NULL,
    [Type]       NVARCHAR (4000)  NULL,
    [Kod_okato]  NVARCHAR (4000)  NULL
);

