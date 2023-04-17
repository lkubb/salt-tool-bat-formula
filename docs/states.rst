Available states
----------------

The following states are found in this formula:

.. contents::
   :local:


``tool_bat``
~~~~~~~~~~~~
*Meta-state*.

Performs all operations described in this formula according to the specified configuration.


``tool_bat.package``
~~~~~~~~~~~~~~~~~~~~
Installs the bat package only.


``tool_bat.config``
~~~~~~~~~~~~~~~~~~~
Manages the bat package configuration by

* recursively syncing from a dotfiles repo

Has a dependency on `tool_bat.package`_.


``tool_bat.clean``
~~~~~~~~~~~~~~~~~~
*Meta-state*.

Undoes everything performed in the ``tool_bat`` meta-state
in reverse order.


``tool_bat.package.clean``
~~~~~~~~~~~~~~~~~~~~~~~~~~
Removes the bat package.
Has a dependency on `tool_bat.config.clean`_.


``tool_bat.config.clean``
~~~~~~~~~~~~~~~~~~~~~~~~~
Removes the configuration of the bat package.


