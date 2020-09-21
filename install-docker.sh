#!/usr/bin/env bash

sudo apt update
sudo su
curl https://releases.rancher.com/install-docker/18.09.sh | sh
sudo usermod -aG docker $USER
docker --version
apt install git -y
sudo ip route del default via 10.0.2.2 dev enp0s3