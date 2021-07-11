# About
This is my Termux setup

# What this script does
This script does this things:
* Update, upgrade packages
* Give Termux a storage access permission
* Install some programs (wget, net-tools, mlocate, python3, python3-dev , clang, zip, unzip, tree, git, cmatrix, htop, top, grep, vim, neofetch)
* Create some bash aliases
* Configure vim
* Upgrade pip and install some modules
* Remove Termux welcome text
* Install Tool-X

# How to run this on Termux
There several options to run this script on Termux.

* You can just copy the script's content and past it in a new file and then execute it.

* You can download this repository by entering this commands in your terminal:
```
pkg update && pkg install git -y
git clone https://github.com/1RaY-1/termux-setup && cd termux-setup && chmod +x termux-setup.sh && bash termux-setup.sh && cd .. && rm -rf termux-setup
```
