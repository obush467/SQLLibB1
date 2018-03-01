-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateGUStates] 

	@Номер_ГУ nvarchar(50)
    ,@Ответственный nvarchar(150)= null
    ,@Дата_проверки datetime
    ,@Установлено nvarchar(50) = null
    ,@Документ nvarchar(500)= null
    ,@Программа nvarchar(500)= null
	,@Аварийная_конструкция nvarchar(50) = null
	,@Механическое_повреждение_опоры nvarchar(50) = null
	,@Сломаны_информационные_поля nvarchar(50) = null
	,@Повреждены_информационные_поля nvarchar(50) = null
	,@Сломаны_направляющие_информационных_полей nvarchar(50) = null
	,@Повреждены_направляющие_информационных_полей nvarchar(50) = null
	,@Поврежден_декоративный_колпак nvarchar(50) = null
	,@Разбит_декоративный_колпак nvarchar(50) = null
	,@Поврежден_инфокуб nvarchar(50) = null
	,@Отсутствует_инфокуб nvarchar(50) = null
	,@Наличие_ржавчины_на_опоре nvarchar(50) = null
	,@Отслоение_краски_с_опоры nvarchar(50) = null
	,@Отслоение_краски_с_направляющих_информационных_полей nvarchar(50) = null
	,@Конструкция_испачкана_краской nvarchar(50) = null
	,@Конструкция_оклеена_объявлениями nvarchar(50) = null
	,@Загрязнение_конструкции nvarchar(50) = null
	,@Отсутствуют_заглушки_отверстий_в_опоре nvarchar(50) = null
	,@Не_благоустроена_территория nvarchar(50) = null
	,@Отсутствие_реквизитов nvarchar(50) = null
	,@Неправильные_реквизиты nvarchar(50) = null
AS
BEGIN
DECLARE @GU_ID int, @Counter int, @CounterN int;;
DECLARE @Sotrudnik_ID int;
DECLARE @INSERTED dbo.intTable
SET NOCOUNT ON;
IF (exists (select * from GUState ST inner join ГУ GU ON ST.GU_ID=GU.ID WHERE [Уникальный номер информационного указателя]=@Номер_ГУ AND ST.Date=@Дата_проверки AND ST.Sotr_ID=@Sotrudnik_ID))
	BEGIN
	print 'sdfsdfsdfsdfsdf' 
	END
