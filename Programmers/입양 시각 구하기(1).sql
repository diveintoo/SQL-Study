-- https://school.programmers.co.kr/learn/courses/30/lessons/59412

WITH RECURSIVE hours AS (
    SELECT 9 AS h
    UNION ALL
    SELECT h+1 FROM hours WHERE h < 19
)

SELECT h AS HOUR, COUNT(*) AS COUNT
FROM hours
LEFT JOIN ANIMAL_OUTS
ON h = HOUR(DATETIME)
GROUP BY h
ORDER BY h;
