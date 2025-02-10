---
title: Install
layout: default
nav_order: 2
permalink: /install
---

# adyOS Installation

- Linux
   1. Run the install script.
      - With `curl`: `bash <(curl -sL https://install.ady.best/)`
      - With `wget`: `bash <(wget -O - https://install.ady.best/)`
   2. Enter the directory with `cd adyos`
   3. Start it up!
      - Normal boot: `./bin/boot`
      - Debug mode boot: `./bin/debug`
- Windows
   1. Download and install `git`, `node`, and `npm` for your operating system.
   2. Clone version that you want.
   
      - Production: `git clone -b prod https://git.ady.best/ adyos`
      - Developer: `git clone https://git.ady.best/ adyos`
   
   3. Enter the folder with `cd adyos`.
   4. Set everything up by running `npm i`.
   5. Start it up!
      - Normal boot: `npm run boot`
      - Debug mode boot: `npm run debug`
        <br><sub>Note: You can't clear the screen if running within Git Bash.</sub>

### You have now installed adyOS!
