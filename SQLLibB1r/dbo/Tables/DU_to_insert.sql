CREATE TABLE [dbo].[DU_to_insert] (
    [№ п/п]                                                            FLOAT (53)     NULL,
    [Уникальный номер ДУ]                                              NVARCHAR (255) NULL,
    [Группа]                                                           NVARCHAR (255) NULL,
    [Категория улицы]                                                  NVARCHAR (255) NULL,
    [Причина несоответствия типа ДУ категории улицы]                   NVARCHAR (255) NULL,
    [Адрес по реестру БТИ]                                             NVARCHAR (255) NULL,
    [ТипДУ]                                                            NVARCHAR (255) NULL,
    [Округ]                                                            NVARCHAR (255) NULL,
    [Район]                                                            NVARCHAR (255) NULL,
    [Улица]                                                            NVARCHAR (255) NULL,
    [Номер дома (полностью)]                                           NVARCHAR (255) NULL,
    [Информационное содержание указателя (Улица)/Надпись на первом ко] NVARCHAR (255) NULL,
    [Информационное содержание указателя (Дом)]                        NVARCHAR (255) NULL,
    [№ списка]                                                         NVARCHAR (255) NULL,
    [Дата списка]                                                      DATETIME       NULL,
    [Информация о несоответствии регламенту]                           DATETIME       NULL,
    [id]                                                               INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_d] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20170821-134633]
    ON [dbo].[DU_to_insert]([№ п/п] ASC, [Уникальный номер ДУ] ASC, [ТипДУ] ASC, [Округ] ASC, [Район] ASC, [Улица] ASC, [Номер дома (полностью)] ASC, [id] ASC)
    INCLUDE([Информационное содержание указателя (Улица)/Надпись на первом ко], [Информационное содержание указателя (Дом)], [№ списка], [Дата списка], [Информация о несоответствии регламенту], [Группа], [Категория улицы], [Причина несоответствия типа ДУ категории улицы], [Адрес по реестру БТИ]);

