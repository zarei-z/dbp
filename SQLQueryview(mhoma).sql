/*a view to return all foods that homa hasani has ordered*/
CREATE VIEW mhoma
AS
SELECT orders.mealid
FROM users , orders
WHERE users.userid = orders.userid and fname = 'homa' and lname = 'hasani';