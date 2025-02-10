#!/bin/bash

echo -e "Loading installer...\n"
sleep 1

echo -e "adyOS Install Script\n"
echo -e "Are you sure you want to install? [y/N]"
while true; do
  read -rsn1 input0
  if [ "$input0" = "y" ]; then
    echo -e "Installing...\n"
    sleep .5
    break
  else
    echo -e "Quitting."
    exit 1
  fi
done

if [[ ! -z $(which apt-get) ]]; then
  echo -e "Updating repositories...\n"
  sleep .5
  apt-get update

  echo -e "Installing \"git\"...\n"
  sleep .5
  apt-get install -y git

  echo -e "Installing \"Node.JS\"...\n"
  sleep .5
  apt-get install -y nodejs

  echo -e "Installing \"npm\"...\n"
  sleep .5
  apt-get install -y npm
elif [[ ! -z $(which pacman) ]]; then
  echo -e "Updating system...\n"
  sleep .5
  pacman -Syu

  echo -e "Installing \"git\"...\n"
  sleep .5
  pacman -S git -y

  echo -e "Installing \"Node.JS\"...\n"
  sleep .5
  pacman -S nodejs -y
  
  echo -e "Installing \"npm\"...\n"
  sleep .5
  pacman -S npm -y
elif [[ ! -z $(which yum) ]]; then
  echo -e "Updating repositories...\n"
  sleep .5
  yum update

  echo -e "Installing \"git\"...\n"
  sleep .5
  yum install -y git

  echo -e "Installing \"Node.JS\"...\n"
  sleep .5
  yum install -y nodejs
  
  echo -e "Installing \"npm\"...\n"
  sleep .5
  yum install -y npm
else
  echo -e "Could not install packages! Aborting..."
  exit 1
fi

echo -e "\nWould you like to use the production version? [y/n]"
while true; do
  read -rsn1 input
  if [ "$input" = "y" ]; then
    echo -e "Cloning production repository...\n"
    sleep .5
    git clone -b prod https://git.ady.best/ adyos
    break
  elif [ "$input" = "n" ]; then
    echo -e "Would you like to use the development version? [y/n]"
    while true; do
      read -rsn1 input2
      if [ "$input2" = "y" ]; then
        echo -e "Cloning development repository...\n"
        sleep .5
        git clone -b master https://git.ady.best/ adyos
        break
      elif [ "$input" = "n" ]; then
        echo -e "Can't clone repostory. Quitting..."
        exit 1;
      fi
      break
    done
    break
  fi
done

cd adyos

echo -e "Initialising...\n"
sleep .5
npm i

if [[ ! -z $(which chmod) ]]; then
  echo -e "Making scripts executable...\n"
  sleep .5
  chmod +x bin/*
fi

echo -e "\nDone installing adyOS!\nEnter the directory and use \"./bin/boot\" to start."
