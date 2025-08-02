-- 1789. Primary Department for Each Employee
SELECT employee_id,department_id from Employee
where Primary_flag='Y'
union 
SELECT employee_id,department_id from Employee
group by employee_id 
having count(employee_id)= 1;



--Triangle Judgement
SELECT x  , y  , z  ,(case when x + y > z and x + z > y and y + z > x then 'Yes' else 'No' end ) as triangle
from Triangle ;


-- 180. Consecutive Numbers
SELECT distinct num as ConsecutiveNums from  (
    select num,lead(num,1) over() as num1,lead(num,2) over() as num2  from Logs ) as  temp
where num=num1 and num=num2 ;


--You want the latest price for each product as of '2019-08-16'
SELECT p.product_id,
       COALESCE(latest.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN (
    SELECT product_id, new_price
    FROM Products
    WHERE (product_id, change_date) IN (
        SELECT product_id, MAX(change_date) AS max_date
        FROM Products
        WHERE change_date <= '2019-08-16'
        GROUP BY product_id
    )
) latest
ON p.product_id = latest.product_id;
