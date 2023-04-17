# vim: ft=sls

{#-
    Manages the bat package configuration by

    * recursively syncing from a dotfiles repo

    Has a dependency on `tool_bat.package`_.
#}

include:
  - .sync
