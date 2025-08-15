#!/bin/bash

sudo dpkg /root/.gnupg
sudo chmod 600 /root/.gnupg

# Este script instala OONI (Open Observatory of Network Interference) en un sistema basado en Debian/Ubuntu.

sudo gpg --no-default-keyring --keyserver hkp://keyserver.ubuntu.com --keyring /etc/apt/keyrings/ooni-apt-keyring.gpg --recv-keys 'B5A08F01796E7F521861B449372D1FF271F2DD50'
echo "deb [signed-by=/etc/apt/keyrings/ooni-apt-keyring.gpg] https://deb.ooni.org/ unstable main" | sudo tee /etc/apt/sources.list.d/ooniprobe.list

# Instala TOR y OONI Probe
sudo apt update
sudo apt install tor apt-transport-tor ooniprobe-cli

