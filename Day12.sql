1070. Product Sales Analysis III

SELECT s.product_id,m.first_year, s.quantity,s.price from Sales s 
--SELECT product_id, min(year) from Sales;
join 
(SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id) m
    on s.product_id=m.product_id and s.year=m.first_year;
