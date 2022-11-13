#!/bin/bash
sudo apt update && sudo apt upgrade -y

sudo apt install -y libssl-dev jq libcurl4-openssl-dev vim curl nmap rename tmux git python-pip python3-pip python-setuptools libldns-dev build-essential libssl-dev libffi-dev libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev build-essential libgmp-dev zlib1g-dev

mkdir ~/tools && cd ~/tools
echo "[*] Installing golang [*]"
wget "https://dl.google.com/go/go1.19.3.linux-amd64.tar.gz" && tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export PATH=$GOPATH/bin:$HOME/.local/bin:$PATH" >> ~/.bashrc

source ~/.bashrc
sleep 30
echo "DONE"

echo "[*] Installing haktrails [*]"
go install -v github.com/hakluke/haktrails@latest
mkdir ~/.config/haktools/ && touch ~/.config/haktools/haktrails-config.yml
echo "[*]+++++++Set up your Security Trails API Key!!!+++++++[*]"
sleep 2

echo "[*] Installing FFUF [*]"
go install github.com/ffuf/ffuf@latest
echo "DONE"
sleep 2

echo "[*] Installing hakrawler [*]"
go install github.com/hakluke/hakrawler@latest
echo "DONE"
sleep 2

echo "[*] Installing httprobe [*]"
go install github.com/tomnomnom/httprobe@latest
echo "done"


echo "[*] Installing Seclists [*]"
git clone https://github.com/danielmiessler/SecLists.git
echo "DONE"
echo "[****************************************]"
