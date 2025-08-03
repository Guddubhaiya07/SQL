--1204. Last Person to Fit in the Bus

--Write your MySQL query statement below
select person_name from (SELECT  

person_name ,
sum(weight) OVER (ORDER BY turn) as Total_Weight 
from Queue
)  as sub 
where total_Weight <=1000 
ORDER BY total_weight DESC
LIMIT 1; 

--------------------------------------------------
SELECT 
    c.category,
    COUNT(a.category) AS accounts_count
FROM (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
) AS c
LEFT JOIN (
    SELECT 
        CASE 
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END AS category
    FROM Accounts
) AS a
ON c.category = a.category
GROUP BY c.category;