ELSE
BEGIN
	select @GU_ID=ID from ГУ GU where [Уникальный номер информационного указателя]=@Номер_ГУ
	IF (@GU_ID is null) 
		BEGIN
		insert into notgu (un) values(@Номер_ГУ)
		return 0
		end
	select @Sotrudnik_ID=ID from sotr where dbo.deleteDublSpaceNull(fio)=dbo.deleteDublSpaceNull(@Ответственный)
	INSERT INTO [dbo].[GUState]
           ([GU_ID]
           ,[Sotr_ID]
           ,[Date]
           ,[Availability]
           ,[DocumentName]
           ,[ProgramName])
	OUTPUT INSERTED.ID into @INSERTED
	VALUES
           (@GU_ID
           ,@Sotrudnik_ID
           ,@Дата_проверки
           ,case WHEN @Установлено='Да' OR @Установлено='1' then 1
			else 0 end
           ,@Документ
           ,@Программа)
	IF (dbo.lrtrim_isnull(@Аварийная_конструкция)<>'' AND dbo.lrtrim_isnull(@Аварийная_конструкция)<>'Нет' AND dbo.lrtrim_isnull(@Аварийная_конструкция)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (1, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Механическое_повреждение_опоры)<>'' AND dbo.lrtrim_isnull(@Механическое_повреждение_опоры)<>'Нет' AND dbo.lrtrim_isnull(@Механическое_повреждение_опоры)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (2, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Сломаны_информационные_поля)<>'' AND dbo.lrtrim_isnull(@Сломаны_информационные_поля)<>'0') 
		BEGIN
		SET @Counter=cast(@Сломаны_информационные_поля as int)
		SET @CounterN=1
		WHILE @CounterN<=@Counter
			BEGIN 
			INSERT INTO GUState_zam (type_id,state_id) values (3, (select id from @INSERTED))
			SET @CounterN=@CounterN + 1
			END
		END
	IF (dbo.lrtrim_isnull(@Повреждены_информационные_поля)<>'' AND dbo.lrtrim_isnull(@Повреждены_информационные_поля)<>'0') 
		BEGIN
		SET @Counter=cast(@Повреждены_информационные_поля as int)
		SET @CounterN=1
		WHILE @CounterN<=@Counter
			BEGIN 
			INSERT INTO GUState_zam (type_id,state_id) values (4, (select id from @INSERTED))
			SET @CounterN=@CounterN + 1
			END
		END
	IF (dbo.lrtrim_isnull(@Сломаны_направляющие_информационных_полей)<>'' AND dbo.lrtrim_isnull(@Сломаны_направляющие_информационных_полей)<>'0') 
		BEGIN
		SET @Counter=cast(@Сломаны_направляющие_информационных_полей as int)
		SET @CounterN=1
		WHILE @CounterN<=@Counter
			BEGIN 
			INSERT INTO GUState_zam (type_id,state_id) values (5, (select id from @INSERTED))
			SET @CounterN=@CounterN + 1
			END
		END
	IF (dbo.lrtrim_isnull(@Повреждены_направляющие_информационных_полей)<>'' AND dbo.lrtrim_isnull(@Повреждены_направляющие_информационных_полей)<>'0') 
		BEGIN
		SET @Counter=cast(@Повреждены_направляющие_информационных_полей as int)
		SET @CounterN=1
		WHILE @CounterN<=@Counter
			BEGIN 
			INSERT INTO GUState_zam (type_id,state_id) values (6, (select id from @INSERTED))
			SET @CounterN=@CounterN + 1
			END
		END
	IF (dbo.lrtrim_isnull(@Поврежден_декоративный_колпак)<>'' AND dbo.lrtrim_isnull(@Поврежден_декоративный_колпак)<>'Нет' AND dbo.lrtrim_isnull(@Поврежден_декоративный_колпак)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (7, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Разбит_декоративный_колпак)<>'' AND dbo.lrtrim_isnull(@Разбит_декоративный_колпак)<>'Нет' AND dbo.lrtrim_isnull(@Разбит_декоративный_колпак)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (8, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Поврежден_инфокуб)<>'' AND dbo.lrtrim_isnull(@Поврежден_инфокуб)<>'Нет' AND dbo.lrtrim_isnull(@Поврежден_инфокуб)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (9, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Отсутствует_инфокуб)<>'' AND dbo.lrtrim_isnull(@Отсутствует_инфокуб)<>'Нет' AND dbo.lrtrim_isnull(@Отсутствует_инфокуб)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (10, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Наличие_ржавчины_на_опоре)<>'' AND dbo.lrtrim_isnull(@Наличие_ржавчины_на_опоре)<>'Нет' AND dbo.lrtrim_isnull(@Наличие_ржавчины_на_опоре)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (11, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Отслоение_краски_с_опоры )<>'' AND dbo.lrtrim_isnull(@Отслоение_краски_с_опоры )<>'Нет' AND dbo.lrtrim_isnull(@Отслоение_краски_с_опоры )<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (12, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Отслоение_краски_с_направляющих_информационных_полей)<>'' AND dbo.lrtrim_isnull(@Отслоение_краски_с_направляющих_информационных_полей )<>'Нет' AND dbo.lrtrim_isnull(@Отслоение_краски_с_направляющих_информационных_полей )<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (13, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Конструкция_испачкана_краской)<>'' AND dbo.lrtrim_isnull(@Конструкция_испачкана_краской)<>'Нет' AND dbo.lrtrim_isnull(@Конструкция_испачкана_краской)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (14, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Конструкция_оклеена_объявлениями)<>'' AND dbo.lrtrim_isnull(@Конструкция_оклеена_объявлениями)<>'Нет' AND dbo.lrtrim_isnull(@Конструкция_оклеена_объявлениями)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (15, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Загрязнение_конструкции)<>'' AND dbo.lrtrim_isnull(@Загрязнение_конструкции)<>'Нет' AND dbo.lrtrim_isnull(@Загрязнение_конструкции)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (16, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Отсутствуют_заглушки_отверстий_в_опоре)<>'' AND dbo.lrtrim_isnull(@Отсутствуют_заглушки_отверстий_в_опоре)<>'Нет' AND dbo.lrtrim_isnull(@Отсутствуют_заглушки_отверстий_в_опоре)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (17, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Не_благоустроена_территория)<>'' AND dbo.lrtrim_isnull(@Не_благоустроена_территория)<>'Нет' AND dbo.lrtrim_isnull(@Не_благоустроена_территория)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (18, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Отсутствие_реквизитов)<>'' AND dbo.lrtrim_isnull(@Отсутствие_реквизитов)<>'Нет' AND dbo.lrtrim_isnull(@Отсутствие_реквизитов)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (19, (select id from @INSERTED))
	IF (dbo.lrtrim_isnull(@Неправильные_реквизиты)<>'' AND dbo.lrtrim_isnull(@Неправильные_реквизиты)<>'Нет' AND dbo.lrtrim_isnull(@Отсутствие_реквизитов)<>'0') 
		INSERT INTO GUState_zam (type_id,state_id) values (20, (select id from @INSERTED))

		
END
		
          



END


