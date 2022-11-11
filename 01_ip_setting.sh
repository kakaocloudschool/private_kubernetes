#!/bin/bash

echo "Enter Your Last IP (192.168.50.xx) : "
read ip
cat <<EOF > /etc/netplan/01-network-manager-all.yaml
network:
  ethernets:
    ens32:
      addresses:
      - 192.168.50.${ip}/24
      gateway4: 192.168.50.1
      nameservers:
        addresses:
        - 8.8.8.8
        search:
        - 8.8.4.4
  version: 2
EOF

netplan apply
