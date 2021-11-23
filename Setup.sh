#!/usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
cd modules && git clone https://github.com/urbanadventurer/WhatWeb
cd $HOME && cd XRecon
echo -e ""
python Logo
echo -e ""
printf "$b"">""$w"" [Linux/Termux] Input Your Distro ""$g"": ""$w"
read distro
echo -e ""
if [[ $distro == "Termux" ]]; then
echo -e "$b"">""$w"" XRecon - Simple Information Gathering Toolkit"
echo -e "$b"">""$w"" Installing Dependencies..."
sleep 3
echo -e "$b"">""$w"" Upgrade Packages : ""$g"" Apt""$w"
apt upgrade && apt update
echo -e "$b"">""$w"" Installing Package : ""$g""Libxml2""$w"
apt install libxml2 -y
echo -e "$b"">""$w"" Installing Package : ""$g""Hydra""$w"
apt install hydra -y
echo -e "$b"">""$w"" Installing Package : ""$g""Python3""$w"
apt install python -y
echo -e "$b"">""$w"" Installing Package : ""$g""Httrack""$w"
apt install httrack -y
echo -e "$b"">""$w"" Installing Package : ""$g""Wget""$w"
apt install wget
echo -e "$b"">""$w"" Installing Package : ""$g""Ruby""$w"
apt install ruby -y && pkg upgrade ruby
echo -e "$b"">""$w"" Installing Package : ""$g""Nmap""$w"
apt install nmap
echo -e "$b"">""$w"" Installing Package : ""$g""Libxlt""$w"
apt install libxslt -y
echo -e "$b"">""$w"" Installing Package : ""$g""Python2""$w"
apt install python2 -y
echo -e "$b"">""$w"" Installing Modules : ""$g""Requests""$w"
pip install requests
echo -e "$b"">""$w"" Installing Modules : ""$g""BeautifulSoup""$w"
pip install beautifulsoup4
echo -e "$b"">""$w"" Installing Modules : ""$g""Tabulate""$w"
pip install tabulate
echo -e "$b"">""$w"" Installing Modules : ""$g""Googlesearch""$w"
pip install googlesearch-python
echo -e "$b"">""$w"" Installing Modules : ""$g""Email Validator""$w"
pip install email_validator
echo -e "$b"">""$w"" Installing Modules : ""$g""Pyshortener""$w"
pip install pyshorteners
echo -e "$b"">""$w"" Installing Modules : ""$g""Telethon""$w"
pip install telethon
echo -e "$b"">""$w"" Installing Modules : ""$g""Bundle""$w"
cd modules/WhatWeb && bundle install
echo -e "$b"">""$w"" Successfully Installing Dependencies."
sleep 3
termux-reload-settings
cd $HOME ;cd XRecon ;cd PS1 ;bash Instruction.sh
echo -e "$b"">""$w"" Running XRecon... $w"
sleep 3
cd $HOME ;cd XRecon
python3 XRecon.py
exit
fi
if [[ $distro == "Linux" ]]; then
echo -e "$b"">""$w"" XRecon - Simple Information Gathering Toolkit"
echo -e "$b"">""$w"" Installing Dependencies..."
sleep 3
echo -e "$b"">""$w"" Upgrade Packages : ""$g"" Apt""$w"
sudo apt upgrade && sudo apt update
echo -e "$b"">""$w"" Installing Package : ""$g""Libxml2""$w"
sudo apt install libxml2 -y
echo -e "$b"">""$w"" Installing Package : ""$g""Hydra""$w"
sudo apt install hydra
echo -e "$b"">""$w"" Installing Package : ""$g""Python3""$w"
sudo apt install python -y
echo -e "$b"">""$w"" Installing Package : ""$g""Python2""$w"
sudo apt install python2 -y
echo -e "$b"">""$w"" Installing Package : ""$g""Httrack""$w"
sudo apt install httrack -y
echo -e "$b"">""$w"" Installing Package : ""$g""Libxlt""$w"
sudo apt install libxslt -y
echo -e "$b"">""$w"" Installing Package : ""$g""Ruby""$w"
sudo apt install ruby -y
echo -e "$b"">""$w"" Installing Package : ""$g""Wget""$w"
sudo apt install wget
echo -e "$b"">""$w"" Installing Package : ""$g""Pip""$w"
sudo apt-get install python3-pip
sudo apt-get install python2-pip
echo -e "$b"">""$w"" Installing Package : ""$g""Whatweb""$w"
sudo apt-get install whatweb
echo -e "$b"">""$w"" Installing Package : ""$g""Nmap""$w"
apt install nmap
echo -e "$b"">""$w"" Installing Modules : ""$g""Requests""$w"
pip3 install requests
pip2 install requests
echo -e "$b"">""$w"" Installing Modules : ""$g""BeautifulSoup""$w"
pip3 install beautifulsoup4
echo -e "$b"">""$w"" Installing Modules : ""$g""Tabulate""$w"
pip3 install tabulate
echo -e "$b"">""$w"" Installing Modules : ""$g""Googlesearch""$w"
pip3 install googlesearch-python
echo -e "$b"">""$w"" Installing Modules : ""$g""Email Validator""$w"
pip3 install email_validator
echo -e "$b"">""$w"" Installing Modules : ""$g""Pyshortener""$w"
pip3 install pyshorteners
echo -e "$b"">""$w"" Installing Modules : ""$g""Telethon""$w"
pip3 install telethon
echo -e "$b"">""$w"" Installing Modules : ""$g""Bundle""$w"
cd modules/WhatWeb && bundle install
echo -e "$b"">""$w"" Successfully Installing Dependencies."
sleep 3
echo -e "$b"">""$w"" Running XRecon... $w"
sleep 3
cd $HOME ;cd XRecon
python3 XRecon.py
exit
fi
