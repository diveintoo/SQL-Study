-- 1581. Customer Who Visited but Did Not Make Any Transactions

-- Write an SQL query to find the IDs of the users who visited without making any transactions
-- and the number of times they made these types of visits.

SELECT customer_id, COUNT(customer_id) AS count_no_trans
FROM Visits v LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY customer_id