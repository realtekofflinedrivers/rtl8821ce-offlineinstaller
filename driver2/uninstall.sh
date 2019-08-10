#!/bin/bash
unzip rtl8821ce.zip -d ~
cd ~/rtl8821ce
make
sudo modprobe 8821ce -r
sudo make uninstall
