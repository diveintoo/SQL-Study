-- 1667. Fix Names in a Table

-- Write an SQL query to fix the names so that only the first character is uppercase and the rest are lowercase.

select user_id,
       concat(substring(upper(name), 1, 1), substring(lower(name), 2) as name
from users
order by user_id