SELECT name ,population, area from World 
where area >= 3000000 or  population >= 25000000;










-- Write your MySQL query statement below
SELECT distinct author_id as id from Views
where author_id = viewer_id order by id;






--Write your MySQL query statement below
SELECT tweet_id from Tweets
where LENGTH(content)>15;
