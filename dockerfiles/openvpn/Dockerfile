FROM ubuntu:18.04
ADD server.conf /etc/openvpn/server.conf
RUN apt-get update && apt-get install -y vim iptables openvpn iputils-ping net-tools
ENTRYPOINT /usr/sbin/openvpn --status /run/openvpn/server.status 10 --cd /etc/openvpn --script-security 2 --config /etc/openvpn/server.conf --writepid /run/server.pid
