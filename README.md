# About
Setup script for termux

## Setup

If you run [termux-setup.sh](https://github.com/1RaY-1/termux-setup/blob/main/termux-setup.sh), it will do this things:
* Upgrade all packages.
* Give Termux a storage access permission.
* Install some programs (wget, net-tools, mlocate, etc...).
* Configure vim.
* Install some python modules (setuptools, requests, ipython, cryptography, faker) .
* Install sms bomber (https://github.com/Denishnc/b0mb3r)
* Install Ip Tracer (https://github.com/rajkumardusad/IP-Tracer.git)
* Remove Termux welcome text.

## Requierements
* Stable internet connection
* Enough storage space
* Termux installed on your device

## How to run this on Termux

Copy and paste next commands in termux (to download and run setup script)
```
curl -OL https://raw.githubusercontent.com/1ray-1/termux-setup/main/termux-setup.sh && chmod +x termux-setup.sh && bash termux-setup.sh
```
