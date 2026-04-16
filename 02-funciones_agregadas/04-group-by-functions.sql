use sql_course;

SELECT 
    count(*) as total,
    SUBSTRING(
        email, 
        CHARINDEX('@', email) + 1, 
        LEN(email)
    ) AS domain
FROM 
    users
GROUP BY
    SUBSTRING(
        email, 
        CHARINDEX('@', email) + 1, 
        LEN(email)
    )
having 
    count(*) > 1;



-- select email from users where email like '%google.com'