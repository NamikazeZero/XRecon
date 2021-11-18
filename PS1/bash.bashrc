
# Bash.Bashrc / Theme

# Terminal Text Color #

G="\033[1;32m"
R="\033[1;31m"
B="\033[1;34m"
W="\033[0m"

# Clear GUI / UI #

clear

# Chek For Neofetch Reposity #

command -v neofetch > /dev/null 2>&1 || { sleep 2;echo ;echo ;echo ;sleep 1;printf "$R •$W Neofetch Is Not Installed$B,$W Installing Neofetch...";sleep 2;echo ;apt install neofetch;sleep 2;printf "$R •$W Neofetch Installed$B,$W Press Enter To Continue.";read -p "" PressEnter;clear; }

# Powered By AriqGamerzcraft
# Youtube : Ariq Gamerzcraft
# Github  : https://github.com/NamikazeZero

# Run Logo & Other #

echo;echo
cd $HOME
python3 .Sanz
echo

# PS1 #

PS1='\[[1;37m\][\[[1;32m\]\#\[[1;37m\]] \[[1;36m\]SANZ \[[1;31m\]: \[[1;30m\]\w \[[1;31m\]> \[[1;32m\]' # Change `SANZ` To Your Name :)

# 🗿 Ended 🗿 #
