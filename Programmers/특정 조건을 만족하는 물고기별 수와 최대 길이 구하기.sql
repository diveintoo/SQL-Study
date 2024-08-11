-- https://school.programmers.co.kr/learn/courses/30/lessons/298519

-- 평균 길이가 33cm 이상인 물고기들 종류별 최대 길이, 잡은 수
SELECT COUNT(FISH_TYPE) FISH_COUNT, MAX(LENGTH) MAX_LENGTH, FISH_TYPE
FROM FISH_INFO
GROUP BY FISH_TYPE
HAVING AVG(COALESCE(LENGTH, 10)) >= 33
ORDER BY FISH_TYPE;
