#!/bin/sh
# Create SNMPv3 user

user=snmp
pass=$(pwgen -s 8)

net-snmp-config --create-snmpv3-user -ro -a "$pass" $user

# Record generated password
umask 077
mkdir /root/.snmp
cat > /root/.snmp/snmp.conf << EOF
defVersion 3
defSecurityName snmp
defSecurityLevel authPriv
defPassphrase $pass
EOF
