{%- from 'tool-bat/map.jinja' import bat %}

{%- if bat.users | selectattr('dotconfig') %}
include:
  - .configsync
{%- endif %}

bat is updated to latest package:
{%- if grains['kernel'] == 'Darwin' %}
  pkg.installed: # assumes homebrew as package manager. homebrew always installs the latest version, mac_brew_pkg does not support upgrading a single package
{%- else %}
  pkg.latest:
{%- endif %}
    - name: bat
