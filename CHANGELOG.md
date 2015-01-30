# 0.6.0

Marc Rohlfs (5):

* Apply mirror URL to the new path structure on the Apache download mirror.
* Introduced new predefined versions: 3.2.5 and 2.2.1
* Variables that should be overwritable must be moved to defaults/main.yml.
* Fixed typo in comment.
* Introduced further predefined versions 3.1.1 and 3.0.5

# 0.5.4

Mark Kusch (2):
      Do not run test playbook with sudo: yes
      Ensure tasks define sudo: yes when requiring superuser privileges

# 0.5.3

Mark Kusch (2):
      Update integration testing to work with Serverspec 2.N
      [github#3] Add support for Linuxmint

# 0.5.2

Marc Rohlfs (2):
      Fixed typo in role variables documentation.
      Fixed Maven home path in Ansible fact.

# 0.5.1

Marc Rohlfs (1):
      Configuration for Maven version 3.2.2

Mark Kusch (3):
      Allow to overwrite shasum for unknown maven version
      Add assertion on usable version variables
      One-step assertion for version vars

# 0.5.0

Marc Rohlfs (1):
      Qualified patterns for files to be ignored by Git.

Mark Kusch (6):
      Update ubuntu-upstart-sshkey container to version 1.0.0
      Copy installation archive once
      Use correct path variable for unarchive module
      (local) statements local_action tasks are not neccessary
      Manage maven version data
      Set local facts for third party roles to use

# 0.4.0

Mark Kusch (4):
      Update variables documentation
      Move vars out of ansible_ variable scope
      Add integration tests
      Update to latest stable maven version 3.2.3

# 0.3.2

* Install maven in version 3.2.1

# 0.0.1

* Initial commit


<!-- vim: set nofen ts=4 sw=4 et: -->
