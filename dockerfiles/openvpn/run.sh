#!/bin/bash

iptables -t nat -I POSTROUTING 1 -s 172.16.27.0/24 -o eth0 -j MASQUERADE
/usr/sbin/openvpn --status /run/openvpn/server.status 10 --cd /etc/openvpn --script-security 2 --config /etc/openvpn/server.conf --writepid /run/server.pid
