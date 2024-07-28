-- https://school.programmers.co.kr/learn/courses/30/lessons/273712

SELECT ii.item_id, ii.item_name, ii.rarity
FROM item_info AS ii
LEFT JOIN item_tree AS t
ON ii.item_id = t.parent_item_id
WHERE t.parent_item_id IS NULL
ORDER BY ii.item_id DESC;
