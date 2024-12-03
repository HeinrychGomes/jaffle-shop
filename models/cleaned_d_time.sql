{{
    config(
        materialized='ephemeral'
    )
}}

select 
    time_id,
    {% if target.type == 'postgres' -%}
        action_timestamp::TIMESTAMP 
    {% elif target.type == 'bigquery' -%}
        timestamp(action_timestamp)
    {%- else -%}
        action_timestamp
    {%- endif -%}
    as action_timestamp,
from {{ source('postgres', 'date_time')}}