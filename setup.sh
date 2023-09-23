#!/bin/sh

# Source environment variables
. /etc/openvpn/.env

# Generate the OpenVPN server configuration
ovpn_genconfig -u udp://${OVPN_DOMAIN}

# Initialize the PKI
echo "${OVPN_PASSWORD}" | ovpn_initpki nopass

# Start OpenVPN
exec ovpn_run
