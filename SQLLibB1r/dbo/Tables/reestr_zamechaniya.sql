CREATE TABLE [dbo].[reestr_zamechaniya] (
    [id]               UNIQUEIDENTIFIER   CONSTRAINT [DF_reestr_zamechaniya_id] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [kod]              INT                NOT NULL,
    [zam_type]         VARCHAR (50)       NOT NULL,
    [status]           VARCHAR (20)       NULL,
    [text]             VARCHAR (1000)     NULL,
    [key]              VARCHAR (1)        NULL,
    [pic]              VARCHAR (255)      NULL,
    [zam]              VARCHAR (1000)     NULL,
    [memo]             VARCHAR (1000)     NULL,
    [foto]             VARCHAR (255)      NULL,
    [podtverjd_memo]   VARCHAR (1000)     NULL,
    [podtverjd_foto]   VARCHAR (255)      NULL,
    [podtverjd_status] VARCHAR (20)       NULL,
    [napravleno]       DATE               NULL,
    [updated]          DATETIMEOFFSET (7) NULL,
    CONSTRAINT [PK_reestr_zamechaniya_1] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_reestr_zamechaniya_reestr_t] FOREIGN KEY ([kod]) REFERENCES [dbo].[reestr_t] ([kod])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20171025-174719]
    ON [dbo].[reestr_zamechaniya]([kod] ASC, [zam_type] ASC)
    INCLUDE([status], [text], [key], [pic], [foto], [podtverjd_memo], [id], [podtverjd_foto], [podtverjd_status], [napravleno], [updated], [zam], [memo]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [_dta_index_reestr_zamechaniya_5_1199343337__K3_K2_4_5_6_7_8_9_10_11_12_13]
    ON [dbo].[reestr_zamechaniya]([zam_type] ASC, [kod] ASC)
    INCLUDE([status], [text], [key], [pic], [zam], [memo], [foto], [podtverjd_memo], [podtverjd_foto], [podtverjd_status]);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20171025-204121]
    ON [dbo].[reestr_zamechaniya]([id] ASC, [kod] ASC, [zam_type] ASC, [status] ASC, [podtverjd_status] ASC, [napravleno] ASC, [updated] ASC)
    INCLUDE([foto], [podtverjd_memo], [podtverjd_foto], [text], [key], [pic], [zam], [memo]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_reestr_zamechaniya_5_188735925__K3_K2_4_5_6_7_9_10_11_12_13]
    ON [dbo].[reestr_zamechaniya]([zam_type] ASC, [kod] ASC)
    INCLUDE([status], [text], [key], [pic], [memo], [foto], [podtverjd_memo], [podtverjd_foto], [podtverjd_status]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_reestr_zamechaniya_5_188735925__K3_K2_4_8_9_10_11_12_13]
    ON [dbo].[reestr_zamechaniya]([zam_type] ASC, [kod] ASC)
    INCLUDE([status], [zam], [memo], [foto], [podtverjd_memo], [podtverjd_foto], [podtverjd_status]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_reestr_zamechaniya_5_188735925__K3_K2_4_8_9_10_11_13]
    ON [dbo].[reestr_zamechaniya]([zam_type] ASC, [kod] ASC)
    INCLUDE([status], [zam], [memo], [foto], [podtverjd_memo], [podtverjd_status]);


GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Zam_updated]
   ON  dbo.reestr_zamechaniya
   AFTER UPDATE
AS 
BEGIN
SET NOCOUNT ON;

IF (NOT UPDATE(updated))
BEGIN
UPDATE rz
SET
	updated=SYSDATETIMEOFFSET()
from
	reestr_zamechaniya rz inner join inserted 
	on rz.kod=inserted.kod
	AND 
	RZ.zam_type=inserted.zam_type
INSERT INTO [dbo].[reestr_zamechaniya_log]
           ([id]
           ,[kod]
           ,[zam_type]
           ,[status]
           ,[text]
           ,[key]
           ,[pic]
           ,[zam]
           ,[memo]
           ,[foto]
           ,[podtverjd_memo]
           ,[podtverjd_foto]
           ,[podtverjd_status]
           ,[napravleno]
           ,[updated])
	SELECT [id]
		  ,[kod]
		  ,[zam_type]
		  ,[status]
		  ,[text]
		  ,[key]
		  ,[pic]
		  ,[zam]
		  ,[memo]
		  ,[foto]
		  ,[podtverjd_memo]
		  ,[podtverjd_foto]
		  ,[podtverjd_status]
		  ,[napravleno]
		  ,[updated]
	  FROM deleted
END
END
