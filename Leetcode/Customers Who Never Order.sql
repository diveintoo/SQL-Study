-- 183. Customers Who Never Order

-- Write an SQL query to report all customers who never order anything.

SELECT name AS Customers FROM customers c
LEFT JOIN orders o ON c.id = o.customerId
WHERE c.id NOT IN(
    SELECT customerId
    FROM orders)