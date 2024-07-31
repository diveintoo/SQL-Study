-- https://school.programmers.co.kr/learn/courses/30/lessons/59411

SELECT AO.ANIMAL_ID, AO.NAME
FROM ANIMAL_OUTS AO
LEFT JOIN ANIMAL_INS AI USING(ANIMAL_ID)
ORDER BY DATEDIFF(AO.DATETIME, AI.DATETIME) DESC
LIMIT 2;
