-- 1484. Group Sold Products By The Date

-- Write an SQL query to find for each date the number of different products sold and their names.
--
-- The sold products names for each date should be sorted lexicographically.

select sell_date,
       count(distinct product) as num_sold,
       group_concat(distinct product order by product) as products
from activities
group by sell_date
order by sell_date