/*making the whole query 15 a view for using it in another examples*/
/* actualy a view that returns userid of users that has ordered all foods that homa hasani has ordered*/
CREATE VIEW mhoma2
AS
SELECT users.userid
from users
where not exists ( ( select *
                     from mhoma)
					 except
					 (select orders.mealid 
					  from orders
					  where users.userid = orders.userid));