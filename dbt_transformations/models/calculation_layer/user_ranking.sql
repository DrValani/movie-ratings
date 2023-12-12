SELECT user_id, movie_id, rating
FROM (
    SELECT 
        user_id,
        movie_id, 
        rating,
        ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY rating DESC) AS rn
    FROM {{ ref('ratings_raw')}}
) ranked
WHERE rn <= 3