-- https://school.programmers.co.kr/learn/courses/30/lessons/59408

SELECT COUNT(DISTINCT NAME) AS count
FROM ANIMAL_INS;
-- COUNT(field_name)은 알아서 null인 값을 제외하고 카운트해준다!
