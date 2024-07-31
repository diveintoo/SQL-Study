-- https://school.programmers.co.kr/learn/courses/30/lessons/59047

-- 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회
-- 이름 순으로 조회, 이름의 대소문자는 구분 X

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog' AND NAME LIKE '%el%'
ORDER BY NAME;
