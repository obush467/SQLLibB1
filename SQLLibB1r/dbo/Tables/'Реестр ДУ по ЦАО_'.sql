﻿CREATE TABLE [dbo].['Реестр ДУ по ЦАО$'] (
    [№ п/п]                                                            FLOAT (53)     NULL,
    [Дата монтажа указанная Исполнителем]                              DATETIME       NULL,
    [Осмотрен]                                                         NVARCHAR (255) NULL,
    [Ответственный сотрудник   ]                                       NVARCHAR (255) NULL,
    [Дата осмотра]                                                     DATETIME       NULL,
    [Факт установки ДУ]                                                NVARCHAR (255) NULL,
    [Уникальныйномеринформационногоуказателя]                          NVARCHAR (255) NULL,
    [Тип домового указателя]                                           NVARCHAR (255) NULL,
    [Округ]                                                            NVARCHAR (255) NULL,
    [Район]                                                            NVARCHAR (255) NULL,
    [Улица, просп#, пер# и проч]                                       NVARCHAR (255) NULL,
    [Дом, корп#, стр# и проч]                                          NVARCHAR (255) NULL,
    [Место установки ДУ на фасаде здания]                              NVARCHAR (255) NULL,
    [Ориентирован на восприятие с улицы по привязке]                   NVARCHAR (255) NULL,
    [Улица с односторонним движением]                                  NVARCHAR (255) NULL,
    [Материал стен фасада]                                             NVARCHAR (255) NULL,
    [Реконструкция фасада]                                             NVARCHAR (255) NULL,
    [Длина фасада здания более 100 м]                                  NVARCHAR (255) NULL,
    [Указатель размещен на ограждении]                                 NVARCHAR (255) NULL,
    [Просматриваемость]                                                NVARCHAR (255) NULL,
    [Состояние ДУ]                                                     NVARCHAR (255) NULL,
    [Соответствие факт# места установки тех# Паспорту]                 NVARCHAR (255) NULL,
    [Расстояние до места установки по отметке тех паспорта (м#)]       FLOAT (53)     NULL,
    [По высоте от уровня земли]                                        NVARCHAR (255) NULL,
    [Высота в метрах (если не соответствует)]                          NVARCHAR (255) NULL,
    [По расстоянию от угла здания]                                     NVARCHAR (255) NULL,
    [Расстояние от угла в метрах (если не соответствует)]              NVARCHAR (255) NULL,
    [По расположению на фасаде]                                        NVARCHAR (255) NULL,
    [По единому горизонтальному уровню]                                NVARCHAR (255) NULL,
    [Содержание инф# полей_(Нанесенный текст)]                         NVARCHAR (255) NULL,
    [Содержание инф# полей (Цветовое решение)]                         NVARCHAR (255) NULL,
    [Содержание инф# полей (Используемые шрифты)]                      NVARCHAR (255) NULL,
    [Содержание инф# полей (Используемые пиктограммы)]                 NVARCHAR (255) NULL,
    [Информационное содержание указателя (Улица)]                      NVARCHAR (255) NULL,
    [Улица (транслит#)]                                                NVARCHAR (255) NULL,
    [Информационное содержание указателя (Дом)]                        NVARCHAR (255) NULL,
    [С транслитерацией/без]                                            NVARCHAR (255) NULL,
    [Установка распаячной коробки]                                     NVARCHAR (255) NULL,
    [Ввод кабеля электропитания в сторону короба]                      NVARCHAR (255) NULL,
    [Требования по прокладке линии электропитания]                     NVARCHAR (255) NULL,
    [Распаячная коробка подключена к внешним линиям электропитания]    NVARCHAR (255) NULL,
    [Есть ли возможность электрического подключения распаячной коробк] NVARCHAR (255) NULL,
    [Ранее установленный ДУ]                                           NVARCHAR (255) NULL,
    [Восстановление фасада после демонтажа]                            NVARCHAR (255) NULL,
    [Примерная площадь восстановления (если требуется)]                FLOAT (53)     NULL,
    [Восстановление фасада после монтажа ДУ]                           NVARCHAR (255) NULL,
    [Вывоз техники, инвентаря, оборудования]                           NVARCHAR (255) NULL,
    [Проверка работы подсвета (Дата проверки)]                         NVARCHAR (255) NULL,
    [Проверка работы подсвета (Состояние)]                             NVARCHAR (255) NULL,
    [Фотофиксация подсвета (произведена/не произведена)]               NVARCHAR (255) NULL,
    [Сотрудник проверивший работу подсвета]                            NVARCHAR (255) NULL,
    [Иные нарушения внешнего вида и технического состояния]            NVARCHAR (255) NULL,
    [Заключение]                                                       NVARCHAR (255) NULL,
    [Тип нарушения внешнего вида и технического состояния]             NVARCHAR (255) NULL,
    [Тип необходимых работ]                                            NVARCHAR (255) NULL,
    [Примечание]                                                       NVARCHAR (255) NULL,
    [Дата отправки информации Исполнителю]                             DATETIME       NULL,
    [Сотрудник, заносивший данные в реестр]                            NVARCHAR (255) NULL,
    [Координата X (ЕГКО)]                                              NVARCHAR (255) NULL,
    [Координата Y (ЕГКО)]                                              NVARCHAR (255) NULL,
    [Соответствие указанного на ДУ адреса, адресу  его установки]      NVARCHAR (255) NULL,
    [Указанный адрес существует в Москве]                              NVARCHAR (255) NULL,
    [Здание с указанным адресом существует в Москве]                   NVARCHAR (255) NULL,
    [Ответственная организация (наименование, контактное лицо, телефо] NVARCHAR (255) NULL,
    [Отметка о занесении в АСУ (Инвентарный номер)]                    NVARCHAR (255) NULL,
    [Дата занесения информации в АСУ]                                  NVARCHAR (255) NULL,
    [Сотрудник занесший данные в АСУ]                                  NVARCHAR (255) NULL,
    [Дата установки ДУ по графику ДЖКХиБ]                              NVARCHAR (255) NULL,
    [Год реализации по госконтрату]                                    FLOAT (53)     NULL,
    [Этап работ]                                                       NVARCHAR (255) NULL,
    [Мероприятие в рамках которого установлен ДУ]                      NVARCHAR (255) NULL,
    [ДУ по проекту, либо дополнительный]                               NVARCHAR (255) NULL,
    [Планируемая Исполнителем дата монтажа]                            NVARCHAR (255) NULL,
    [Дата поступления информация в отдел мониторинга]                  NVARCHAR (255) NULL,
    [Размер (мм)]                                                      NVARCHAR (255) NULL,
    [Общая площадь (кв#м)]                                             FLOAT (53)     NULL,
    [Должность сотрудника обследовавшего ДУ]                           NVARCHAR (255) NULL,
    [Должность сотрудника проверившего подсвет ДУ]                     NVARCHAR (255) NULL,
    [Должность сотрудника занесшего нформацию в АСУ]                   NVARCHAR (255) NULL,
    [Тип улиц-магистралей]                                             NVARCHAR (255) NULL,
    [Управляющая компания]                                             NVARCHAR (255) NULL,
    [Транслитерация по проекту]                                        NVARCHAR (255) NULL,
    [Тип информационного указателя в соответствии с точечной дислокац] NVARCHAR (255) NULL,
    [Источник]                                                         NVARCHAR (255) NULL,
    [Дата составления акта]                                            NVARCHAR (255) NULL,
    [Должность сотрудника]                                             NVARCHAR (255) NULL,
    [Фамилия И#О#]                                                     NVARCHAR (255) NULL,
    [Форма доклада]                                                    NVARCHAR (255) NULL,
    [Отметка о наличии подписанного акта в архиве]                     NVARCHAR (255) NULL,
    [Здание находится в пределах Садового кольца]                      NVARCHAR (255) NULL,
    [Категория улицы из АСУ ОДС]                                       NVARCHAR (255) NULL,
    [Рекомендуемый тип по лицевым фасадам]                             NVARCHAR (255) NULL,
    [Повторная проверка]                                               NVARCHAR (255) NULL,
    [Соответствеие БТИ]                                                NVARCHAR (255) NULL,
    [Наличие адреса в списке БТИ 19520]                                NVARCHAR (255) NULL,
    [F96]                                                              NVARCHAR (255) NULL,
    [F97]                                                              NVARCHAR (255) NULL,
    [F98]                                                              NVARCHAR (255) NULL,
    [F99]                                                              NVARCHAR (255) NULL,
    [F100]                                                             NVARCHAR (255) NULL,
    [F101]                                                             NVARCHAR (255) NULL,
    [F102]                                                             NVARCHAR (255) NULL,
    [F103]                                                             NVARCHAR (255) NULL,
    [F104]                                                             NVARCHAR (255) NULL,
    [F105]                                                             NVARCHAR (255) NULL,
    [F106]                                                             NVARCHAR (255) NULL,
    [F107]                                                             NVARCHAR (255) NULL,
    [F108]                                                             NVARCHAR (255) NULL,
    [F109]                                                             NVARCHAR (255) NULL,
    [F110]                                                             NVARCHAR (255) NULL,
    [F111]                                                             NVARCHAR (255) NULL,
    [F112]                                                             NVARCHAR (255) NULL,
    [F113]                                                             NVARCHAR (255) NULL,
    [F114]                                                             NVARCHAR (255) NULL,
    [F115]                                                             NVARCHAR (255) NULL,
    [F116]                                                             NVARCHAR (255) NULL,
    [F117]                                                             NVARCHAR (255) NULL,
    [F118]                                                             NVARCHAR (255) NULL,
    [F119]                                                             NVARCHAR (255) NULL,
    [F120]                                                             NVARCHAR (255) NULL,
    [F121]                                                             NVARCHAR (255) NULL,
    [F122]                                                             NVARCHAR (255) NULL,
    [F123]                                                             NVARCHAR (255) NULL,
    [F124]                                                             NVARCHAR (255) NULL,
    [F125]                                                             NVARCHAR (255) NULL,
    [F126]                                                             NVARCHAR (255) NULL,
    [F127]                                                             NVARCHAR (255) NULL,
    [F128]                                                             NVARCHAR (255) NULL,
    [F129]                                                             NVARCHAR (255) NULL,
    [F130]                                                             NVARCHAR (255) NULL,
    [F131]                                                             NVARCHAR (255) NULL,
    [F132]                                                             NVARCHAR (255) NULL,
    [F133]                                                             NVARCHAR (255) NULL,
    [F134]                                                             NVARCHAR (255) NULL,
    [F135]                                                             NVARCHAR (255) NULL,
    [F136]                                                             NVARCHAR (255) NULL,
    [F137]                                                             NVARCHAR (255) NULL,
    [F138]                                                             NVARCHAR (255) NULL,
    [F139]                                                             NVARCHAR (255) NULL,
    [F140]                                                             NVARCHAR (255) NULL,
    [F141]                                                             NVARCHAR (255) NULL,
    [F142]                                                             NVARCHAR (255) NULL,
    [F143]                                                             NVARCHAR (255) NULL,
    [F144]                                                             NVARCHAR (255) NULL,
    [F145]                                                             NVARCHAR (255) NULL,
    [F146]                                                             NVARCHAR (255) NULL,
    [F147]                                                             NVARCHAR (255) NULL,
    [F148]                                                             NVARCHAR (255) NULL,
    [F149]                                                             NVARCHAR (255) NULL,
    [F150]                                                             NVARCHAR (255) NULL,
    [F151]                                                             NVARCHAR (255) NULL,
    [F152]                                                             NVARCHAR (255) NULL,
    [F153]                                                             NVARCHAR (255) NULL,
    [F154]                                                             NVARCHAR (255) NULL,
    [F155]                                                             NVARCHAR (255) NULL,
    [F156]                                                             NVARCHAR (255) NULL,
    [F157]                                                             NVARCHAR (255) NULL,
    [F158]                                                             NVARCHAR (255) NULL,
    [F159]                                                             NVARCHAR (255) NULL,
    [F160]                                                             NVARCHAR (255) NULL,
    [F161]                                                             NVARCHAR (255) NULL,
    [F162]                                                             NVARCHAR (255) NULL,
    [F163]                                                             NVARCHAR (255) NULL,
    [F164]                                                             NVARCHAR (255) NULL,
    [F165]                                                             NVARCHAR (255) NULL,
    [F166]                                                             NVARCHAR (255) NULL,
    [F167]                                                             NVARCHAR (255) NULL,
    [F168]                                                             NVARCHAR (255) NULL,
    [F169]                                                             NVARCHAR (255) NULL,
    [F170]                                                             NVARCHAR (255) NULL,
    [F171]                                                             NVARCHAR (255) NULL,
    [F172]                                                             NVARCHAR (255) NULL,
    [F173]                                                             NVARCHAR (255) NULL,
    [F174]                                                             NVARCHAR (255) NULL,
    [F175]                                                             NVARCHAR (255) NULL,
    [F176]                                                             NVARCHAR (255) NULL,
    [F177]                                                             NVARCHAR (255) NULL,
    [F178]                                                             NVARCHAR (255) NULL,
    [F179]                                                             NVARCHAR (255) NULL,
    [F180]                                                             NVARCHAR (255) NULL,
    [F181]                                                             NVARCHAR (255) NULL,
    [F182]                                                             NVARCHAR (255) NULL,
    [F183]                                                             NVARCHAR (255) NULL,
    [F184]                                                             NVARCHAR (255) NULL,
    [F185]                                                             NVARCHAR (255) NULL,
    [F186]                                                             NVARCHAR (255) NULL,
    [F187]                                                             NVARCHAR (255) NULL,
    [F188]                                                             NVARCHAR (255) NULL,
    [F189]                                                             NVARCHAR (255) NULL,
    [F190]                                                             NVARCHAR (255) NULL,
    [F191]                                                             NVARCHAR (255) NULL,
    [F192]                                                             NVARCHAR (255) NULL,
    [F193]                                                             NVARCHAR (255) NULL,
    [F194]                                                             NVARCHAR (255) NULL,
    [F195]                                                             NVARCHAR (255) NULL,
    [F196]                                                             NVARCHAR (255) NULL,
    [F197]                                                             NVARCHAR (255) NULL,
    [F198]                                                             NVARCHAR (255) NULL,
    [F199]                                                             NVARCHAR (255) NULL,
    [F200]                                                             NVARCHAR (255) NULL,
    [F201]                                                             NVARCHAR (255) NULL
);

