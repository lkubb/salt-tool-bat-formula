{%- from 'tool-bat/map.jinja' import bat %}

{%- for user in bat.users | selectattr('dotconfig', 'defined') | selectattr('dotconfig') %}
bat configuration is synced for user '{{ user.name }}':
  file.recurse:
    - name: {{ user._bat.confdir }}
    - source:
      - salt://dotconfig/{{ user.name }}/bat
      - salt://dotconfig/bat
    - context:
        user: {{ user }}
    - template: jinja
    - user: {{ user.name }}
    - group: {{ user.group }}
    - file_mode: keep
    - dir_mode: '0700'
    - makedirs: True
{%- endfor %}
