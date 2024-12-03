{{ config(
    materialized='ephemeral' 
) }}

{% set start_date = "'2024-01-01'" %}
{% set end_date = "'2024-12-31'" %}
{% set datepart = "day" %}

{{ date_spine(datepart, start_date, end_date) }}
