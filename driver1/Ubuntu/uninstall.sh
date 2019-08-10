#!/bin/bash
cd packages
sudo dpkg -i *.deb
sudo apt-get install -f
cd ..
cd rtl8821ce
sudo modprobe 8821ce -r
sudo chmod -R 755 .
sudo ./dkms-remove.sh