#!/bin/bash

#Install script for Mint


cd ~
sudo apt-get update -qq # qq mean don't output any progress
sudo apt-get install -yy # yy mean continue without any error

# install app from official repo 

sudo apt-get install -yy mpv qbittorrent 
sudo apt-get install -y telegram-desktop

# installing google chrome

cd/home/chamnab/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cd ~

sudo add-apt-repository -y ppa:peterlevi/ppa

sudo apt-get update 
sudo apt-get install -y variety variety-slideshow

# Veracrypt 
cd /home/chamnab/Downloads
wget https://launchpadlibrarian.net/461886552/veracrypt-1.24-Update4-setup.tar.bz2
tar xvf veracrypt-1.24-Update4-setup.tar.bz2
./veracrypt-1.24-Update4-setup-gui-x86
cd ~

# Wine
sudo dpkg --add-architecture i386
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt-get update
sudo apt install --install-recommends winehq-stable #don't forget to install faudio dependency

# tweak

sudo echo "vm.swappiness = 10" >>/ect/sysctl.conf


echo "All done!"
#use this to run the file in terminal
# chmod +x filename.sh
# ./ filename.sh  when the file is in home dir
