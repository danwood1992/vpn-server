FROM kylemanna/openvpn

# Copy the setup script
COPY ./setup.sh /etc/openvpn/
COPY ./.env /etc/openvpn/

# Make the setup script executable
RUN chmod +x /etc/openvpn/setup.sh
RUN ls -la /etc/openvpn
WORKDIR /etc/openvpn

ENTRYPOINT ["/etc/openvpn/setup.sh"]

