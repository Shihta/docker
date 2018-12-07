docker run -tid --network cdn-in-a-box_tcnet -v /etc/openvpn:/etc/openvpn --privileged -p 44443:44443 shihta/openvpn

iptables -t nat -I POSTROUTING 1 -s 172.16.27.0/24 -o eth0 -j MASQUERADE
