#!/bin/bash

# Make a directory for config file
mkdir -p "/Library/Application Support/OpenDNS Roaming Client/" &&

# Move the plist file into the new directory
mv "/Library/Addigy/ansible/packages/XXX XXX XXX (?.?.?)/XXX.plist" "/Library/Application Support/OpenDNS Roaming Client" &&

# Rename the plist file
mv "/Library/Application Support/OpenDNS Roaming Client/XXX.plist" "/Library/Application Support/OpenDNS Roaming Client/OrgInfo.plist" &&

# adding a bit of a wait for good measure
sleep 10s

/usr/sbin/installer -pkg "/Library/Addigy/ansible/packages/Internos Umbrella Installer (1.0.0)/RoamingClient_MAC_3.0.29.pkg" -target /
