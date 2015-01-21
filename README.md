# ansible-maven

Install Maven in latest version from upstream.

## Architecture

The role downloads redistributable packages from the internet
to the hosts local filesystem before it may install those on
any number of managed nodes in the local network.

## Requirements

None.

## Role Variables

* ``maven_version``: Maven version to install (default: ``3.2.3``)
* ``maven_mirror``: Maven mirror to download Maven from (default: ``http://archive.apache.org/dist/maven/binaries/``)
* ``maven_install_dir``: Base installation directory for any Maven distribution (default: ``/opt/maven``)
* ``maven_redis_sha256sum``: SHA256 sum for the downloaded Maven redistributable package (default: ``bf3f04aadee3a67158aebdfb0b4cb022063329d459d10fd6b4b02223e10aa8ed``)
* ``maven_with_cow``: Change wether the configuration files 'Managed by ansible' warning should be said by a flaming sheep or not (bool, default: ``true``)

## Role facts

This role sets persistent local facts for other roles to use via

* facts.d ``ansible_local.maven.general.maven_home``

## Dependencies

None.

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


<!-- vim: set ts=4 sw=4 et nofen: -->
