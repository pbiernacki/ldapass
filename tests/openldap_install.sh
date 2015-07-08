#!/bin/sh

set -e
set -x

slapadd -F /etc/ldap/slapd.d <<EOF
dn: dc=example,dc=com
objectClass: top
objectClass: domain
dc: example
EOF

