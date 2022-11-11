#! /bin/bash
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common


curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt clean all
apt update -y
apt install kubectl -y 

mkdir ~/.kube
scp 192.168.50.21:./.kube/config ~/.kube/config