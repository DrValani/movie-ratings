SELECT 
    CAST(SPLIT_PART(raw, '::', 1) AS INTEGER) AS user_id,
    CAST(SPLIT_PART(raw, '::', 2) AS INTEGER) AS movie_id,
    CAST(SPLIT_PART(raw, '::', 3) AS INTEGER) AS rating,
    SPLIT_PART(raw, '::', 4) AS timestamp
FROM {{ ref('ratings_dat') }}