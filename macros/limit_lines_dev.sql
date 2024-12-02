{% macro limit_lines_dev(enviroment='dev') %}
    {%- if enviroment == 'dev' -%}
        offset 50
    {%- endif -%}
{% endmacro %}