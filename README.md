# ansible-maven

Install Maven in latest version from upstream.

## Requirements

None.

## Role Variables

* ``maven_version``: Maven version to install (default: ``3.2.1``)
* ``maven_mirror``: Maven mirror to download Maven from (default: ``http://archive.apache.org/dist/maven/binaries/``)
* ``maven_redis_shad256sum``: SHA256 sum for the downloaded Maven redistributable package (default: ``cdee2fd50b2b4e34e2d67d01ab2018b051542ee759c07354dd7aed6f4f71675c``)
* ``maven_bin_path``: Directory where to symlink the mvn binary to (default: ``/usr/local/bin``)

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
