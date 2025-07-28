-- Write your MySQL query statement below
SELECT   product_id from Products 
where (low_fats ='Y') and (recyclable='Y');


--secound code this day 1

SELECT name FROM Customer 
WHERE referee_id IS NULL OR referee_id != 2;
