{{
    config(
        materialized = 'table'
    )
}}

{% set date_parts = ['year', 'month', 'week', 'day', 'dayofweek'] %}

select 
    time_id, 
    {% for part in date_parts -%}
        EXTRACT({{ part | upper }} from action_timestamp) as action_{{part}},
    {% endfor -%}
from {{ ref('cleaned_d_time') }} 
{{ limit_lines_dev(enviroment='prod')}}