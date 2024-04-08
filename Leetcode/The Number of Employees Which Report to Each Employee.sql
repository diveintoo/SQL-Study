-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

SELECT 
    mng.employee_id,
    mng.name,
    COUNT(emp.employee_id) AS reports_count,
    ROUND(AVG(emp.age)) AS average_age
FROM Employees emp
JOIN Employees mng ON emp.reports_to = mng.employee_id
GROUP BY mng.employee_id
ORDER BY mng.employee_id;
