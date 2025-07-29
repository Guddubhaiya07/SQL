--Find Followers Count

SELECT user_id, count(follower_id) as followers_count from Followers
group by User_id
order by user_id ;
\


--596. Classes With at Least 5 Students
select  class from Courses

group by class 
having count(*)>=5;
