-- https://leetcode.com/problems/invalid-tweets/submissions/1220072794/?envType=study-plan-v2&envId=top-sql-50

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
