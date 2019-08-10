#!/bin/bash
cd packages
sudo dpkg -i *.deb
sudo apt-get install -f
sudo m-a prepare
cd ..
unzip rtl8821ce.zip -d ~
cd ~/rtl8821ce
make
sudo make install
sudo modprobe -a 8821ce