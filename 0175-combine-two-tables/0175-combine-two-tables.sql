# Write your MySQL query statement below
Select p.firstName, p.lastName, a.city, a.state
from Person p
LEFT Join Address a on p.personID = a.personID;