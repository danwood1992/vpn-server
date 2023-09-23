FROM kylemanna/openvpn

# Copy the setup script
COPY setup.sh /etc/openvpn/setup.sh

# Run the setup script
RUN chmod +x /etc/openvpn/setup.sh

CMD ["/etc/openvpn/setup.sh"]
