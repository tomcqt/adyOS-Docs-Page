---
title: Install
layout: default
nav_order: 2
permalink: /install
---

# adyOS Installation

1. Download and install `git`, `node`, and `npm` for your operating system.
   - Debian/Ubuntu: `sudo apt-get install git nodejs npm`
   - Please use Google if your operating system is not on the list.
3. Clone version that you want.

   - Production: `git clone -b prod https://git.ady.best/ adyos`
   - Developer: `git clone https://git.ady.best/ adyos`

4. Enter the folder with `cd adyos`.
5. Set everything up by running `npm i`.
6. Make the scripts executable using `chmod +x bin/*`. <sub>This is not necessary if you are installing on Windows.</sub>
7. Start it up!
   - On Linux
     - Normal boot: `./bin/boot`
     - Debug mode boot: `./bin/debug`
   - On Windows
     - Normal boot: `npm run boot`
     - Debug mode boot: `npm run debug`
       <br><sub>Note: You can't clear the screen if running within Git Bash on Windows.</sub>

### You have now installed adyOS!
