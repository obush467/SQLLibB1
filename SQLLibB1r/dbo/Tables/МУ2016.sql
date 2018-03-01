CREATE TABLE [dbo].[МУ2016] (
    [№]                                         FLOAT (53)     NULL,
    [НомерГУ]                                   NVARCHAR (255) NULL,
    [Округ]                                     NVARCHAR (255) NULL,
    [Район]                                     NVARCHAR (255) NULL,
    [Улица, проспект, переулок и проч]          NVARCHAR (255) NULL,
    [Дом, корп#, стр# и проч]                   NVARCHAR (255) NULL,
    [Установлен]                                NVARCHAR (255) NULL,
    [Заключение по помехе пешеходам и технике]  NVARCHAR (255) NULL,
    [Текущее наличие]                           NVARCHAR (255) NULL,
    [Текущее состояние]                         NVARCHAR (255) NULL,
    [Дата проверки]                             DATETIME       NULL,
    [Проверка]                                  NVARCHAR (255) NULL,
    [Документ]                                  NVARCHAR (255) NULL,
    [Сравнение состояний начального и текущего] NVARCHAR (255) NULL,
    [Совпадение списков]                        NVARCHAR (255) NULL,
    [Акты все]                                  NVARCHAR (255) NULL
);

