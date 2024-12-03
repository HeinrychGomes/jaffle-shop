{{
    config(
        materialized = 'table'
    )
}}

SELECT 
    UNIX_SECONDS(CAST(date_day AS TIMESTAMP)) AS time_id, 
    CAST(date_day AS TIMESTAMP) AS action_timestamp, 
    EXTRACT(WEEK FROM date_day) AS week_id, 
    EXTRACT(MONTH FROM date_day) AS month_id, 
    EXTRACT(YEAR FROM date_day) AS year_id, 
    EXTRACT(DAY FROM date_day) AS day_id
FROM {{ ref('create_date_time') }} 
