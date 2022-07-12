#!/bin/bash

sudo apt-get update && apt-get upgrade -y
sudo install apache2 -y
sudo systemctl enable apache2.service -y
sudo systemctl start apache2.service -y