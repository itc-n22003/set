#!/bin/bash

PASS="PASSWORD"
LIST=("sshpass" "gcc" "gfortran" "openvpn" "tree")
for i in ${LIST[@]};
do
	echo $PASS | sudo -S apt install $i
done
