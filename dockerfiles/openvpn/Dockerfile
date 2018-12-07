FROM ubuntu:18.04
ADD server.conf /etc/openvpn/server.conf
ADD run.sh /run.sh
RUN apt-get update && apt-get install -y vim iptables openvpn iputils-ping net-tools dnsutils
ENTRYPOINT /run.sh
