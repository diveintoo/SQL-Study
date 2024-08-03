-- https://school.programmers.co.kr/learn/courses/30/lessons/59413

WITH RECURSIVE cte AS
(
  SELECT 0 AS h
  UNION ALL
  SELECT h + 1 FROM cte WHERE h < 23
)

SELECT h AS HOUR, COUNT(ANIMAL_ID) AS COUNT
FROM cte LEFT JOIN ANIMAL_OUTS ON h = HOUR(DATETIME)
GROUP BY h
ORDER BY h;
