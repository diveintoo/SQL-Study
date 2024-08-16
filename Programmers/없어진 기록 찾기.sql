-- https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 차집합!

SELECT o.ANIMAL_ID, o.NAME
FROM ANIMAL_OUTS o
LEFT JOIN ANIMAL_INS i USING(ANIMAL_ID)
WHERE i.ANIMAL_ID IS NULL;
