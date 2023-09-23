#!/bin/bash

# Prompt the user for a client name
echo "Enter the client name:"
read CLIENTNAME

# Generate client certificate
docker-compose run --rm vpn easyrsa build-client-full $CLIENTNAME nopass

# Retrieve the client configuration
docker-compose run --rm vpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn