SELECT 
    CAST(SPLIT_PART(raw, '::', 1) AS INTEGER) AS movie_id,
    SPLIT_PART(raw, '::', 2) AS title,
    SPLIT_PART(raw, '::', 3) AS genre
FROM {{ ref('movies_dat') }}
