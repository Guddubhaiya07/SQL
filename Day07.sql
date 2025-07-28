-- Write your MySQL query statement below
SELECT * from Cinema 
where id%2 !=0 and description != 'boring' 
order by rating desc;  
--where description != 'boring'  ; 


--  Average Selling Price
SELECT p.product_id,
coalesce (ROUND(SUM(p.price * u.units) * 1.0 / NULLIF(SUM(u.units), 0), 2),0) AS average_price from Prices p
 left join UnitsSold  u on p.product_id=u.product_id 
 and u.purchase_date BETWEEN p.start_date and p.end_date
 group by p.product_id ;
