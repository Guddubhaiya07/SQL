-- this is code for solving to the problem 
SELECT name from Employee 
where id in (SELECT managerId from Employee
where managerId is not null 
group by managerId
having count(*) >=5); 


-- Write your MySQL query statement below

 SELECT s.user_id ,COALESCE(round(count(case when c.action = 'confirmed' then 1  end )*1.0/
 nullif(count(c.action),0),2 ),0)
 as confirmation_rate from Signups s
 left join Confirmations c 
 on s.user_id = c.user_id 
 group by s.user_id
 order by s.user_id; 
