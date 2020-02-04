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
	
Create Procedure UserAdd  /*insert value to the place table */
(
 @userid int,
 @fname  Varchar(255),
 @lname    Varchar(255)
) 
As
 Begin
   Insert into users(userid, fname, lname)
   Values(@userid, @fname,@lname)
 End
 go
	
Create Procedure OrderAdd  /*insert value to the order table */
(
 @sttafnum  int ,
 @userid	int,
 @placeid	int ,
 @del_pay	money ,
 @place_pay	money ,
 @phone1	char(10),
 @address1	nvarchar(50),
 @city1		varchar(50),
 @phone2	char(10),
 @address2	nvarchar(50),
 @city2		varchar(50),
 @mealid	int
) 
As
 Begin
   Insert into orders(staffnum ,userid, placeid ,del_pay , place_pay , phone1 , address1 , city1 , phone2 , address2 ,city2 , mealid)
   Values(@sttafnum , @userid ,@placeid , @del_pay , @place_pay , @phone1 , @address1 , @city1 , @phone2 ,@address2 , @city2 , @mealid)
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