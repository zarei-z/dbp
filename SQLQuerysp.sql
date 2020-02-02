/* example of stored procedure */

CREATE PROCEDURE SelectAllUsers
AS
SELECT * FROM users
GO;

CREATE PROCEDURE SelectAllUsersbyname @fname nvarchar(255)
AS
begin
SELECT * FROM users WHERE fname = @fname
end
go;

Create  PROCEDURE Getusername(

@userid INT                   --Input parameter ,  Studentid of the student 

)
AS
BEGIN
SELECT fname+' '+lname FROM users WHERE userid=@userid 
END 
go; 


create procedure selectmealsbyprice(
 @mealprice money
as
select * from meal where mealprice = @mealprice;
go; 



Create Procedure Insertplacerecord  /*insert value to the place table */
(
 @placeid int,
 @placename  Varchar(255),
 @typep     Varchar(255)
) 
As
 Begin
   Insert into place (placeid, placename, typep)
   Values(@placeid, @placename,@typep)
 End
 go;
	
	
   

	  SET ANSI_NULLS ON  
    GO  
    SET QUOTED_IDENTIFIER ON  
    GO  
     
    CREATE PROCEDURE stpUpdateuserByID  
    @userid int,    
    @birthdate date   
    AS  
    BEGIN    
        SET NOCOUNT ON;  
        UPDATE users  
        Set   
			birthdate=@birthdate
        Where userid = @userid
    END  
    GO  

	 SET ANSI_NULLS ON  
    GO  
    SET QUOTED_IDENTIFIER ON  
    GO  
     
    CREATE PROCEDURE deletedelivery  
        @staffnum  int  
    AS  
    BEGIN   
        SET NOCOUNT ON;  
      
        Delete from delivery
        where staffnum = @staffnum
          
    END  
    GO  