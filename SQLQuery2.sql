/*query 1- fname , lname afradi ke ghazaye ba code 212 ra search karde and*/
select fname , lname
from users , search
where users.userid = search.userid and mealid = 212;


/*query 2- fname , lname afradi ke az restaurant ghaza sefaresh dade and*/
select fname , lname
from users , orders , place
where users.userid = orders.userid and place.placeid = orders.placeid and typep = 'restaurant';


/*guery 3- placename hayii ke meal ba code 202 ra darand*/
select placename
from place , have
where place.placeid = have.placeid and mealid = 202;


/*query 4- fname , lname delivery hayii ke ghazaye ba code 206 ra tahvil dade and*/
select staff_fname , staff_lname
from delivery , orders
where delivery.staffnum = orders.staffnum and mealid = 206;


/*query 5- tamam ghaza hayi ke gheymateshan 9000 ast*/
select mealid , mealname
from meal
where mealprice = 9000;


/*query 6- name , fname afradi ke hade aghal 1 ghaza ra sefaresh dade and*/
select fname , lname
from users
where users.userid in (select orders.userid
                       from orders);


/*query 7- name , fname tamam afradi ke az cafe 'bon bast' ya restaurant 'danzhe' ya hardo ghaza sefaresh dade and*/
select fname , lname
from users , orders , place
where users.userid = orders.userid and place.placeid = orders.placeid and placename = 'danzhe' and typep = 'restaurant'
union
select fname , lname
from users , orders , place
where users.userid = orders.userid and place.placeid = orders.placeid and placename = 'bon bast' and typep = 'cafe';


/*query 8- etelaate placename i ke bishtarin gheymate ghaza ra darad*/
select *
from place , have , meal
where place.placeid = have.placeid and have.mealid = meal.mealid and mealprice>= all(select mealprice
                                                                                     from meal);

/*query 09- dar har placename chand noe ghaza serv mishavad?*/
select place.placeid ,place.placename, typep, count(*) as 'number of foods thad served'
from place , have , meal
where place.placeid = have.placeid and have.mealid = meal.mealid
group by place.placeid , place.placename , typep;


/*query 10- baraye place hayii ke tedad ghazahayi ke serv mikonand bozorgtar mosavi 3 ta bashad placename va tedad afradi ra zekr konid ke az anja sefaresh dade and*/
select p.placeid , p.placename , count(u.userid) as 'number of people who order from it'
from place p, users u, orders o
where  p.placeid = o.placeid and u.userid = o.userid and (p.placeid in(select placeid
                                                                       from have group by placeid
																	   having count(mealid)>=3))
group by p.placeid , p.placename;


/*query 11-baraye place hayii ke tedad ghazahayi ke serv mikonand bishtar az 2 ta bashad va tedad afradi ke az an sefaresh gerefte and niz bishtar az 2 bashad placename va placeid ra zekr konid*/
select p.placeid , p.placename
from place p, users u, orders o
where  p.placeid = o.placeid and u.userid = o.userid and (p.placeid in(select placeid
                                                                       from have 
																	   group by placeid
																	   having count(mealid)>2))
group by p.placeid , p.placename
having Count(u.userid)>=2;
																	  

											
/*query 12- average price ghazahaye cafeye teras*/
select max(m.mealprice)
from place p, have h, meal m
where p.placeid = h.placeid and h.mealid = m.mealid and p.placename = 'teras' and p.typep = 'cafe';


/*query 13- name va fname afradi ke hade aghal 3 bar ghaza sefaresh dade and*/
select fname , lname ,users.userid
from users , orders , meal
where users.userid = orders.userid and orders.mealid = meal.mealid
group by users.userid , fname , lname
having count(*) >= 3;


/*query 14- fname , lname , userid afradi ke ya meali ra search karde and ya tedade kamtar az 3 ghaza sefaresh dade and*/
select fname , lname , userid
from users
where users.userid in ((select search.userid
                         from search))
						 or
						 users.userid in ((select u.userid
						                   from users u , orders 
										   where u.userid = orders.userid
										   group by u.userid
										   having count(*)<3));

/*query 15- fname va lname tamam afradi ke tamam chizhayi ke 'homa hasani' sefaresh dade ra sefaresh dade and*/

select fname , lname , userid
from users 
where not exists ((select orders.mealid
                  from  orders , users u
				  where u.userid = orders.userid and fname = 'homa' and lname = 'hasani')
				  except
				  (select orders.mealid
				  from  orders
				  where users.userid = orders.userid));
