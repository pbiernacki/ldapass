#!/bin/sh

set -e
set -x

DEBIAN_FRONTEND=noninteractive sudo -E apt-get install -y --force-yes slapd time ldap-utils

sudo slapadd -F /etc/ldap/slapd.d <<EOF
dn: dc=example,dc=com
objectClass: top
objectClass: domain
dc: example
EOF

