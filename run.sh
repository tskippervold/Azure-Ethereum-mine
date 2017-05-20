#!/bin/bash
echo -e "\e[31;43m***** Installing Drivers and Prerequisites *****\e[0m"
sudo apt-get install software-properties-common gcc make
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum ethminer geth build-essential

wget -O /tmp/NVIDIA-Linux-x86_64-367.48.run https://go.microsoft.com/fwlink/?linkid=836899
sudo apt install gcc
sudo apt install make
cd /tmp
chmod +x NVIDIA-Linux-x86_64-367.48.run
sudo sh ./NVIDIA-Linux-x86_64-367.48.run

echo -e "\e[31;43m***** Do 'geth account new' to create a new wallet *****\e[0m"
echo -e "\e[31;43m***** Done! To start mining do: 'ethminer -G -F YOURPOOL --farm-recheck 200' *****\e[0m"
