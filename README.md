# ansible-maven

Install Maven in latest version from upstream.


## Role variables

* ``maven_version``: Maven version to install (default: ``3.2.1``)
* ``maven_mirror``: Maven mirror to download Maven from (default: ``http://archive.apache.org/dist/maven/binaries/``)
* ``maven_redis_shad256sum``: SHA256 sum for the downloaded Maven redistributable package (default: ``cdee2fd50b2b4e34e2d67d01ab2018b051542ee759c07354dd7aed6f4f71675c``)
* ``maven_bin_path``: Directory where to symlink the mvn binary to (default: ``/usr/local/bin``)


# Dependencies

None.


# License

Apache Version 2.0


# Author

Mark Kusch @mark.kusch silpion.de


<!-- vim: set ts=4 sw=4 et nofen: -->
