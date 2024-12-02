{#
    Crie um código sql   
#}

{% macro name(args) %}
    
    {% if target.name == 'default' %} -- validar se é prod ou developer
    
        limit 100
    
    {% endif %}

{% endmacro %}