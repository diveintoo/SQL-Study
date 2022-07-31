-- 608. Tree Node

-- Write an SQL query to report the type of each node in the tree.
--
-- Return the result table ordered by id in ascending order.

select id, 'Root' as type
from Tree
where p_id is null

union

select id, 'Inner' as type
from Tree
where p_id is not null
  and id in (
      select p_id from Tree
    )

union

select id, 'Leaf' as type
from Tree
where p_id is not null
  and id not in (
      select distinct p_id from Tree where p_id is not null
    )

order by id