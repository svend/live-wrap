#!/bin/sh
# Create SNMPv3 user

# Do not overwrite local SNMP user configuration
[ -f /root/.snmp/snmp.conf ] && exit 0

user=snmp
pass=$(pwgen -s 8)

apassphrase=$pass

# The following code is taken from net-snmp-config

Aalgorithm="MD5"
Xalgorithm="DES"

outdir="/var/lib/snmp"
outfile="$outdir/snmpd.conf"
line="createUser $user $Aalgorithm \"$apassphrase\" $Xalgorithm $xpassphrase"

echo "adding the following line to $outfile:"
echo "  " $line
# in case it hasn't ever been started yet, start it.
if test ! -d $outdir ; then
    mkdir $outdir
fi
if test ! -d $outfile ; then
    touch $outfile
fi
echo $line >> $outfile

# End of code is taken from net-snmp-config

# Record generated password
umask 077
mkdir /root/.snmp
cat > /root/.snmp/snmp.conf << EOF
defVersion 3
defSecurityName snmp
defSecurityLevel authPriv
defPassphrase $pass
EOF
