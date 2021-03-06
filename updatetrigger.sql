USE [snapp_food]
GO
/****** Object:  Trigger [dbo].[usersupdates]    Script Date: 15/11/1398 12:40:24 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[usersupdates] 
   ON  [dbo].[users] 
   AFTER update
AS 
BEGIN
	
	SET NOCOUNT ON;

       DECLARE @userid INT
	   DECLARE @taction VARCHAR(50)
 
       SELECT @userid = INSERTED.userid     
       FROM INSERTED

	   IF UPDATE(fname)
       BEGIN
              SET @taction = 'Updated first Name'
       END

	   IF UPDATE(lname)
       BEGIN
              SET @taction = 'Updated last Name'
       END

	   IF UPDATE(birthdate)
       BEGIN
              SET @taction = 'Updated birthdate'
       END

	   IF UPDATE(dis_code)
       BEGIN
              SET @taction = 'Updated dis code'
       END

 
       INSERT INTO userlog
       VALUES(@userid, 'updated')
END
