-- https://school.programmers.co.kr/learn/courses/30/lessons/293261

SELECT fi.ID, ni.FISH_NAME, fi.LENGTH
FROM (
    SELECT *, RANK() OVER(PARTITION BY FISH_TYPE ORDER BY LENGTH DESC) r
    FROM FISH_INFO
) fi
JOIN FISH_NAME_INFO ni
ON ni.FISH_TYPE = fi.FISH_TYPE AND r = 1
ORDER BY ID;
