# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as bat with context %}


{%- for user in bat.users %}

bat config file is cleaned for user '{{ user.name }}':
  file.absent:
    - name: {{ user['_bat'].conffile }}

bat config dir is absent for user '{{ user.name }}':
  file.absent:
    - name: {{ user['_bat'].confdir }}
{%- endfor %}
