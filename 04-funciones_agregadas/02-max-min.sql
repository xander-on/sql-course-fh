

select
    count(*) as total_users,
    min(followers) as min_followers,
    max(followers) as max_followers,
    round(avg(followers), 0) as avg_followers,
    sum(followers) * 1.0 / count(*) as avg_manual
from
    users;


-- Group by
SELECT 
    first_name,
    last_name,
    followers
FROM users
-- WHERE followers = 4 or followers = 4999;
WHERE followers IN (4, 4999);



SELECT 
    COUNT(*) AS users_with_n_followers,
    followers
FROM 
    users
WHERE 
    -- followers IN (4, 4999)
    followers between 4500 and 4999
GROUP BY 
    followers
ORDER BY
    followers DESC;
