/*writing the query number 15 with using view instead*/
SELECT users.userid
from users
where not exists ( ( select *
                     from mhoma)
					 except
					 (select orders.mealid 
					  from orders
					  where users.userid = orders.userid));

/*writing the query 15 but the users that ordered just and only homa hasani's meals*/
SELECT users.userid , users.fname , users.lname
FROM users
where  not exists ( (select orders.mealid
				    from orders
					where users.userid = orders.userid )
					except
					(select *
					 from mhoma)) and users.userid in (select *
					                                   from mhoma2);
														                              
					
																					