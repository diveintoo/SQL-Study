-- https://school.programmers.co.kr/learn/courses/30/lessons/59409

SELECT ANIMAL_ID, NAME, 
    CASE WHEN (SEX_UPON_INTAKE REGEXP 'Neutered|Spayed') THEN 'O'
    ELSE 'X'
    END AS 중성화
FROM ANIMAL_INS;
