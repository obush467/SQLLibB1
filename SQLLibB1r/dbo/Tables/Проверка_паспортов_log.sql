CREATE TABLE [dbo].[Проверка_паспортов_log] (
    [id_log]                                                   INT                IDENTITY (1, 1) NOT NULL,
    [log_date]                                                 DATETIMEOFFSET (7) DEFAULT (sysdatetimeoffset()) NOT NULL,
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
    [id]                                                       INT                NOT NULL,
    CONSTRAINT [PK_Проверка_паспортов_log] PRIMARY KEY CLUSTERED ([id_log] ASC)
);

