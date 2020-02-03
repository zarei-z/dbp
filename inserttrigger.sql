USE [snapp_food]
GO
/****** Object:  Trigger [dbo].[usersinsert]    Script Date: 15/11/1398 12:40:18 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[usersinsert] 
   ON  [dbo].[users] 
   AFTER insert
AS 
BEGIN
	
	SET NOCOUNT ON;

       DECLARE @userid INT
 
       SELECT @userid = INSERTED.userid     
       FROM INSERTED
 
       INSERT INTO userlog
       VALUES(@userid, 'Inserted')
END
