SELECT 
    SPLIT_PART(raw, '::', 1) AS user_id,
    SPLIT_PART(raw, '::', 2) AS gender,
    CAST(SPLIT_PART(raw, '::', 3) AS INTEGER) AS age,
    SPLIT_PART(raw, '::', 4) AS occupation,
    SPLIT_PART(raw, '::', 5) AS zip_code
FROM {{ ref('users_dat') }}