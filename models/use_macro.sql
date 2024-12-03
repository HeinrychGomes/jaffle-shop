{{ 
    config(
        materialized='table',
        tags=['dim']
    )
}}

select * from silver.accounts