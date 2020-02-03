/*deleting a meal which doesnt serve anymore*/
CREATE PROCEDURE deletefood
as
begin
delete from meal
where mealid is null
end
go

/*showing the list of all ordered foods*/
CREATE PROCEDURE showmeal
as
begin
select * from meal , orders
where meal.mealid = orders.mealid
end
go