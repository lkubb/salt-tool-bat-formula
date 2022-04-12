# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as bat with context %}


bat is installed:
  pkg.installed:
    - name: {{ bat.lookup.pkg.name }}
    - version: {{ bat.get('version') or 'latest' }}
    {#- do not specify alternative return value to be able to unset default version #}

bat setup is completed:
  test.nop:
    - name: Hooray, bat setup has finished.
    - require:
      - pkg: {{ bat.lookup.pkg.name }}
