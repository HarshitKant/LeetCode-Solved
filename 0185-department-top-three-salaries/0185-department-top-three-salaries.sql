# Write your MySQL query statement below

with cte1 as (select e.id as Employee_id,
e.name as Employee,
e.salary as Salary,
e.departmentId as Department_id,
d.name as Department,
dense_rank() over (partition by e.departmentID order by salary desc) as rn
from Employee as e
join Department as d 
on e.departmentId= d.id
ORDER BY E.ID)
select Department,
Employee,
Salary
from cte1
where rn <= 3

