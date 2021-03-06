USE [STPV34V]
GO
/****** Object:  Trigger [dbo].[Class_teacherDelete]    Script Date: 26.02.2020 20:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[Class_teacherDelete] -- СОЗДАЕМ ТРИГГЕР И ИМЯ
ON [dbo].[classes] -- В ТАБЛИЦЕ
AFTER DELETE -- ПОСЛЕ УДАЛЕНИЯ
AS -- КАК
INSERT INTO dbo.History(Operation,Account) -- ВСТАВИТЬ ДАННЫЕ В (СТОЛБИКИ) INSERT INTO table (columns) VALUES (values)
SELECT 'Удален учитель' + CONVERT(nvarchar(200),teacher) + ' ' + CONVERT(nvarchar(200),id), 'id'+CONVERT(nvarchar(200),id)
FROM DELETED