-- 627. Swap Salary

-- Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.

update salary
set sex = if(sex = 'm', 'f','m')