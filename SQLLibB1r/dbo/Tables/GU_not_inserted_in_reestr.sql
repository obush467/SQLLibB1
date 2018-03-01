CREATE TABLE [dbo].[GU_not_inserted_in_reestr] (
    [id]              INT             IDENTITY (1, 1) NOT NULL,
    [unikalniy]       NVARCHAR (13)   NULL,
    [kategoriya]      NVARCHAR (50)   NULL,
    [memo]            NVARCHAR (1000) NULL,
    [tipdu]           NVARCHAR (50)   NULL,
    [Okrug]           NVARCHAR (50)   NULL,
    [ulitsa]          NVARCHAR (50)   NULL,
    [nazvanie_ulitsi] NVARCHAR (255)  NULL,
    [dom_korp_str]    NVARCHAR (50)   NULL,
    [ulitsadu]        NVARCHAR (255)  NULL,
    [domdu]           NVARCHAR (50)   NULL,
    [montaj]          DATE            NULL,
    [montaj_plan]     DATE            NULL,
    [subpodradchik]   NVARCHAR (255)  NULL,
    [project]         NVARCHAR (50)   NULL,
    [priznak]         NVARCHAR (50)   NULL,
    [date1]           DATE            NULL,
    CONSTRAINT [PK_GU_not_inserted_in_reestr] PRIMARY KEY CLUSTERED ([id] ASC)
);

