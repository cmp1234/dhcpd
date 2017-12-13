FROM alpine:latest

RUN apk add --no-cache dhcp && touch /var/lib/dhcp/dhcpd.leases

EXPOSE 67/udp 67/tcp

VOLUME ["/etc/dhcp"]

CMD ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf"]
