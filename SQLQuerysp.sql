/* example of stored procedure */

CREATE PROCEDURE SelectAllUsers   /*return all users informations*/
AS
SELECT * FROM users
GO

CREATE PROCEDURE SelectAllUsersbyname @fname nvarchar(255)  /*find all user with first  */
AS
begin
SELECT * FROM users WHERE fname = @fname
end
go

Create  PROCEDURE Getusername(   /*find user with userid*/

@userid INT                   

)
AS
BEGIN
SELECT fname+' '+lname FROM users WHERE userid=@userid 
END 
go


create procedure selectmealsbyprice(  /*find all meals with price */
 @mealprice money
 )
as
select * from meal where mealprice = @mealprice;
go



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
 go
	
	
    CREATE PROCEDURE stpUpdateuserByID(  /*update the birthdate of user with user id */

    @userid int,    
    @birthdate date   
	)
    AS  
    BEGIN    
        SET NOCOUNT ON;  
        UPDATE users  
        Set   
			birthdate=@birthdate
        Where userid = @userid
    END  
    GO  

     
    CREATE PROCEDURE deletedelivery (    /*delete delivery*/
        @staffnum  int  
		)
    AS  
    BEGIN   
        SET NOCOUNT ON;  
      
        Delete from delivery
        where staffnum = @staffnum
          
    END  
    GO  