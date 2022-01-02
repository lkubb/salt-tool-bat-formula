{%- from 'tool-bat/map.jinja' import bat %}

include:
  - .package
{%- if bat.users | selectattr('dotconfig', 'defined') | selectattr('dotconfig') %}
  - .configsync
{%- endif %}
