# About
Setup bash script for termux

# My setup

If you run [termux-setup.sh](https://github.com/1RaY-1/termux-setup/blob/main/termux-setup.sh), it will do this things:
* Update, upgrade packages.
* Give Termux a storage access permission.
* Install some programs (wget, net-tools, mlocate, python3, clang, zip, unzip, tree, git, cmatrix, htop, grep, vim, neofetch).
* Configure vim.
* Upgrade pip and install some python modules.
* Remove Termux welcome text.

# How to run this on Termux
There several options to run this script on Termux.

* You can just copy the script's content and past it in a new file and then execute it.

* You can download this repository by entering this commands in your terminal (copy and paste):
```
pkg update && pkg install git -y
git clone https://github.com/1RaY-1/termux-setup && cd termux-setup && chmod +x termux-setup.sh && bash termux-setup.sh
```
