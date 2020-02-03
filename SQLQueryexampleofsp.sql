
exec SelectAllUsers ;  /*return all users informations*/

EXEC SelectAllUsersbyname @fname = "homa"; /*find all user with first name =homa */

exec selectmealsbyprice 9000 ; /*find all meals with price 9000*/

exec Getusername 303;  /*find user with userid*/
  

exec Insertplacerecord   617 ,aghajoon , resturant ; /*insert record to place table*/


EXEC stpUpdateuserByID   300 , '1356-12-10' ;  /*update the birthdate of user with user id */


EXEC deletedelivery   130 ;  /*delete delivery*/


