# vim: ft=sls

{#-
    Removes the bat package.
    Has a dependency on `tool_bat.config.clean`_.
#}

{%- set tplroot = tpldir.split("/")[0] %}
{%- set sls_config_clean = tplroot ~ ".config.clean" %}
{%- from tplroot ~ "/map.jinja" import mapdata as bat with context %}

include:
  - {{ sls_config_clean }}


bat is removed:
  pkg.removed:
    - name: {{ bat.lookup.pkg.name }}
    - require:
      - sls: {{ sls_config_clean }}
