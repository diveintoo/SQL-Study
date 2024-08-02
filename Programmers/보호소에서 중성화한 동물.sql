-- https://school.programmers.co.kr/learn/courses/30/lessons/59045

# IN 사용
SELECT ANIMAL_ID, ANIMAL_TYPE, NAME
FROM ANIMAL_INS
WHERE SEX_UPON_INTAKE LIKE 'Intact%' 
AND ANIMAL_ID IN (SELECT ANIMAL_ID 
                  FROM ANIMAL_OUTS 
                  WHERE SEX_UPON_OUTCOME NOT LIKE 'Intact%')
ORDER BY ANIMAL_ID;

# JOIN 사용
SELECT A.ANIMAL_ID,A.ANIMAL_TYPE, A.NAME
FROM ANIMAL_INS A
JOIN ANIMAL_OUTS B
USING(ANIMAL_ID)
WHERE A.SEX_UPON_INTAKE LIKE 'INTACT%'
AND B.SEX_UPON_OUTCOME NOT LIKE 'INTACT%'
ORDER BY A.ANIMAL_ID;
