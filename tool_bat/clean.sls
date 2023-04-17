# vim: ft=sls

{#-
    *Meta-state*.

    Undoes everything performed in the ``tool_bat`` meta-state
    in reverse order.
#}

include:
  - .config.clean
  - .package.clean
