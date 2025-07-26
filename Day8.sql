-- Project Employees I
SELECT p.project_id ,round(avg(e.experience_years),2) as average_years from Project p
join Employee e on p.employee_id =e.employee_id 
group by p.project_id;



-- Percentage of Users Attended a Contest
SELECT r.contest_id,
ROUND(COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) as percentage from Users u
left join Register r on u.user_id=r.user_id 
where r.contest_id is not null
group by r.contest_id
order by percentage Desc,r.contest_id asc ;
