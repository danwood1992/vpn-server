#!/bin/sh

# Generate the OpenVPN server configuration
ovpn_genconfig -u udp://VPN.IMPERISOFT.CO.UK

# Initialize the PKI
echo 'mypassword' | ovpn_initpki nopass

# Start OpenVPN
exec ovpn_run