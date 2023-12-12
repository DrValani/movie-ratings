SELECT user_id, movie_id, rating
FROM (
    SELECT 
        user_id,
        movie_id, 
        rating,
        ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY rating DESC) AS rn
    FROM {{ ref('rating')}}
) ranked
WHERE rn <= 3