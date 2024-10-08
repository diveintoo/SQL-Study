-- https://school.programmers.co.kr/learn/courses/30/lessons/151139

WITH SELECTED_CARS AS (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE MONTH(START_DATE) BETWEEN '08' AND '10'
    # START_DATE >= '2022-08-01' and START_DATE <= '2022-10-31'
    GROUP BY CAR_ID
    HAVING COUNT(CAR_ID) >= 5
)

SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(CAR_ID) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID IN (
    SELECT *
    FROM SELECTED_CARS
) AND MONTH(START_DATE) BETWEEN '08' AND '10'
GROUP BY MONTH, CAR_ID
ORDER BY MONTH, CAR_ID DESC;
