#!/bin/bash

sudo apt update && sudo apt full-upgrade
sudo groupadd terraform
sudo useradd -G admin,terraform -m -s /bin/bash backup-user
sudo apt install apache2 -y && sudo systemctl start apache2 && sudo systemctl enable apache2
