#! /bin/sh

echo "RCSS Server for Student League"
echo "Technical Committee, Soccer 2D Simulation, IranOpen"
echo "Nader Zare, nader.zare88@gmail.com"

sudo apt-get install g++ build-essential libboost-all-dev qt4-dev-tools libaudio-dev libgtk-3-dev libxt-dev

sudo apt-add-repository ppa:gnurubuntu/rubuntu

sudo apt-get update

sudo apt-get install rcssserver rcssmonitor rcsslogplayer

file="~/.rcssserver"
if [ -e "$file" ]; then
	
else
	mkdir ~/.rcssserver	
	echo "make .rcssserver"
fi

file="~/Documents/log"
if [ -e "$file" ]; then
        
else
        mkdir ~/Documents/log
        echo "make log dir"
fi

sudo cp server.conf ~/.rcssserver/

