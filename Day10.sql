--  1141. User Activity for the Past 30 Days I ===============================================
select activity_date as day ,count(distinct user_id) as active_users from Activity 
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
group by activity_date;



--619. Biggest Single Number  ===============================================================
SELECT MAX(num) AS num
FROM (
  SELECT num
  FROM MyNumbers
  GROUP BY num
  HAVING COUNT(*) < 2
) AS t;
