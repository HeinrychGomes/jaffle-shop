{{ 
    config(
        materialized='table',
        tags=['dim']
    )
}}

select * from transactional.city