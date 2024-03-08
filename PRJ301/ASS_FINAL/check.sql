
insert into OrderDetails_HE176167(orderID, product_id, quantity) values(?,?,?)
select * from Products_HE176167
select * from OrderDetails_HE176167
select * from Orders_HE176167

delete from OrderDetails_HE176167
delete from Orders_HE176167
DBCC CHECKIDENT ('OrderDetails_HE176167', RESEED, 0);
DBCC CHECKIDENT ('Orders_HE176167', RESEED, 0);
select * from Orders_HE176167 where user_id = ?

select * from OrderDetails_HE176167 where orderID = 1

select  p.image_url,p.product_name, p.price, o.quantity from OrderDetails_HE176167 o
join Products_HE176167 p on o.product_id = p.product_id
join Orders_HE176167 oo on oo.orderID = o.orderID
where oo.orderID = 1

	
