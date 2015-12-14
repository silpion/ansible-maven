# ansible-maven

Install Maven in latest version from upstream.

## Architecture

The role downloads redistributable packages from the internet
to the hosts local filesystem before it may install those on
any number of managed nodes in the local network.

## Requirements

None.

## Role Variables

* ``maven_version``: Maven version to install (default: ``3.3.9``)
* ``maven_mirror``: Maven mirror to download Maven from (default: ``http://archive.apache.org/dist/maven/binaries/``)
* ``maven_install_dir``: Base installation directory for any Maven distribution (default: ``/opt/maven``)
* ``maven_redis_sha256sum``: SHA256 sum for the downloaded Maven redistributable package (default: ``6e3e9c949ab4695a204f74038717aa7b2689b1be94875899ac1b3fe42800ff82``)

## Role facts

This role sets persistent local facts for other roles to use via

* facts.d ``ansible_local.maven.general.maven_version``
* facts.d ``ansible_local.maven.general.maven_home``

## Dependencies

This role depends on ``groover.util`` role. This is configured
for ``ansible-galaxy install`` in **requirements.yml**.

**NOTE**: Requirements are installed as virtual user ``silpion``
(``silpion.util``).

Be sure to install required roles with

    ansible-galaxy install --role-file requirements.yml

* [groover.util](https://github.com/silpion/ansible-util)

## Example playbook

    - hosts: ci
      roles:
        - { role: ansible-maven }

## License

Apache Version 2.0

## Integration testing

This role provides integration tests using the Ruby RSpec/serverspec framework
with a few drawbacks at the time of writing this documentation.

- Currently supports ansible_os_family == 'Debian' only.

Running integration tests requires a number of dependencies being
installed. As this role uses Ruby RSpec there is the need to have
Ruby with rake and bundler available.

    # install role specific dependencies with bundler
    bundle install

<!-- -->

    # run the complete test suite with Docker
    rake suite

<!-- -->

    # run the complete test suite with Vagrant
    RAKE_ANSIBLE_USE_VAGRANT=1 rake suite


## Author information

Mark Kusch @mark.kusch silpion.de


### Contributors

* [ludovicc](https://github.com/ludovicc)


<!-- vim: set ts=4 sw=4 et nofen: -->
