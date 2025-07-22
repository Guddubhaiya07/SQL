--Write your MySQL query statement below
SELECT Product.product_name,Sales.year,Sales.price FROM Sales
join Product 
ON Sales.product_id =Product.product_id ;



--   Write your MySQL query statement below
SELECT Visits.customer_id,count(*) as count_no_trans from  Visits
left join Transactions ON  Visits.visit_id = Transactions.visit_id
where Transactions.transaction_id is null group  by Visits.customer_id  ;




-- Write your MySQL query statement below
SELECT w1.id from Weather w1
join Weather w2
ON  datediff(w1.recordDate,w2.recordDate)=1    where w1.temperature  > w2.temperature ;
