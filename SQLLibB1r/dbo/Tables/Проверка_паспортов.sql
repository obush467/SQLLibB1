CREATE TABLE [dbo].[Проверка_паспортов] (
    [Сотрудник, проверяющий на актуальность]                   NVARCHAR (255)     NULL,
    [Ошибки в адресации ГУ]                                    NVARCHAR (4000)    NULL,
    [Cоответствие фактического места установки паспортному]    NVARCHAR (4000)    NULL,
    [Соответствие реальных плашек, макета и паспортных плашек] NVARCHAR (4000)    NULL,
    [Наличие согласованного макета]                            BIT                NULL,
    [Наличие согласованного паспорта]                          BIT                NULL,
    [Примечание]                                               NVARCHAR (4000)    NULL,
    [Проверено]                                                BIT                NULL,
    [GU_ID]                                                    INT                NOT NULL,
    [Sotr_ID]                                                  INT                NULL,
    [ts]                                                       ROWVERSION         NOT NULL,
    [updated]                                                  DATETIMEOFFSET (7) NULL,
    [id]                                                       INT                IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_Проверка_паспортов] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER Проверка_паспортов_log_update
   ON  [dbo].[Проверка_паспортов]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [dbo].[Проверка_паспортов_log]
           ([Сотрудник, проверяющий на актуальность]
           ,[Ошибки в адресации ГУ]
           ,[Cоответствие фактического места установки паспортному]
           ,[Соответствие реальных плашек, макета и паспортных плашек]
           ,[Наличие согласованного макета]
           ,[Наличие согласованного паспорта]
           ,[Примечание]
           ,[Проверено]
           ,[GU_ID]
           ,[Sotr_ID]
           ,[updated]
           ,[id])
	SELECT [Сотрудник, проверяющий на актуальность]
		  ,[Ошибки в адресации ГУ]
		  ,[Cоответствие фактического места установки паспортному]
		  ,[Соответствие реальных плашек, макета и паспортных плашек]
		  ,[Наличие согласованного макета]
		  ,[Наличие согласованного паспорта]
		  ,[Примечание]
		  ,[Проверено]
		  ,[GU_ID]
		  ,[Sotr_ID]
		  ,[updated]
		  ,[id]
	  FROM deleted
END

