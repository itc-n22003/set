#!/bin/bash

PASS="PASSWORD"
echo $PASS | sudo -S apt install curl
echo $PASS | sudo -S curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo $PASS | sudo -S apt update
echo $PASS | sudo -S apt install brave-browser
