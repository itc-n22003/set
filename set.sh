#!/bin/bash

read -p "password -> " PASS
sed -i "s/PASSWORD/$PASS/g" ./*
sed -i "s/PASSWORD/$PASS/g" ./command/*

./brave.sh
./install.sh
echo $PASS | sudo -S crontab cron.edit
sudo mv ./command/* /usr/local/bin/

echo "complete"
sleep 2
echo "bye"
rm -rf `pwd`
cd ~
