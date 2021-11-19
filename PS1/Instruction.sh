#!/usr/bin/bash

# Instruction Colors

G="\033[1;32m"
R="\033[1;31m"
B="\033[1;34m"
W="\033[0m"

# Instruction End

# Instruction Menu

printf "$B"">""$W"" [Y/N] Are You Want Custom PS1? ""$G"": ""$W"
read PS1

# Instruction End

# Instruction Data

if [[ $PS1 == "Y" ]]; then
  echo -e "$B"">""$W"" Changing The Look Of Your Termux/PS1... ""$W"
  sleep 30
  cd /data/data/com.termux/files/usr/etc
  rm bash.bashrc
  cd $HOME
  cd XRecon
  cd PS1
  cp -f bash.bashrc bash.bashrc1
  cp -f Sanz .Sanz1
  mv bash.bashrc1 $HOME
  mv .Sanz1 $HOME
  cd $HOME
  mv bash.bashrc1 bash.bashrc
  mv .Sanz1 .Sanz
  mv bash.bashrc /data/data/com.termux/files/usr/etc
  mv .Sanz /data/data/com.termux/files/home
  sleep 30
  echo -e "$B"">""$W"" Sussecfully Changing Termux Theme,Restaring Termux Settings... ""$W"
  termux-reload-settings
  exit
  fi
if [[ $PS1 == "N" ]]; then
  sleep 3
  exit
  fi
else
  sleep 1
  echo -e "$B"">""$W"" •-• ""$W"
  sleep 3
  exit
  fi

# Instruction End
