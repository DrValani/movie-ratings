SELECT 
    movie_id,
    MAX(rating) as max_rating,
    MIN(rating) as min_rating,
    AVG(rating) as average_rating
FROM {{ ref('ratings_raw')}}
GROUP BY movie_id
