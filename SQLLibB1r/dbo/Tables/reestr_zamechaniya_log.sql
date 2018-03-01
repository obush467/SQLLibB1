CREATE TABLE [dbo].[reestr_zamechaniya_log] (
    [id_log]           INT                IDENTITY (1, 1) NOT NULL,
    [changedate]       DATETIMEOFFSET (7) DEFAULT (sysdatetimeoffset()) NOT NULL,
    [id]               UNIQUEIDENTIFIER   NOT NULL,
    [kod]              INT                NOT NULL,
    [zam_type]         VARCHAR (50)       NOT NULL,
    [status]           VARCHAR (50)       NULL,
    [text]             VARCHAR (1000)     NULL,
    [key]              VARCHAR (1)        NULL,
    [pic]              VARCHAR (255)      NULL,
    [zam]              VARCHAR (1000)     NULL,
    [memo]             VARCHAR (1000)     NULL,
    [foto]             VARCHAR (255)      NULL,
    [podtverjd_memo]   VARCHAR (1000)     NULL,
    [podtverjd_foto]   VARCHAR (255)      NULL,
    [podtverjd_status] VARCHAR (50)       NULL,
    [napravleno]       DATE               NULL,
    [updated]          DATETIMEOFFSET (7) NULL,
    CONSTRAINT [PK_reestr_zamechaniya_log_1] PRIMARY KEY CLUSTERED ([id_log] ASC)
);

