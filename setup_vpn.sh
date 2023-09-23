#!/bin/bash
source .env
docker-compose run --rm vpn ovpn_genconfig -u udp://$OVPN_DOMAIN
docker-compose run --rm vpn ovpn_initpki

