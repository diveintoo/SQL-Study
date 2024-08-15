-- https://school.programmers.co.kr/learn/courses/30/lessons/284529

SELECT DEPT_ID, DEPT_NAME_EN, ROUND(AVG(SAL)) AS AVG_SAL
FROM HR_EMPLOYEES
JOIN HR_DEPARTMENT USING(DEPT_ID)
GROUP BY DEPT_ID
ORDER BY AVG_SAL DESC;
