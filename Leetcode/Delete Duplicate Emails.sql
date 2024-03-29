-- 196. Delete Duplicate Emails

-- Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id.

delete p1 from person as p1
inner join person as p2
where p1.email = p2.email and p1.id > p2.id