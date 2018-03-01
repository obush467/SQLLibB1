CREATE TABLE [fias_Moscow].[Object] (
    [AOGUID]             UNIQUEIDENTIFIER NULL,
    [FORMALNAME]         NVARCHAR (120)   NULL,
    [REGIONCODE]         NVARCHAR (2)     NULL,
    [AUTOCODE]           NVARCHAR (1)     NULL,
    [AREACODE]           NVARCHAR (3)     NULL,
    [CITYCODE]           NVARCHAR (3)     NULL,
    [CTARCODE]           NVARCHAR (3)     NULL,
    [PLACECODE]          NVARCHAR (3)     NULL,
    [STREETCODE]         NVARCHAR (4)     NULL,
    [EXTRCODE]           NVARCHAR (4)     NULL,
    [SEXTCODE]           NVARCHAR (3)     NULL,
    [OFFNAME]            NVARCHAR (120)   NULL,
    [POSTALCODE]         NVARCHAR (6)     NULL,
    [IFNSFL]             NVARCHAR (4)     NULL,
    [TERRIFNSFL]         NVARCHAR (4)     NULL,
    [IFNSUL]             NVARCHAR (4)     NULL,
    [TERRIFNSUL]         NVARCHAR (4)     NULL,
    [OKATO]              NVARCHAR (11)    NULL,
    [OKTMO]              NVARCHAR (11)    NULL,
    [UPDATEDATE]         DATETIME2 (3)    NULL,
    [SHORTNAME]          NVARCHAR (10)    NULL,
    [AOLEVEL]            INT              NULL,
    [PARENTGUID]         UNIQUEIDENTIFIER NULL,
    [AOID]               UNIQUEIDENTIFIER NOT NULL,
    [PREVID]             UNIQUEIDENTIFIER NULL,
    [NEXTID]             UNIQUEIDENTIFIER NULL,
    [CODE]               NVARCHAR (17)    NULL,
    [PLAINCODE]          NVARCHAR (15)    NULL,
    [ACTSTATUS]          INT              NULL,
    [CENTSTATUS]         INT              NULL,
    [OPERSTATUS]         INT              NULL,
    [CURRSTATUS]         INT              NULL,
    [STARTDATE]          DATETIME2 (3)    NULL,
    [ENDDATE]            DATETIME2 (3)    NULL,
    [NORMDOC]            UNIQUEIDENTIFIER NULL,
    [LIVESTATUS]         NVARCHAR (1)     NULL,
    [CADNUM]             NVARCHAR (100)   NULL,
    [DIVTYPE]            INT              NULL,
    [OFFNAME_NUM_TYPE]   INT              NULL,
    [OFFNAME_NUM_NUMBER] INT              NULL,
    [OFFNAME_NUM_PREFIX] INT              NULL,
    [OFFNAME_NUMBER]     VARCHAR (20)     NULL,
    [OFFNAME_PREFIX]     VARCHAR (20)     NULL,
    [OFFNAME_NAME]       VARCHAR (80)     NULL,
    [CONVERTSTREET]      NVARCHAR (50)    NULL,
    CONSTRAINT [PK_Key] PRIMARY KEY CLUSTERED ([AOID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20171208-103405]
    ON [fias_Moscow].[Object]([AOGUID] ASC, [FORMALNAME] ASC, [REGIONCODE] ASC, [OFFNAME] ASC, [AOLEVEL] ASC, [PARENTGUID] ASC, [AOID] ASC, [PREVID] ASC, [NEXTID] ASC, [ACTSTATUS] ASC, [STARTDATE] ASC, [ENDDATE] ASC, [LIVESTATUS] ASC);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20180124-212553]
    ON [fias_Moscow].[Object]([AOGUID] ASC)
    INCLUDE([FORMALNAME], [REGIONCODE], [AUTOCODE], [AREACODE], [CITYCODE], [CTARCODE], [PLACECODE], [STREETCODE], [EXTRCODE], [SEXTCODE], [OFFNAME], [POSTALCODE], [IFNSFL], [TERRIFNSFL], [IFNSUL], [TERRIFNSUL], [OKATO], [OKTMO], [UPDATEDATE], [SHORTNAME], [AOLEVEL], [PARENTGUID], [AOID], [PREVID], [NEXTID], [CODE], [PLAINCODE], [ACTSTATUS], [CENTSTATUS], [OPERSTATUS], [CURRSTATUS], [STARTDATE], [ENDDATE], [NORMDOC], [LIVESTATUS], [CADNUM], [DIVTYPE], [OFFNAME_NUM_TYPE], [OFFNAME_NUM_NUMBER], [OFFNAME_NUM_PREFIX], [OFFNAME_NUMBER], [OFFNAME_PREFIX], [OFFNAME_NAME], [CONVERTSTREET]);


GO
CREATE NONCLUSTERED INDEX [_dta_index_Object_5_1858873739__K25_K24_K26_K12]
    ON [fias_Moscow].[Object]([PREVID] ASC, [AOID] ASC, [NEXTID] ASC, [OFFNAME] ASC);


GO
CREATE STATISTICS [_dta_stat_1858873739_24_25_26_12]
    ON [fias_Moscow].[Object]([AOID], [PREVID], [NEXTID], [OFFNAME]);


GO
CREATE TRIGGER [fias_Moscow].Object1
   ON  [fias_Moscow].[Object]
   AFTER DELETE,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [fias_Moscow].[Object_log]
           ([AOGUID]
           ,[FORMALNAME]
           ,[REGIONCODE]
           ,[AUTOCODE]
           ,[AREACODE]
           ,[CITYCODE]
           ,[CTARCODE]
           ,[PLACECODE]
           ,[STREETCODE]
           ,[EXTRCODE]
           ,[SEXTCODE]
           ,[OFFNAME]
           ,[POSTALCODE]
           ,[IFNSFL]
           ,[TERRIFNSFL]
           ,[IFNSUL]
           ,[TERRIFNSUL]
           ,[OKATO]
           ,[OKTMO]
           ,[UPDATEDATE]
           ,[SHORTNAME]
           ,[AOLEVEL]
           ,[PARENTGUID]
           ,[AOID]
           ,[PREVID]
           ,[NEXTID]
           ,[CODE]
           ,[PLAINCODE]
           ,[ACTSTATUS]
           ,[CENTSTATUS]
           ,[OPERSTATUS]
           ,[CURRSTATUS]
           ,[STARTDATE]
           ,[ENDDATE]
           ,[NORMDOC]
           ,[LIVESTATUS]
           ,[CADNUM]
           ,[DIVTYPE]
           ,[OFFNAME_NUM_TYPE]
           ,[OFFNAME_NUM_NUMBER]
           ,[OFFNAME_NUM_PREFIX]
           ,[OFFNAME_NUMBER]
           ,[OFFNAME_PREFIX]
           ,[OFFNAME_NAME]
           ,[CONVERTSTREET])
SELECT [AOGUID]
      ,[FORMALNAME]
      ,[REGIONCODE]
      ,[AUTOCODE]
      ,[AREACODE]
      ,[CITYCODE]
      ,[CTARCODE]
      ,[PLACECODE]
      ,[STREETCODE]
      ,[EXTRCODE]
      ,[SEXTCODE]
      ,[OFFNAME]
      ,[POSTALCODE]
      ,[IFNSFL]
      ,[TERRIFNSFL]
      ,[IFNSUL]
      ,[TERRIFNSUL]
      ,[OKATO]
      ,[OKTMO]
      ,[UPDATEDATE]
      ,[SHORTNAME]
      ,[AOLEVEL]
      ,[PARENTGUID]
      ,[AOID]
      ,[PREVID]
      ,[NEXTID]
      ,[CODE]
      ,[PLAINCODE]
      ,[ACTSTATUS]
      ,[CENTSTATUS]
      ,[OPERSTATUS]
      ,[CURRSTATUS]
      ,[STARTDATE]
      ,[ENDDATE]
      ,[NORMDOC]
      ,[LIVESTATUS]
      ,[CADNUM]
      ,[DIVTYPE]
      ,[OFFNAME_NUM_TYPE]
      ,[OFFNAME_NUM_NUMBER]
      ,[OFFNAME_NUM_PREFIX]
      ,[OFFNAME_NUMBER]
      ,[OFFNAME_PREFIX]
      ,[OFFNAME_NAME]
      ,[CONVERTSTREET]
  FROM DELETED
END

