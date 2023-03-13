#!/bin/bash

PASS="PASSWORD"
LIST=("sshpass" "gcc" "gfortran" "openvpn" "tree" "tcpdump" "netcat")
for i in ${LIST[@]};
do
	echo $PASS | sudo -S apt install $i
done
