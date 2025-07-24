-- Write your MySQL query statement below
 SELECT Employee.name ,Bonus.bonus from Employee 
left join Bonus ON Employee.empid = Bonus.empid 
where  Bonus.bonus is null or Bonus.bonus < 1000 ;

-- Write your MySQL query statement below

--SELECT st.student_id ,st.student_name ,sb.subject_name from Students st
-- cross join Subjects sb ;

--Select student_id ,subject_name, count(*) from Examinations 
#--group  by student_id,subject_name ;


SELECT 
    st.student_id,
    st.student_name,
    sb.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM 
    Students st
CROSS JOIN 
    Subjects sb
LEFT JOIN 
    Examinations e
    ON st.student_id = e.student_id AND sb.subject_name = e.subject_name
GROUP BY 
    st.student_id,
    st.student_name,
    sb.subject_name
ORDER BY 
    st.student_id,
    sb.subject_name;
-  --order by st.student_id,sb.subject_name;




