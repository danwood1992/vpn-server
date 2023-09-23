#!/bin/sh

OVPN_DOMAIN=${OVPN_DOMAIN}
OVPN_PASSWORD=${OVPN_PASSWORD}

# Generate the OpenVPN server configuration
ovpn_genconfig -u udp://${OVPN_DOMAIN}

echo "Debugging environment variables"
echo "OVPN_DOMAIN: ${OVPN_DOMAIN}"
echo "OVPN_PASSWORD: ${OVPN_PASSWORD}"
# Initialize the PKI
echo "${OVPN_PASSWORD}" | ovpn_initpki nopass

# Start OpenVPN
exec ovpn_run
