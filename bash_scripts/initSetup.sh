#!bin/bash

# Setup wireless networking
  sudo service networking stop #Stop wireless networking service
  sudo mv /boot/wpa_supplicant.conf ~/wpa_supplicant.conf #Move wpa_supplicant.conf to home folder
  sudo chmod 600 wpa_supplicant.conf #Set correct permissions on wpa_supplicant
  sudo mv ~/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf #Move wpa_supplicant to the right place
  sudo mv /boot/uq-net-ca.pem /etc/ssl/certs/uq-net-ca.pem #Move CA certificate to the right place
  sudo wpa_supplicant -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf -B #Fire up the network

#Make required directories
mkdir ~/bin ~/github #Make folders to store scripts and github clones

export PATH=~/bin:"$PATH" #Set your local bin folder to the PATH
. .bashrc #Reload .bashrc to reset PATH

#Install git and wget
sudo apt-get update && sudo apt-get upgrade -y #First update the apt repos and upgrade any packages that need upgrading
sudo apt-get install git wget -y #Now install git and wget

git clone https://github.com/Marzogh/LinuxScriptCache.git ~/github/LinuxScriptCache # Clone Linux script cache from Github
sudo cp ~/github/bash_scripts/* ~/bin #Copy scripts from repo to local bin folder

echo 'System is ready to go!'

exit 0
