#!/bin/bash

read -p "password -> " PASS
sed -i "s/PASSWORD/$PASS/g" ./*

./brave.sh
./install.sh
echo $PASS | sudo -S crontab cron.edit
sudo mv auto sd vpn /usr/local/bin/

echo "complete"
sleep 2
echo "bye"
rm -rf `pwd`
cd ~
